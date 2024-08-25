import 'package:bring/util/tag_text_editing_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/response/reply_response.dart';

class ConsultBusinessDetailController extends GetxController {
  TextEditingController replyTextController = TextEditingController();

  // TagTextEditingController replyTextController = TagTextEditingController();
  RxBool isLiked = false.obs;
  RxBool showReplyField = false.obs;
  RxString replyNickname = ''.obs;
  RxString replyContent = ''.obs;
  RxString content = '디테일디테일디테일디테일디테일디테일디테일디테일디테일'.obs;

  final List<ReplyResponse> testReplies = [
    ReplyResponse(
      id: 1,
      nickname: 'user1',
      profileImage: 'https://example.com/profile1.jpg',
      content: 'This is a comment by user1.',
      reReplyList: [],
      likeCount: 10,
      isRereply: false,
      isLiked: true,
    ),
    ReplyResponse(
      id: 2,
      nickname: 'user2',
      profileImage: 'https://example.com/profile2.jpg',
      content: 'This is a reply to user1.',
      reReplyList: [],
      likeCount: 5,
      isRereply: true,
      isLiked: false,
    ),
    ReplyResponse(
      id: 3,
      nickname: 'user3',
      profileImage: 'https://example.com/profile3.jpg',
      content:
          'Another comment by user3. Another comment by user3.Another comment by user3.Another comment by user3.Another comment by user3.Another comment by user3.',
      reReplyList: [],
      likeCount: 7,
      isRereply: false,
      isLiked: true,
    ),
    ReplyResponse(
      id: 4,
      nickname: 'user4',
      profileImage: 'https://example.com/profile4.jpg',
      content: 'This is a reply to user3.',
      reReplyList: [],
      likeCount: 3,
      isRereply: true,
      isLiked: false,
    ),
    ReplyResponse(
      id: 5,
      nickname: 'user5',
      profileImage: 'https://example.com/profile5.jpg',
      content: 'User5 comment with reReplies.',
      reReplyList: [
        ReplyResponse(
          id: 6,
          nickname: 'user6',
          profileImage: 'https://example.com/profile6.jpg',
          content: 'Reply to user5.',
          reReplyList: [],
          likeCount: 2,
          isRereply: true,
          isLiked: true,
        ),
        ReplyResponse(
          id: 7,
          nickname: 'user7',
          profileImage: 'https://example.com/profile7.jpg',
          content: 'Another reply to user5.',
          reReplyList: [],
          likeCount: 4,
          isRereply: true,
          isLiked: false,
        ),
      ],
      likeCount: 12,
      isRereply: false,
      isLiked: true,
    ),
  ];

  void onTapReply(int index) {
    showReplyField.value = true;
    replyNickname.value = testReplies[index].nickname;
    replyContent.value = testReplies[index].content;
  }

  void toggleLikeButton(int id) {
    // todo: api 호출 -> 반환값은 업데이트된 response -> UI 교체
    bool apiSuccess = true;
    if (apiSuccess) {
    } else {}
    // 성공하면 리스트 수동업데이트해서 교체
    update();
  }
}
