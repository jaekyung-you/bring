import 'package:freezed_annotation/freezed_annotation.dart';
part 'reply_response.freezed.dart';
part 'reply_response.g.dart';

@freezed
class ReplyResponse with _$ReplyResponse {
  factory ReplyResponse({
    required int id,
    required String nickname,
    required String profileImage,
    required String content,
    required List<ReplyResponse> reReplyList, // 꼬리댓
    required int likeCount,
    required bool isRereply, // 대댓글인지 여부
    required bool isLiked, // 내가 좋아요 했는지 여부
  }) = _ReplyResponse;

  factory ReplyResponse.fromJson(Map<String, dynamic> json)
  => _$ReplyResponseFromJson(json);
}