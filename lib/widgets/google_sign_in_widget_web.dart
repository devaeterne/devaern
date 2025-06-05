import 'dart:html' as html;
import 'dart:ui_web' as ui;
import 'package:flutter/material.dart';

class GoogleSignInWidgetWeb extends StatefulWidget {
  final void Function(String idToken) onTokenReceived;

  const GoogleSignInWidgetWeb({super.key, required this.onTokenReceived});

  @override
  State<GoogleSignInWidgetWeb> createState() => _GoogleSignInWidgetWebState();
}

class _GoogleSignInWidgetWebState extends State<GoogleSignInWidgetWeb> {
  final String viewType = 'google-button-container';

  @override
  void initState() {
    super.initState();

    final div = html.DivElement()
      ..id = viewType
      ..style.width = '100%'
      ..style.height = '50px';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(viewType, (int viewId) => div);

    html.window.on['google-id-token'].listen((event) {
      final customEvent = event as html.CustomEvent;
      final token = customEvent.detail as String;
      widget.onTokenReceived(token);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 50, child: HtmlElementView(viewType: viewType));
  }
}
