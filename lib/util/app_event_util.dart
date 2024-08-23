import 'dart:async';

import '../const/enum/ui_event_type.dart';

class AppEventUtil {
  AppEventUtil._privateConstruct();

  static final _instance = AppEventUtil._privateConstruct();

  factory AppEventUtil() {
    return _instance;
  }

  final StreamController<UiEventType> _streamController = StreamController.broadcast();

  String toastMessage = '';

  void showToastMessage({required String text}) {
    toastMessage = text;
    _streamController.add(UiEventType.showToast);

    Future.delayed(const Duration(milliseconds: 2), () {
      _streamController.add(UiEventType.hideToast);
    });
  }
}
