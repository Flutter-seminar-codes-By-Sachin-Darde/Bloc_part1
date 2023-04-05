part of 'add_sub_bloc.dart';

class AddSubEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddEvent extends AddSubEvent {
  final int no1;
  final int no2;

  AddEvent({
    required this.no1,
    required this.no2,
  });

  @override
  List<Object?> get props => [no1, no2];
}

class SubEvent extends AddSubEvent {
  final int no1;
  final int no2;

  SubEvent({
    required this.no1,
    required this.no2,
  });

  @override
  List<Object?> get props => [no1, no2];
}
