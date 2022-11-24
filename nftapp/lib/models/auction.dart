import 'dart:math';

class Auction {
  final String tag;
  final String imageUrl;
  final String artist;
  final String artistAvatarUrl;
  final String description;
  final double bid;
  final DateTime expiration;

  const Auction(
      {required this.tag,
      required this.imageUrl,
      required this.artist,
      required this.artistAvatarUrl,
      required this.description,
      required this.bid,
      required this.expiration});
}

final kSampleAuctions = <Auction>[
  Auction(
      tag: 'Day ${Random().nextInt(100)}',
      imageUrl:
          'https://cdn.dribbble.com/userupload/3368815/file/original-9aca23701d7ecf8544403d95aabf2e9e.png?compress=1&resize=400x300&vertical=top',
      artist: 'Ananse',
      artistAvatarUrl:
          'https://cdn.dribbble.com/users/722835/screenshots/6516126/spider800_still_2x.gif?compress=1&resize=400x300&vertical=top',
      description: 'Something I found stuck in my sink',
      bid: 30.67,
      expiration: DateTime.now()),
  Auction(
      tag: 'Day ${Random().nextInt(100)}',
      imageUrl:
          'https://cdn.dribbble.com/users/383277/screenshots/18055765/media/e5fc935b60035305099554810357012a.png?compress=1&resize=400x300&vertical=top',
      artist: 'Roy',
      artistAvatarUrl:
          'https://cdn.dribbble.com/users/77598/screenshots/17534963/gif_4x.gif?compress=1&resize=400x300&vertical=top',
      description: 'blah blah blahk sheep',
      bid: 89.99,
      expiration: DateTime.now()),
  Auction(
      tag: 'Day ${Random().nextInt(100)}',
      imageUrl:
          'https://cdn.dribbble.com/users/4335179/screenshots/17383379/media/7dfc5cae9baa4743a44b4ab47995c8fa.png?compress=1&resize=400x300&vertical=top',
      artist: 'nux taki',
      artistAvatarUrl:
          'https://cdn.dribbble.com/userupload/4005542/file/original-08317fe418a1eb982ac83f2adf8a4bd0.png?compress=1&crop=92x96-1814x1387&resize=400x300&vertical=top',
      description: 'Its a f**king NFFTTT!',
      bid: 69.0,
      expiration: DateTime.now()),
  Auction(
      tag: 'Day ${Random().nextInt(100)}',
      imageUrl:
          'https://cdn.dribbble.com/users/879652/screenshots/17230235/media/b1350f3b59d92006fa258f80b21a30f7.png?compress=1&resize=400x300&vertical=top',
      artist: 'ruth',
      artistAvatarUrl:
          'https://cdn.dribbble.com/userupload/3355780/file/original-1f97a9bf92acc0a0046a7b135dc2a53d.jpg?compress=1&resize=400x300&vertical=top',
      description: 'Reality is enigmatic.....',
      bid: 137.0,
      expiration: DateTime.now()),
];
