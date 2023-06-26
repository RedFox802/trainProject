import 'package:train_project/features/pagination/domain/model/beer_entity.dart';

abstract class BeerRepository {
  Future<Iterable<BeerEntity>> loadBible({
    required int offset,
    required int limit,
  });
}
