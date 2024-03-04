part of 'loader_bloc.dart';

class LoaderState extends Equatable {
  const LoaderState({required this.isLoading});

  final bool isLoading;
  @override
  List<Object?> get props => [isLoading];

  LoaderState copyWith({
    final bool? isLoading,
  }) {
    return LoaderState(isLoading: isLoading ?? this.isLoading);
  }
}
