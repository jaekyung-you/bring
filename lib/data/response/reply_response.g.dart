// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplyResponseImpl _$$ReplyResponseImplFromJson(Map<String, dynamic> json) =>
    _$ReplyResponseImpl(
      id: (json['id'] as num).toInt(),
      nickname: json['nickname'] as String,
      profileImage: json['profileImage'] as String,
      content: json['content'] as String,
      reReplyList: (json['reReplyList'] as List<dynamic>)
          .map((e) => ReplyResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      likeCount: (json['likeCount'] as num).toInt(),
      isRereply: json['isRereply'] as bool,
      isLiked: json['isLiked'] as bool,
    );

Map<String, dynamic> _$$ReplyResponseImplToJson(_$ReplyResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'profileImage': instance.profileImage,
      'content': instance.content,
      'reReplyList': instance.reReplyList,
      'likeCount': instance.likeCount,
      'isRereply': instance.isRereply,
      'isLiked': instance.isLiked,
    };
