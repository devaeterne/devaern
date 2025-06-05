import 'dart:html' as html;
import 'dart:ui' as ui;

void registerGoogleButtonViewFactory() {
  // ignore: undefined_prefixed_name
  ui.platformViewRegistry.registerViewFactory(
    'google-button-container',
    (int viewId) => html.DivElement()..id = 'google-button-container',
  );
}
