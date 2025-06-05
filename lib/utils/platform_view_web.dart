import 'dart:html' as html;
import 'dart:ui_web' as ui;

void registerGoogleButtonViewFactory() {
  const viewType = 'google-button-container';

  // ignore: undefined_prefixed_name
  ui.platformViewRegistry.registerViewFactory(viewType, (int viewId) {
    final container = html.DivElement()
      ..id = viewType
      ..style.width = '100%'
      ..style.height = '50px';
    return container;
  });
}
