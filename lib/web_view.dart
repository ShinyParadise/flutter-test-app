import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FlutterWebView extends StatefulWidget {
  const FlutterWebView({super.key, required this.url});

  final String url;

  @override
  State<FlutterWebView> createState() => _FlutterWebViewState();
}

class _FlutterWebViewState extends State<FlutterWebView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.url),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.95,
        child: WebViewWidget(controller: controller));
  }
}
