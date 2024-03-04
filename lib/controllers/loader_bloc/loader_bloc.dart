import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'loader_event.dart';
part 'loader_state.dart';

class LoaderBloc extends Bloc<LoaderEvent, LoaderState> {
  LoaderBloc() : super(const LoaderState(isLoading: false)) {
     on<ChangeLoaderEvent>((event, emit) {
      emit(state.copyWith(
        isLoading: !state.isLoading
      )); 
    });
  }
}
