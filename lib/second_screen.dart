import 'package:flutter/cupertino.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'modal.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: Container(
        color: const Color.fromARGB(255, 241, 245, 39),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text('This is second screen'),
              CupertinoButton(
                onPressed: () {
                  showCupertinoModalBottomSheet(
                      context: context,
                      isDismissible: true,
                      enableDrag: false,
                      builder: (context) => const ModalView());
                },
                child: const Text('Show modal screen'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
