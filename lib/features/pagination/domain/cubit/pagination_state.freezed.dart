// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginationState {
  PaginationAsyncField<BeerEntity> get beersField =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationStateCopyWith<PaginationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationStateCopyWith<$Res> {
  factory $PaginationStateCopyWith(
          PaginationState value, $Res Function(PaginationState) then) =
      _$PaginationStateCopyWithImpl<$Res, PaginationState>;
  @useResult
  $Res call({PaginationAsyncField<BeerEntity> beersField});

  $PaginationAsyncFieldCopyWith<BeerEntity, $Res> get beersField;
}

/// @nodoc
class _$PaginationStateCopyWithImpl<$Res, $Val extends PaginationState>
    implements $PaginationStateCopyWith<$Res> {
  _$PaginationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beersField = null,
  }) {
    return _then(_value.copyWith(
      beersField: null == beersField
          ? _value.beersField
          : beersField // ignore: cast_nullable_to_non_nullable
              as PaginationAsyncField<BeerEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationAsyncFieldCopyWith<BeerEntity, $Res> get beersField {
    return $PaginationAsyncFieldCopyWith<BeerEntity, $Res>(_value.beersField,
        (value) {
      return _then(_value.copyWith(beersField: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaginationStateCopyWith<$Res>
    implements $PaginationStateCopyWith<$Res> {
  factory _$$_PaginationStateCopyWith(
          _$_PaginationState value, $Res Function(_$_PaginationState) then) =
      __$$_PaginationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginationAsyncField<BeerEntity> beersField});

  @override
  $PaginationAsyncFieldCopyWith<BeerEntity, $Res> get beersField;
}

/// @nodoc
class __$$_PaginationStateCopyWithImpl<$Res>
    extends _$PaginationStateCopyWithImpl<$Res, _$_PaginationState>
    implements _$$_PaginationStateCopyWith<$Res> {
  __$$_PaginationStateCopyWithImpl(
      _$_PaginationState _value, $Res Function(_$_PaginationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beersField = null,
  }) {
    return _then(_$_PaginationState(
      beersField: null == beersField
          ? _value.beersField
          : beersField // ignore: cast_nullable_to_non_nullable
              as PaginationAsyncField<BeerEntity>,
    ));
  }
}

/// @nodoc

class _$_PaginationState implements _PaginationState {
  const _$_PaginationState({required this.beersField});

  @override
  final PaginationAsyncField<BeerEntity> beersField;

  @override
  String toString() {
    return 'PaginationState(beersField: $beersField)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationState &&
            (identical(other.beersField, beersField) ||
                other.beersField == beersField));
  }

  @override
  int get hashCode => Object.hash(runtimeType, beersField);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationStateCopyWith<_$_PaginationState> get copyWith =>
      __$$_PaginationStateCopyWithImpl<_$_PaginationState>(this, _$identity);
}

abstract class _PaginationState implements PaginationState {
  const factory _PaginationState(
          {required final PaginationAsyncField<BeerEntity> beersField}) =
      _$_PaginationState;

  @override
  PaginationAsyncField<BeerEntity> get beersField;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationStateCopyWith<_$_PaginationState> get copyWith =>
      throw _privateConstructorUsedError;
}
