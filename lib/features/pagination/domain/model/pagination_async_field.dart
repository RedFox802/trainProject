import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_async_field.freezed.dart';

@freezed
class PaginationAsyncField<T> with _$PaginationAsyncField<T> {
  const PaginationAsyncField._();

  const factory PaginationAsyncField({
    List<T>? data,
    Exception? error,
    @Default(10) int limit,
    @Default(0) int offset,
    @Default(false) isLoading,
    @Default(false) bool isCompleted,
  }) = _PaginationAsyncField<T>;

  PaginationAsyncField<T> addAll(List<T> newData) {
    return copyWith(
      data: data != null ? [...data!, ...newData] : newData,
      offset: offset + 1,
      isLoading: false,
      error: null,
    );
  }

  PaginationAsyncField<T> setError(Exception error) {
    return copyWith(
      error: error,
      isLoading: false,
    );
  }

  PaginationAsyncField<T> setLoading() {
    return copyWith(
      error: null,
      isLoading: true,
    );
  }

  PaginationAsyncField<T> setCompletion() {
    return copyWith(isCompleted: true);
  }

  PaginationAsyncField<T> setInitState() {
    return copyWith(
      offset: 0,
      isCompleted: false,
      data: null,
      isLoading: false,
      error: null,
    );
  }
}

extension PaginationAsyncFieldHelper<T> on PaginationAsyncField {
  bool get hasInitialLoading => data == null && isLoading;

  bool get hasNextPageLoading => data != null && isLoading;

  bool get hasInitialError => error != null && data == null;

  bool get hasNextPageError => error != null && data != null;

  bool get hasData => data != null && !hasInitialLoading;

  bool get isEmpty => data != null && data?.isEmpty == true;
}
