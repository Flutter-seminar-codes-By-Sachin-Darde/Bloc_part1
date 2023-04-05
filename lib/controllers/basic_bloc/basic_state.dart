part of 'basic_bloc.dart';

class BasicState extends Equatable {
  const BasicState({required this.text});

  final String text;

  @override
  List<Object?> get props => [text];

  BasicState copyWith({
    final String? text,
  }) {
    return BasicState(
      text: text ?? this.text,
    );
  }
}
