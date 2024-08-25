// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplyResponse _$ReplyResponseFromJson(Map<String, dynamic> json) {
  return _ReplyResponse.fromJson(json);
}

/// @nodoc
mixin _$ReplyResponse {
  int get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<ReplyResponse> get reReplyList =>
      throw _privateConstructorUsedError; // 꼬리댓
  int get likeCount => throw _privateConstructorUsedError;
  bool get isRereply => throw _privateConstructorUsedError; // 대댓글인지 여부
  bool get isLiked => throw _privateConstructorUsedError;

  /// Serializes this ReplyResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyResponseCopyWith<ReplyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyResponseCopyWith<$Res> {
  factory $ReplyResponseCopyWith(
          ReplyResponse value, $Res Function(ReplyResponse) then) =
      _$ReplyResponseCopyWithImpl<$Res, ReplyResponse>;
  @useResult
  $Res call(
      {int id,
      String nickname,
      String profileImage,
      String content,
      List<ReplyResponse> reReplyList,
      int likeCount,
      bool isRereply,
      bool isLiked});
}

/// @nodoc
class _$ReplyResponseCopyWithImpl<$Res, $Val extends ReplyResponse>
    implements $ReplyResponseCopyWith<$Res> {
  _$ReplyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? profileImage = null,
    Object? content = null,
    Object? reReplyList = null,
    Object? likeCount = null,
    Object? isRereply = null,
    Object? isLiked = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      reReplyList: null == reReplyList
          ? _value.reReplyList
          : reReplyList // ignore: cast_nullable_to_non_nullable
              as List<ReplyResponse>,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      isRereply: null == isRereply
          ? _value.isRereply
          : isRereply // ignore: cast_nullable_to_non_nullable
              as bool,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyResponseImplCopyWith<$Res>
    implements $ReplyResponseCopyWith<$Res> {
  factory _$$ReplyResponseImplCopyWith(
          _$ReplyResponseImpl value, $Res Function(_$ReplyResponseImpl) then) =
      __$$ReplyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String nickname,
      String profileImage,
      String content,
      List<ReplyResponse> reReplyList,
      int likeCount,
      bool isRereply,
      bool isLiked});
}

/// @nodoc
class __$$ReplyResponseImplCopyWithImpl<$Res>
    extends _$ReplyResponseCopyWithImpl<$Res, _$ReplyResponseImpl>
    implements _$$ReplyResponseImplCopyWith<$Res> {
  __$$ReplyResponseImplCopyWithImpl(
      _$ReplyResponseImpl _value, $Res Function(_$ReplyResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? profileImage = null,
    Object? content = null,
    Object? reReplyList = null,
    Object? likeCount = null,
    Object? isRereply = null,
    Object? isLiked = null,
  }) {
    return _then(_$ReplyResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      reReplyList: null == reReplyList
          ? _value._reReplyList
          : reReplyList // ignore: cast_nullable_to_non_nullable
              as List<ReplyResponse>,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      isRereply: null == isRereply
          ? _value.isRereply
          : isRereply // ignore: cast_nullable_to_non_nullable
              as bool,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyResponseImpl implements _ReplyResponse {
  _$ReplyResponseImpl(
      {required this.id,
      required this.nickname,
      required this.profileImage,
      required this.content,
      required final List<ReplyResponse> reReplyList,
      required this.likeCount,
      required this.isRereply,
      required this.isLiked})
      : _reReplyList = reReplyList;

  factory _$ReplyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String nickname;
  @override
  final String profileImage;
  @override
  final String content;
  final List<ReplyResponse> _reReplyList;
  @override
  List<ReplyResponse> get reReplyList {
    if (_reReplyList is EqualUnmodifiableListView) return _reReplyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reReplyList);
  }

// 꼬리댓
  @override
  final int likeCount;
  @override
  final bool isRereply;
// 대댓글인지 여부
  @override
  final bool isLiked;

  @override
  String toString() {
    return 'ReplyResponse(id: $id, nickname: $nickname, profileImage: $profileImage, content: $content, reReplyList: $reReplyList, likeCount: $likeCount, isRereply: $isRereply, isLiked: $isLiked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._reReplyList, _reReplyList) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.isRereply, isRereply) ||
                other.isRereply == isRereply) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nickname,
      profileImage,
      content,
      const DeepCollectionEquality().hash(_reReplyList),
      likeCount,
      isRereply,
      isLiked);

  /// Create a copy of ReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyResponseImplCopyWith<_$ReplyResponseImpl> get copyWith =>
      __$$ReplyResponseImplCopyWithImpl<_$ReplyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyResponseImplToJson(
      this,
    );
  }
}

abstract class _ReplyResponse implements ReplyResponse {
  factory _ReplyResponse(
      {required final int id,
      required final String nickname,
      required final String profileImage,
      required final String content,
      required final List<ReplyResponse> reReplyList,
      required final int likeCount,
      required final bool isRereply,
      required final bool isLiked}) = _$ReplyResponseImpl;

  factory _ReplyResponse.fromJson(Map<String, dynamic> json) =
      _$ReplyResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get nickname;
  @override
  String get profileImage;
  @override
  String get content;
  @override
  List<ReplyResponse> get reReplyList; // 꼬리댓
  @override
  int get likeCount;
  @override
  bool get isRereply; // 대댓글인지 여부
  @override
  bool get isLiked;

  /// Create a copy of ReplyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyResponseImplCopyWith<_$ReplyResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
