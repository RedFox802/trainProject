class BinarySearcher {
  num? searchIterative(List<num> list, num target) {
    int start = 0;
    int end = list.length - 1;

    while (start <= end) {
      int center = (start + end) ~/ 2;

      if (list[center] == target) {
        return list[center];
      } else if (list[center] > target) {
        end = center - 1;
      } else {
        start = center + 1;
      }
    }

    return null;
  }

  num? searchRecursive(List<num> list, num target) {
    num? search(List<num> list, num target, int start, int end) {
      int center = (start + end) ~/ 2;
      if (list[center] == target) {
        return list[center];
      } else if (list[center] > target) {
        return search(list, target, start, center - 1);
      } else {
        return search(list, target, center + 1, center - 1);
      }
    }

    return search(list, target, 0, list.length - 1);
  }
}
