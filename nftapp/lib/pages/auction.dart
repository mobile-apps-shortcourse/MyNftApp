import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:nftapp/models/auction.dart';
import 'package:nftapp/utilities/constants.dart';
import 'package:nftapp/utilities/extensions.dart';
import 'package:nftapp/widgets/user.avatar.dart';

class AuctionPage extends StatefulWidget {
  final Auction auction;

  const AuctionPage({Key? key, required this.auction}) : super(key: key);
  @override
  State<AuctionPage> createState() => _AuctionPageState();
}

class _AuctionPageState extends State<AuctionPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Auctions'),
          centerTitle: false,
          elevation: 0,
          backgroundColor: context.colorScheme.background,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
                color: const Color(0xffFF409D)),
            IconButton(
                onPressed: () {}, icon: const Icon(TablerIcons.dots_vertical)),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.fromLTRB(24, 40, 24, context.height * 0.1),
          children: [
            Container(
              width: context.width,
              height: context.height * 0.45,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2.5,
                      color: context.theme.disabledColor.withOpacity(0.1))),
              padding: const EdgeInsets.all(12),
              child: CachedNetworkImage(
                  imageUrl: widget.auction.imageUrl, fit: BoxFit.cover),
            ),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.auction.tag,
                  style: context.theme.textTheme.headline4,
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    UserAvatar(
                      avatar: widget.auction.artistAvatarUrl,
                      size: 36,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '@${widget.auction.artist}',
                      style: context.theme.textTheme.subtitle1,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Text(
                  widget.auction.description,
                  style: context.theme.textTheme.bodyText1,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const Divider(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const UserAvatar(
                              avatar: kUserProfileImageUrl, size: 56),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Highest Bid Placed By',
                                style: context.theme.textTheme.subtitle2,
                              ),
                              Text(
                                'Maria',
                                style: context.theme.textTheme.subtitle1
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '34.74 ETH',
                      style: context.theme.textTheme.headline6
                          ?.copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: SafeArea(
          top: false,
          child: GestureDetector(
            onTap: () {},
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                decoration: BoxDecoration(
                    color: context.colorScheme.onBackground,
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Place Bid',
                      style: context.theme.textTheme.headline6?.copyWith(
                          color: context.colorScheme.background,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '20h: 35min 08s',
                      style: context.theme.textTheme.subtitle1?.copyWith(
                          color: context.colorScheme.background,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
        ),
      );
}
