// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_async_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginationAsyncField<T> {
  List<T>? get data => throw _privateConstructorUsedError;
  Exception? get error => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationAsyncFieldCopyWith<T, PaginationAsyncField<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationAsyncFieldCopyWith<T, $Res> {
  factory $PaginationAsyncFieldCopyWith(PaginationAsyncField<T> value,
          $Res Function(PaginationAsyncField<T>) then) =
      _$PaginationAsyncFieldCopyWithImpl<T, $Res, PaginationAsyncField<T>>;
  @useResult
  $Res call(
      {List<T>? data,
      Exception? error,
      int limit,
      int offset,
      dynamic isLoading,
      bool isCompleted});
}

/// @nodoc
class _$PaginationAsyncFieldCopyWithImpl<T, $Res,
        $Val extends PaginationAsyncField<T>>
    implements $PaginationAsyncFieldCopyWith<T, $Res> {
  _$PaginationAsyncFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? limit = null,
    Object? offset = null,
    Object? isLoading = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationAsyncFieldCopyWith<T, $Res>
    implements $PaginationAsyncFieldCopyWith<T, $Res> {
  factory _$$_PaginationAsyncFieldCopyWith(_$_PaginationAsyncField<T> value,
          $Res Function(_$_PaginationAsyncField<T>) then) =
      __$$_PaginationAsyncFieldCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T>? data,
      Exception? error,
      int limit,
      int offset,
      dynamic isLoading,
      bool isCompleted});
}

/// @nodoc
class __$$_PaginationAsyncFieldCopyWithImpl<T, $Res>
    extends _$PaginationAsyncFieldCopyWithImpl<T, $Res,
        _$_PaginationAsyncField<T>>
    implements _$$_PaginationAsyncFieldCopyWith<T, $Res> {
  __$$_PaginationAsyncFieldCopyWithImpl(_$_PaginationAsyncField<T> _value,
      $Res Function(_$_PaginationAsyncField<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? limit = null,
    Object? offset = null,
    Object? isLoading = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_$_PaginationAsyncField<T>(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PaginationAsyncField<T> extends _PaginationAsyncField<T> {
  const _$_PaginationAsyncField(
      {final List<T>? data,
      this.error,
      this.limit = 10,
      this.offset = 0,
      this.isLoading = false,
      this.isCompleted = false})
      : _data = data,
        super._();

  final List<T>? _data;
  @override
  List<T>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Exception? error;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final dynamic isLoading;
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'PaginationAsyncField<$T>(data: $data, error: $error, limit: $limit, offset: $offset, isLoading: $isLoading, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationAsyncField<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      error,
      limit,
      offset,
      const DeepCollectionEquality().hash(isLoading),
      isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationAsyncFieldCopyWith<T, _$_PaginationAsyncField<T>>
      get copyWith =>
          __$$_PaginationAsyncFieldCopyWithImpl<T, _$_PaginationAsyncField<T>>(
              this, _$identity);
}

abstract class _PaginationAsyncField<T> extends PaginationAsyncField<T> {
  const factory _PaginationAsyncField(
      {final List<T>? data,
      final Exception? error,
      final int limit,
      final int offset,
      final dynamic isLoading,
      final bool isCompleted}) = _$_PaginationAsyncField<T>;
  const _PaginationAsyncField._() : super._();

  @override
  List<T>? get data;
  @override
  Exception? get error;
  @override
  int get limit;
  @override
  int get offset;
  @override
  dynamic get isLoading;
  @override
  bool get isCompleted;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationAsyncFieldCopyWith<T, _$_PaginationAsyncField<T>>
      get copyWith => throw _privateConstructorUsedError;
}
