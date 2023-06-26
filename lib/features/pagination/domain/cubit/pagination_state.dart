import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/beer_entity.dart';
import '../model/pagination_async_field.dart';

part 'pagination_state.freezed.dart';

@freezed
class PaginationState with _$PaginationState {
  const factory PaginationState({
    required PaginationAsyncField<BeerEntity> beersField,
  }) = _PaginationState;
}
