import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nftapp/utilities/extensions.dart';

class UserAvatar extends StatelessWidget {
  final String avatar;
  final double size;
  const UserAvatar({super.key, required this.avatar, this.size = 56});

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(right: 16),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.theme.disabledColor.withOpacity(0.1)),
        height: size,
        width: size,
        child: CachedNetworkImage(imageUrl: avatar, fit: BoxFit.cover),
      );
}
