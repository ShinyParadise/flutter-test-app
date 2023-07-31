import 'package:flutter/cupertino.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:flutter_test_app/another_screen.dart';

void listenDeepLinkData(BuildContext context) async {
  var streamSubscriptionDeepLink =
      FlutterBranchSdk.initSession().listen((data) {
    if (data.containsKey("+clicked_branch_link") &&
        data["+clicked_branch_link"] == true) {
      Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => AnotherScreen(
                    title: data["custom_string"],
                  )));
    }
  }, onError: (error) {
    print(error.toString());
  });
}
