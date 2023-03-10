import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:favicon/favicon.dart';
import 'package:shared_preferences/shared_preferences.dart';


class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

final List<String> urls = [];
final List<String> iconsUrls = [];

class _WebViewAppState extends State<WebViewApp> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) async {
          var icon = await FaviconFinder.getBest(url);
          iconsUrls.add(icon!.url);
          print(iconsUrls);
        },
        onPageFinished: (String url) {
        },
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          FirebaseAnalytics.instance.logEvent(
            name: 'website_visit',
            parameters: {
              'url': request.url,
            },
          );
          urls.add(request.url);
          print(urls);
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://google.com'));

    void saveLists(List<String> urls) async{
      final sharedpref = await SharedPreferences.getInstance();
      sharedpref.setString("urls", jsonEncode(urls));
      // sharedpref.setString("icons", jsonEncode(icons));
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
