part of 'add_sub_bloc.dart';

class AddSubState extends Equatable {
  final double? result;
  final TextEditingController number1Controller;
  final TextEditingController number2Controller;
  const AddSubState(
      {this.result,
      required this.number1Controller,
      required this.number2Controller,
      });

  @override
  List<Object?> get props => [
        result,
        number1Controller,
        number2Controller,
      ];

  AddSubState copyWith({
    final double? result,
    final TextEditingController? number1Controller,
    final TextEditingController? number2Controller,
  }) {
    return AddSubState(
      result: result ?? this.result,
      number1Controller: number1Controller ?? this.number1Controller,
      number2Controller: number2Controller ?? this.number2Controller,
    );
  }
}
