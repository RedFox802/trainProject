void main() {
  final provider = ListProvider();

  while (!provider.finished) {
    provider.fetchNext();
  }
}

class ListProvider {
  static const perPage = 10;

  final repo = Repository();

  final _list = <int>[];
  int currentPage = 0;
  bool finished = false;

  void fetchNext() {
    if (finished) return;
    currentPage++;
    print('-- fetching page $currentPage');
    final newData = repo.getData(
      page: currentPage,
      perPage: perPage,
    );
    if (newData.length < perPage) {
      finished = true;
    }

    _list.addAll(newData);
    print(_list);
  }
}

class Repository {
  static const size = 51;

  final _data = List.generate(size, (e) => e + 1);

  Iterable<int> getData({
    required int perPage,
    required int page,
  }) {
    final offset = (page - 1) * perPage;
    try {
      if (offset + perPage > _data.length - 1) {
        return _data.sublist(offset);
      } else {
        return _data.sublist(offset, offset + perPage);
      }
    } catch (e) {
      return [];
    }
  }
}
