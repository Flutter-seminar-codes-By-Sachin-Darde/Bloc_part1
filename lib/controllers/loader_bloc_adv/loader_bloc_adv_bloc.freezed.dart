// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loader_bloc_adv_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoaderBlocAdvEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleLoader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleLoader value) toggleLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleLoader value)? toggleLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleLoader value)? toggleLoader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoaderBlocAdvEventCopyWith<$Res> {
  factory $LoaderBlocAdvEventCopyWith(
          LoaderBlocAdvEvent value, $Res Function(LoaderBlocAdvEvent) then) =
      _$LoaderBlocAdvEventCopyWithImpl<$Res, LoaderBlocAdvEvent>;
}

/// @nodoc
class _$LoaderBlocAdvEventCopyWithImpl<$Res, $Val extends LoaderBlocAdvEvent>
    implements $LoaderBlocAdvEventCopyWith<$Res> {
  _$LoaderBlocAdvEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ToggleLoaderCopyWith<$Res> {
  factory _$$_ToggleLoaderCopyWith(
          _$_ToggleLoader value, $Res Function(_$_ToggleLoader) then) =
      __$$_ToggleLoaderCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToggleLoaderCopyWithImpl<$Res>
    extends _$LoaderBlocAdvEventCopyWithImpl<$Res, _$_ToggleLoader>
    implements _$$_ToggleLoaderCopyWith<$Res> {
  __$$_ToggleLoaderCopyWithImpl(
      _$_ToggleLoader _value, $Res Function(_$_ToggleLoader) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ToggleLoader implements _ToggleLoader {
  const _$_ToggleLoader();

  @override
  String toString() {
    return 'LoaderBlocAdvEvent.toggleLoader()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToggleLoader);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleLoader,
  }) {
    return toggleLoader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleLoader,
  }) {
    return toggleLoader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleLoader,
    required TResult orElse(),
  }) {
    if (toggleLoader != null) {
      return toggleLoader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleLoader value) toggleLoader,
  }) {
    return toggleLoader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleLoader value)? toggleLoader,
  }) {
    return toggleLoader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleLoader value)? toggleLoader,
    required TResult orElse(),
  }) {
    if (toggleLoader != null) {
      return toggleLoader(this);
    }
    return orElse();
  }
}

abstract class _ToggleLoader implements LoaderBlocAdvEvent {
  const factory _ToggleLoader() = _$_ToggleLoader;
}

/// @nodoc
mixin _$LoaderBlocAdvState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoaderBlocAdvStateCopyWith<LoaderBlocAdvState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoaderBlocAdvStateCopyWith<$Res> {
  factory $LoaderBlocAdvStateCopyWith(
          LoaderBlocAdvState value, $Res Function(LoaderBlocAdvState) then) =
      _$LoaderBlocAdvStateCopyWithImpl<$Res, LoaderBlocAdvState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$LoaderBlocAdvStateCopyWithImpl<$Res, $Val extends LoaderBlocAdvState>
    implements $LoaderBlocAdvStateCopyWith<$Res> {
  _$LoaderBlocAdvStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_LoaderBlocAdvStateCopyWith<$Res>
    implements $LoaderBlocAdvStateCopyWith<$Res> {
  factory _$$_LoaderBlocAdvStateCopyWith(_$_LoaderBlocAdvState value,
          $Res Function(_$_LoaderBlocAdvState) then) =
      __$$_LoaderBlocAdvStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_LoaderBlocAdvStateCopyWithImpl<$Res>
    extends _$LoaderBlocAdvStateCopyWithImpl<$Res, _$_LoaderBlocAdvState>
    implements _$$_LoaderBlocAdvStateCopyWith<$Res> {
  __$$_LoaderBlocAdvStateCopyWithImpl(
      _$_LoaderBlocAdvState _value, $Res Function(_$_LoaderBlocAdvState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_LoaderBlocAdvState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoaderBlocAdvState implements _LoaderBlocAdvState {
  const _$_LoaderBlocAdvState({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'LoaderBlocAdvState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoaderBlocAdvState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoaderBlocAdvStateCopyWith<_$_LoaderBlocAdvState> get copyWith =>
      __$$_LoaderBlocAdvStateCopyWithImpl<_$_LoaderBlocAdvState>(
          this, _$identity);
}

abstract class _LoaderBlocAdvState implements LoaderBlocAdvState {
  const factory _LoaderBlocAdvState({required final bool isLoading}) =
      _$_LoaderBlocAdvState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LoaderBlocAdvStateCopyWith<_$_LoaderBlocAdvState> get copyWith =>
      throw _privateConstructorUsedError;
}
