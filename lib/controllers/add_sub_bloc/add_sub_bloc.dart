import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'add_sub_event.dart';
part 'add_sub_state.dart';

class AddSubBloc extends Bloc<AddSubEvent, AddSubState> {
  AddSubBloc() : super(const AddSubState()) {
    on<AddEvent>((event, emit) {
      emit(state.copyWith(
          resultReady: true, result: event.no1 + event.no2, operation: 'Add'));
    });
    on<SubEvent>((event, emit) {
      emit(state.copyWith(
          resultReady: true, result: event.no1 - event.no2, operation: 'Sub'));
    });
  }
}
