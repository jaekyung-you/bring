import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter_item.freezed.dart';
part 'filter_item.g.dart';

@freezed
class FilterItem with _$FilterItem {
  factory FilterItem({
    required String title,
    required String code,
  }) = _FilterItem;

  factory FilterItem.fromJson(Map<String, dynamic> json)
  => _$FilterItemFromJson(json);
}