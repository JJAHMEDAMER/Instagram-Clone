import 'package:flutter/material.dart';
import 'package:instagram_clone/Responsive/Responsive_layout.dart';
import 'package:instagram_clone/Responsive/mobile_view.dart';
import 'package:instagram_clone/Responsive/web_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Instagram Clone",
        home: ResponsiveLayout(
          mobileView: MobileView(),
          webView: WebView(),
        ));
  }
}
