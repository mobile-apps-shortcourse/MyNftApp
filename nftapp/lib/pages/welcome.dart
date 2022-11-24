import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:nftapp/pages/home.dart';
// import 'package:nftapp/utilities/constants.dart';
import 'package:nftapp/utilities/extensions.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        centerTitle: false,
        title: const Icon(TablerIcons.brand_sentry, size: 36),
        elevation: 0,
        backgroundColor: context.colorScheme.background,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 24),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: context.colorScheme.onBackground,
                shape: BoxShape.circle),
            child:
                Icon(TablerIcons.wallet, color: context.colorScheme.background),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.height * 0.05,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(TablerIcons.bolt,
                    size: context.theme.textTheme.subtitle2?.fontSize),
                const SizedBox(width: 8),
                Text(
                  'Started',
                  style: context.theme.textTheme.subtitle2,
                )
              ],
            ),
          ),
          const SizedBox(height: 32),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text.rich(TextSpan(
                style: context.theme.textTheme.headline3,
                children: const [
                  TextSpan(text: 'Discover '),
                  TextSpan(
                      text: 'Rare Collections ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' Of '),
                  TextSpan(
                      text: 'Art & NFTs',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ])),
          ),

          const SizedBox(height: 24),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(
                    text:
                        'Digital marketplace for crypto collectables and non-fungible tokens '),
                TextSpan(
                    text: 'NFTs',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ]),
            ),
          ),

          ///
          SizedBox(height: context.height * 0.05),

          Expanded(
              child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 38),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildRatingsWidget(header: '12.1K+', subhead: 'Art work'),
                    _buildRatingsWidget(header: '1.7M+', subhead: 'Artists'),
                    _buildRatingsWidget(header: '4.5K+', subhead: 'Auctions'),
                  ]),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(color: context.colorScheme.primary),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                          (route) => false);
                    },
                    child: Container(
                      decoration:
                          BoxDecoration(color: context.colorScheme.secondary),
                      padding: const EdgeInsets.all(24),
                      child: Icon(
                        Icons.arrow_right_alt,
                        color: context.colorScheme.onSecondary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text('Discover\nArtwork',
                      style: context.theme.textTheme.headline4
                          ?.copyWith(color: context.colorScheme.onPrimary)),
                  Divider(
                    color: context.colorScheme.onPrimary,
                    thickness: 3,
                    endIndent: context.width * 0.2,
                  )
                ],
              ),
            ))
          ])),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 25, 24, 10),
            child: SafeArea(
              top: false,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Supported by',
                      style: context.theme.textTheme.subtitle1),
                  const SizedBox(width: 40),
                  Expanded(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(TablerIcons.brand_adobe, size: context.width * 0.1),
                      Icon(TablerIcons.brand_python, size: context.width * 0.1),
                      Icon(TablerIcons.brand_amongus,
                          size: context.width * 0.1),
                    ],
                  ))
                ],
              ),
            ),
          )
        ],
      ));
  Widget _buildRatingsWidget(
          {required String header, required String subhead}) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: context.theme.textTheme.headline4
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            subhead,
            style: context.theme.textTheme.subtitle1,
          )
        ],
      );
}
