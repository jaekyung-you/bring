import 'dart:ui';

import 'package:bring/const/bring_color.dart';
import 'package:flutter/material.dart';

import '../const/app_config.dart';

class TagWidgetSpan extends InlineSpan {
  @override
  void build(ParagraphBuilder builder, {TextScaler textScaler = TextScaler.noScaling, List<PlaceholderDimensions>? dimensions}) {
    // TODO: implement build
  }

  @override
  int? codeUnitAtVisitor(int index, Accumulator offset) {
    // TODO: implement codeUnitAtVisitor
    throw UnimplementedError();
  }

  @override
  RenderComparison compareTo(InlineSpan other) {
    // TODO: implement compareTo
    throw UnimplementedError();
  }

  @override
  void computeSemanticsInformation(List<InlineSpanSemanticsInformation> collector) {
    // TODO: implement computeSemanticsInformation
  }

  @override
  void computeToPlainText(StringBuffer buffer, {bool includeSemanticsLabels = true, bool includePlaceholders = true}) {
    // TODO: implement computeToPlainText
  }

  @override
  InlineSpan? getSpanForPositionVisitor(TextPosition position, Accumulator offset) {
    // TODO: implement getSpanForPositionVisitor
    throw UnimplementedError();
  }

  @override
  bool visitChildren(InlineSpanVisitor visitor) {
    // TODO: implement visitChildren
    throw UnimplementedError();
  }

  @override
  bool visitDirectChildren(InlineSpanVisitor visitor) {
    // TODO: implement visitDirectChildren
    throw UnimplementedError();
  }
  
}

// class TagWidgetSpan extends InlineSpan {
//   final String tag;
//
//   const TagWidgetSpan({super.key, required this.tag});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: AppConfig.contentPadding, vertical: 4),
//       decoration: BoxDecoration(
//         color: BringColor.grey02,
//         borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain),
//       ),
//       child: Text(
//         tag,
//         style: TextStyle(fontSize: 14, color: BringColor.grey01),
//       ),
//     );
//   }
// }
