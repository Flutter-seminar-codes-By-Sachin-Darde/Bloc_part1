part of 'basic_bloc.dart';

class BasicEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ChangeTextToDisplay extends BasicEvent {
  ChangeTextToDisplay({
    required this.text,
  });
  final String text;

  @override
  List<Object?> get props => [text];
}
