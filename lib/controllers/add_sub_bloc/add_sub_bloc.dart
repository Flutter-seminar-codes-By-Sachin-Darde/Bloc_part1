import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'add_sub_event.dart';
part 'add_sub_state.dart';

class AddSubBloc extends Bloc<AddSubEvent, AddSubState> {
  AddSubBloc()
      : super(AddSubState(
            number1Controller: TextEditingController(),
            number2Controller: TextEditingController())) {
    on<AddEvent>(
      (event, emit) {
        final number1 = double.parse(state.number1Controller.text);
        final number2 = double.parse(state.number2Controller.text);
        emit(state.copyWith(result: number1 + number2));
      },
    );
    on<SubEvent>(
      (event, emit) {
        final number1 = double.parse(state.number1Controller.text);
        final number2 = double.parse(state.number2Controller.text);
        emit(state.copyWith(result: number1 - number2));
      },
    );

    on<SmartEvent>(
      (event, emit) {
        switch (event.operation) {
          case 'SUB':
            add(SubEvent());
            break;
          case 'ADD':
          default:
            add(AddEvent());
        }
      },
    );
  }
}
