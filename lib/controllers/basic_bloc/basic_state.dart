part of 'basic_bloc.dart';

class BasicState extends Equatable {
  const BasicState({required this.text, required this.color});

  final String text;
  final Color color;

  @override
  List<Object?> get props => [text, color];

  BasicState copyWith({
    final String? text,
    final Color? color,
  }) {
    return BasicState(text: text ?? this.text, color: color ?? this.color);
  }
}
