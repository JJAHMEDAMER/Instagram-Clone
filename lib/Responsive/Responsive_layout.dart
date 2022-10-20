import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webView;
  final Widget mobileView;
  const ResponsiveLayout({
    super.key,
    required this.webView,
    required this.mobileView,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return webView;
        } else {
          return mobileView;
        }
      },
    );
  }
}
