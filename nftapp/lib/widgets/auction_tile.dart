import 'package:flutter/material.dart';
import 'package:nftapp/models/auction.dart';
import 'package:nftapp/utilities/extensions.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:nftapp/pages/auction.dart';

class AuctionItemTile extends StatelessWidget {
  final Auction auction;

  const AuctionItemTile({Key? key, required this.auction}) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AuctionPage(auction: auction))),
        child: Container(
          width: context.width * 0.8,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 2.5,
                  color: context.theme.disabledColor.withOpacity(0.1))),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(TablerIcons.brand_sentry),
                      const SizedBox(width: 8),
                      Text(
                        auction.tag,
                        style: context.theme.textTheme.subtitle1
                            ?.copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text(
                    '@${auction.artist}',
                    style: context.theme.textTheme.subtitle1?.copyWith(
                        color:
                            context.colorScheme.onBackground.withOpacity(0.69)),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                  child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: context.theme.disabledColor.withOpacity(0.1)),
                child: CachedNetworkImage(
                  imageUrl: auction.imageUrl,
                  fit: BoxFit.cover,
                ),
              )),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '20h: 35min: 08s',
                        style: context.theme.textTheme.subtitle1
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Time Left',
                        style: context.theme.textTheme.subtitle2?.copyWith(
                            color: context.colorScheme.onBackground
                                .withOpacity(0.69)),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${auction.bid} ETH',
                        style: context.theme.textTheme.subtitle1
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Highest Bid',
                        style: context.theme.textTheme.subtitle2?.copyWith(
                            color: context.colorScheme.onBackground
                                .withOpacity(0.69)),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
