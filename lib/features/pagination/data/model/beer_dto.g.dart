// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BeerDto _$BeerDtoFromJson(Map<String, dynamic> json) => BeerDto(
      description: json['description'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$BeerDtoToJson(BeerDto instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };
