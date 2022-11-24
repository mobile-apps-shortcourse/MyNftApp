import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nftapp/pages/welcome.dart';
import 'package:nftapp/utilities/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _textStyle = GoogleFonts.dmSans();

  @override
  Widget build(BuildContext context) {
    /// This shows the system UI
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    /// returns the material app with the welcome page as the initial route
    return MaterialApp(
        title: kAppName,
        debugShowCheckedModeBanner: false,
        home: const WelcomePage(),
        theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: Colors.white,
            textTheme: GoogleFonts.dmSansTextTheme().copyWith(
              headline3: _textStyle.copyWith(color: Colors.black),
              headline4: _textStyle.copyWith(
                  color: Colors.black, fontWeight: FontWeight.w600),
              headline5: _textStyle.copyWith(color: Colors.black),
            ),
            colorScheme: const ColorScheme.light(
                background: Colors.white,
                onBackground: Colors.black,
                primary: Color(0xffE6DAFE),
                onPrimary: Colors.black,
                secondary: Color(0xffCBB3FF),
                onSecondary: Colors.black)));
  }
}
