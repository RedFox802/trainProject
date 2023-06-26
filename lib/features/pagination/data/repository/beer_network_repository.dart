import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:train_project/features/pagination/data/model/beer_dto.dart';
import 'package:train_project/features/pagination/domain/model/beer_entity.dart';

import 'beer_repository.dart';

//api https://punkapi.com/documentation/v2

class BeerNetworkRepository extends BeerRepository {
  @override
  Future<Iterable<BeerEntity>> loadBible({
    required int offset,
    required int limit,
  }) async {
    try {
      return http.get(
        Uri.parse(
          'https://api.punkapi.com/v2/beers?page=$offset&per_page=$limit',
        ),
      ).then(
        (value) {
          return (jsonDecode(value.body) as List)
              .map((e) => BeerDto.fromJson(e).toEntity())
              .whereType<BeerEntity>();
        },
      );
    } catch (e) {
      rethrow;
    }
  }
}
