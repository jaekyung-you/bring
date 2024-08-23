import 'package:flutter/material.dart';

class CircleImageWidget extends StatelessWidget {
  final String imageUrl;
  final double width;

  const CircleImageWidget({super.key, required this.imageUrl, required this.width});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: width / 2,
        backgroundImage: NetworkImage(
          imageUrl,
        ),
        onBackgroundImageError: (error, stackTrace) {
          Image.asset('assets/images/icon_default_user.png', fit: BoxFit.cover);
        });
    // return Container(
    //   width: width,
    //   height: width,
    //   clipBehavior: Clip.antiAlias,
    //   decoration: const BoxDecoration(
    //     shape: BoxShape.circle,
    //   ),
    //   child: Image.network(
    //     imageUrl,
    //     fit: BoxFit.cover,
    //     errorBuilder: (context, erorr, stackTrace) {
    //       return Image.asset('assets/images/icon_default_user.png', fit: BoxFit.cover);
    //     },
    //   ),
    // );
    // return Container(
    //   width: width,
    //   height: width,
    //   decoration: const BoxDecoration(
    //     shape: BoxShape.circle,
    //   ),
    //   child: ClipRRect(
    //     borderRadius: BorderRadius.circular(width / 2),
    //     child: Image.network(
    //       imageUrl,
    //       fit: BoxFit.cover,
    //       errorBuilder: (context, erorr, stackTrace) {
    //         return Image.asset('assets/images/icon_default_user.png', fit: BoxFit.cover);
    //       },
    //     ),
    //   ),
    // );
    // ;
  }
}
