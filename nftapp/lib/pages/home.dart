import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:nftapp/models/auction.dart';
import 'package:nftapp/utilities/constants.dart';
import 'package:nftapp/utilities/extensions.dart';
import 'package:nftapp/widgets/auction_tile.dart';
import 'package:nftapp/widgets/user.avatar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _categories = [
    'Trending',
    'Digital Arts',
    '3D Videos',
    'Games',
    'Collectibles'
  ];
  final _auctions = kSampleAuctions.reversed.toList();

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: context.colorScheme.background,
        elevation: 0,
        title: const Icon(TablerIcons.brand_sentry, size: 36),
        actions: const [UserAvatar(avatar: kUserProfileImageUrl)],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: 'Live\n',
                            style: context.theme.textTheme.subtitle1),
                        TextSpan(
                            text: 'Auctions\n',
                            style: context.theme.textTheme.headline4),
                        const TextSpan(text: 'Enjoy the latest hot auctions')
                      ]),
                      style: context.theme.textTheme.subtitle2,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    /*todo -> add action*/
                  },
                  icon: const Icon(Icons.tune),
                  iconSize: 32,
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
            height: 40,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: index == 0
                      ? context.colorScheme.onBackground
                      : context.colorScheme.background,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  _categories[index],
                  style: context.theme.textTheme.subtitle1?.copyWith(
                    color: index == 0
                        ? context.colorScheme.background
                        : context.colorScheme.onBackground,
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: _categories.length,
            ),
          ),
          Expanded(
              child: ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      AuctionItemTile(auction: _auctions[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 24,
                      ),
                  itemCount: _auctions.length))
        ],
      )));
}
