import 'package:flutter/material.dart';
import 'package:flutter_test_app/web_view.dart';

class ModalView extends StatelessWidget {
  const ModalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
        child: SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [FlutterWebView(url: 'https://flutter.dev')],
      ),
    ));
  }
}
