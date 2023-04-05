part of 'add_sub_bloc.dart';

class AddSubState extends Equatable {
  final bool resultReady;
  final String operation;
  final int result;
  const AddSubState(
      {this.result = 0, this.resultReady = false, this.operation = ''});

  @override
  List<Object?> get props => [resultReady, operation, result];

  AddSubState copyWith({
    final bool? resultReady,
    final String? operation,
    final int? result,
  }) {
    return AddSubState(
      operation: operation ?? this.operation,
      result: result ?? this.result,
      resultReady: resultReady ?? this.resultReady,
    );
  }
}
