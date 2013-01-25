import 'dart:html';
import 'package:web_ui/web_ui.dart';
import 'package:bot/bot.dart';
import 'package:widget/effects.dart';
import 'package:widget/widget.dart';

class Alert extends WebComponent implements ShowHideComponent {
  @protected
  void created() {
    this.onClick.listen(_onClick);
  }

  void _onClick(MouseEvent event) {
    if(!event.defaultPrevented) {
      final Element target = event.target as Element;
      if(target != null && target.dataAttributes['dismiss'] == 'alert') {
        hide();
      }
    }
  }

  void hide() {
    ShowHide.hide(this, effect: new ScaleEffect());
  }

  void show() {
    ShowHide.show(this, effect: new ScaleEffect());
  }
}