import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const[
         WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://eco-bali.com/eco-store/',
        )
      ],
    );
  }
}
