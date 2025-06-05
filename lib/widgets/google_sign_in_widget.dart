import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

import 'google_sign_in_widget_web.dart'
    if (dart.library.io) 'google_sign_in_widget_stub.dart';

class GoogleSignInWidget extends StatelessWidget {
  final void Function(String idToken) onTokenReceived;

  const GoogleSignInWidget({super.key, required this.onTokenReceived});

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? GoogleSignInWidgetWeb(onTokenReceived: onTokenReceived)
        : const SizedBox.shrink();
  }
}
