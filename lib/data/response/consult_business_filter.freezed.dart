// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consult_business_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsultBusinessFilter _$ConsultBusinessFilterFromJson(
    Map<String, dynamic> json) {
  return _ConsultBusinessFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultBusinessFilter {
  String get title => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this ConsultBusinessFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultBusinessFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultBusinessFilterCopyWith<ConsultBusinessFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultBusinessFilterCopyWith<$Res> {
  factory $ConsultBusinessFilterCopyWith(ConsultBusinessFilter value,
          $Res Function(ConsultBusinessFilter) then) =
      _$ConsultBusinessFilterCopyWithImpl<$Res, ConsultBusinessFilter>;
  @useResult
  $Res call({String title, String code});
}

/// @nodoc
class _$ConsultBusinessFilterCopyWithImpl<$Res,
        $Val extends ConsultBusinessFilter>
    implements $ConsultBusinessFilterCopyWith<$Res> {
  _$ConsultBusinessFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultBusinessFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultBusinessFilterImplCopyWith<$Res>
    implements $ConsultBusinessFilterCopyWith<$Res> {
  factory _$$ConsultBusinessFilterImplCopyWith(
          _$ConsultBusinessFilterImpl value,
          $Res Function(_$ConsultBusinessFilterImpl) then) =
      __$$ConsultBusinessFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String code});
}

/// @nodoc
class __$$ConsultBusinessFilterImplCopyWithImpl<$Res>
    extends _$ConsultBusinessFilterCopyWithImpl<$Res,
        _$ConsultBusinessFilterImpl>
    implements _$$ConsultBusinessFilterImplCopyWith<$Res> {
  __$$ConsultBusinessFilterImplCopyWithImpl(_$ConsultBusinessFilterImpl _value,
      $Res Function(_$ConsultBusinessFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultBusinessFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? code = null,
  }) {
    return _then(_$ConsultBusinessFilterImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultBusinessFilterImpl implements _ConsultBusinessFilter {
  _$ConsultBusinessFilterImpl({required this.title, required this.code});

  factory _$ConsultBusinessFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultBusinessFilterImplFromJson(json);

  @override
  final String title;
  @override
  final String code;

  @override
  String toString() {
    return 'ConsultBusinessFilter(title: $title, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultBusinessFilterImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, code);

  /// Create a copy of ConsultBusinessFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultBusinessFilterImplCopyWith<_$ConsultBusinessFilterImpl>
      get copyWith => __$$ConsultBusinessFilterImplCopyWithImpl<
          _$ConsultBusinessFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultBusinessFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultBusinessFilter implements ConsultBusinessFilter {
  factory _ConsultBusinessFilter(
      {required final String title,
      required final String code}) = _$ConsultBusinessFilterImpl;

  factory _ConsultBusinessFilter.fromJson(Map<String, dynamic> json) =
      _$ConsultBusinessFilterImpl.fromJson;

  @override
  String get title;
  @override
  String get code;

  /// Create a copy of ConsultBusinessFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultBusinessFilterImplCopyWith<_$ConsultBusinessFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
