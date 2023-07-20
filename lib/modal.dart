import 'package:flutter/material.dart';

class ModalView extends StatelessWidget {
  const ModalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [],
      ),
    ));
  }
}
