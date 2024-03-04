// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loader_with_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoaderWithState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoaderWithStateCopyWith<LoaderWithState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoaderWithStateCopyWith<$Res> {
  factory $LoaderWithStateCopyWith(
          LoaderWithState value, $Res Function(LoaderWithState) then) =
      _$LoaderWithStateCopyWithImpl<$Res, LoaderWithState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$LoaderWithStateCopyWithImpl<$Res, $Val extends LoaderWithState>
    implements $LoaderWithStateCopyWith<$Res> {
  _$LoaderWithStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoaderWithStateCopyWith<$Res>
    implements $LoaderWithStateCopyWith<$Res> {
  factory _$$_LoaderWithStateCopyWith(
          _$_LoaderWithState value, $Res Function(_$_LoaderWithState) then) =
      __$$_LoaderWithStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_LoaderWithStateCopyWithImpl<$Res>
    extends _$LoaderWithStateCopyWithImpl<$Res, _$_LoaderWithState>
    implements _$$_LoaderWithStateCopyWith<$Res> {
  __$$_LoaderWithStateCopyWithImpl(
      _$_LoaderWithState _value, $Res Function(_$_LoaderWithState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_LoaderWithState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoaderWithState implements _LoaderWithState {
  const _$_LoaderWithState({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'LoaderWithState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoaderWithState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoaderWithStateCopyWith<_$_LoaderWithState> get copyWith =>
      __$$_LoaderWithStateCopyWithImpl<_$_LoaderWithState>(this, _$identity);
}

abstract class _LoaderWithState implements LoaderWithState {
  const factory _LoaderWithState({required final bool isLoading}) =
      _$_LoaderWithState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LoaderWithStateCopyWith<_$_LoaderWithState> get copyWith =>
      throw _privateConstructorUsedError;
}
