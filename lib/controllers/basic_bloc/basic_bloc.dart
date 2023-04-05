import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'basic_event.dart';
part 'basic_state.dart';

class BasicBloc extends Bloc<BasicEvent, BasicState> {
  BasicBloc()
      : super(const BasicState(text: 'Click following button to change')) {
    on<ChangeTextToDisplay>((event, emit) {
      emit(state.copyWith(text: event.text));
    });
  }
}
