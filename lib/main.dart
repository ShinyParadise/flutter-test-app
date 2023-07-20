import 'package:flutter/cupertino.dart';

import 'second_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        title: 'Test',
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: MyHomePage(title: 'Test app'));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is first screen',
            ),
            CupertinoButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) {
                    return const SecondScreen(title: 'Second screen');
                  }));
                },
                child: const Text('Go to second screen'))
          ],
        ),
      ),
    );
  }
}
