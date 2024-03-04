part of 'loader_with_cubit.dart';

@freezed
class LoaderWithState with _$LoaderWithState {
  const factory LoaderWithState({
    required bool isLoading,
  }) = _LoaderWithState;
  factory LoaderWithState.initial() {
    return const LoaderWithState(
      isLoading: false,
    );
  }
}
