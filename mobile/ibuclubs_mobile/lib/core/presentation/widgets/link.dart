import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Link extends StatelessWidget {
  final String url;
  final Widget child;

  const Link({super.key, required this.url, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async => launchUrl(Uri.parse(url)),
      child: child,
    );
  }
}
