import 'package:bring/common/bring_header.dart';
import 'package:flutter/material.dart';

class IdeaWriteScreen extends StatelessWidget {
  const IdeaWriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BringHeader(title: '아이디어 작성'),
            Text('ddd')

          ],
        ),
      ),
    );
  }
}
