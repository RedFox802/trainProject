import 'package:json_annotation/json_annotation.dart';
import 'package:train_project/features/pagination/domain/model/beer_entity.dart';

part 'beer_dto.g.dart';

@JsonSerializable()
class BeerDto {
  const BeerDto({
    required this.description,
    required this.name,
  });

  factory BeerDto.fromJson(Map<String, dynamic> json) =>
      _$BeerDtoFromJson(json);

  final String? name;
  final String? description;

  BeerEntity? toEntity() {
    if (name == null || description == null) {
      return null;
    }
    return BeerEntity(
      description: description!,
      name: name!,
    );
  }
}
