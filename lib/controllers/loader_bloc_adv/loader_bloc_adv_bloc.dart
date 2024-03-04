import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loader_bloc_adv_event.dart';
part 'loader_bloc_adv_state.dart';
part 'loader_bloc_adv_bloc.freezed.dart';

class LoaderBlocAdvBloc extends Bloc<LoaderBlocAdvEvent, LoaderBlocAdvState> {
  LoaderBlocAdvBloc(LoaderBlocAdvState loaderBlocAdvState)
      : super(loaderBlocAdvState) {
    on<_ToggleLoader>((event, emit) {
      emit(state.copyWith(isLoading: !state.isLoading));
    });
  }
}
