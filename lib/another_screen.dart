import 'package:flutter/cupertino.dart';

class AnotherScreen extends StatelessWidget {
  const AnotherScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(title),
        ),
        child: Center(
          child: Text(title),
        ));
  }
}
