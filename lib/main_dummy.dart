import 'package:meta/meta.dart';

class MyWidget {
  final String text;

  @visibleForTesting
  const MyWidget({required this.text});
}

void main() {
  final myWidget = MyWidget(text: 'Hello, world!');

  print(myWidget.text); // This will produce a warning
}
