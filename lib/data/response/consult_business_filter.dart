import 'package:freezed_annotation/freezed_annotation.dart';
part 'consult_business_filter.freezed.dart';
part 'consult_business_filter.g.dart';

@freezed
class ConsultBusinessFilter with _$ConsultBusinessFilter {
  factory ConsultBusinessFilter({
    required String title,
    required String code,
  }) = _ConsultBusinessFilter;

  factory ConsultBusinessFilter.fromJson(Map<String, dynamic> json)
  => _$ConsultBusinessFilterFromJson(json);
}