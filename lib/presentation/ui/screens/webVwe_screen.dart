import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebvweScreen extends StatefulWidget {
  const WebvweScreen({super.key, required this.url});

  final String url;

  @override
  State<WebvweScreen> createState() => _WebvweScreenState();
}

class _WebvweScreenState extends State<WebvweScreen> {
  late WebViewController _webViewController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: _webViewController,
      ),
    );
  }
}
