part of 'add_sub_bloc.dart';

class AddSubEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddEvent extends AddSubEvent {
  @override
  List<Object?> get props => [];
}

class SubEvent extends AddSubEvent {
  @override
  List<Object?> get props => [];
}

class SmartEvent extends AddSubEvent {
  final String operation;
  SmartEvent({required this.operation});
  @override
  List<Object?> get props => [operation];
}
