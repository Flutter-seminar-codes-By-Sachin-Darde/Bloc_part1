import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loader_with_state.dart';
part 'loader_with_cubit.freezed.dart';

class LoaderWithCubit extends Cubit<LoaderWithState> {
  LoaderWithCubit(LoaderWithState loaderWithState) : super(loaderWithState);
  void toggleLoader() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }
}
