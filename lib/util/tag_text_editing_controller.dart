import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/tag_widget_span.dart';
import '../const/bring_color.dart';

class TagTextEditingController extends TextEditingController {
  static String matchKey = '\uffff'; // 유니코드 마지막 값. 문자열 끝을 나타냄
  String? tag;

  TagTextEditingController({String? text}) : super.fromValue(text == null ? TextEditingValue.empty : TextEditingValue(text: text));

  void setTag(String? mention) {
    text = '$matchKey ';
    tag = mention;
  }

  String get content => text.replaceAll(matchKey, '').trim();

  @override
  TextSpan buildTextSpan({required BuildContext context, TextStyle? style, required bool withComposing}) {
    if (text.contains(matchKey)) {
      return TextSpan(children: [
        TextSpan(text: '@ + $tag', style: TextStyle(color: Colors.blue)),
        // TagWidgetSpan(tag: tag),
        TextSpan(text: text, style: TextStyle(color: BringColor.grey01))
      ]);
    }
    return TextSpan(text: text, style: style);
  }
}
