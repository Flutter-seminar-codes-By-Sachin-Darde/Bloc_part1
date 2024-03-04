part of 'loader_bloc_adv_bloc.dart';

@freezed
class LoaderBlocAdvState with _$LoaderBlocAdvState {
  const factory LoaderBlocAdvState({
    required bool isLoading,
  }) = _LoaderBlocAdvState;
  factory LoaderBlocAdvState.initial() {
    return LoaderBlocAdvState(
      isLoading: false,
    );
  }
}
