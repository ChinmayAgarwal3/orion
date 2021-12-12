import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_devfest/misc/faq_page.dart';
import 'package:flutter_devfest/home_front.dart';
import 'package:flutter_devfest/misc/devfest.dart';
import 'package:flutter_devfest/misc/map_page.dart';
import 'package:flutter_devfest/speaker/speaker.dart';
import 'package:flutter_devfest/speaker/speaker_page.dart';
import 'package:flutter_devfest/sponsor/sponsor_page.dart';
import 'package:flutter_devfest/team/team_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'agenda/agenda_page.dart';

Future<void> main() async {
  // If you're running an application and need to access the binary messenger before `runApp()`
// has been called (for example, during plugin initialization), then you need to explicitly
// call the `WidgetsFlutterBinding.ensureInitialized()` first.
// If you're running a test, you can call the `TestWidgetsFlutterBinding.ensureInitialized()`
//  as the first line in your test's `main()` method to initialize the binding.)

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // isHomeOpen
      //     ? backgroundColor
      //     : drawerColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Color(0xFFF1F2F6),
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Color(0xFFF1F2F6),
    ),
  );

  //* Forcing only portrait orientation
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // * Get Shared Preference Instance for whole app
  Devfest.prefs = await SharedPreferences.getInstance();

  //* To check the app is running in debug and set some variables for that
  Devfest.checkDebug();

  runApp(MaterialApp(
    debugShowMaterialGrid: false,
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) => HomeFront(),
      '/agenda': (BuildContext context) => AgendaPage(),
      '/speaker': (BuildContext context) => SpeakerPage(),
      '/sponsor': (BuildContext context) => SponsorPage(),
      '/team': (BuildContext context) => TeamPage(),
      '/faq': (BuildContext context) => FaqPage(),
      //'/locate': (BuildContext context) => MapPage(),
    },
  ));
}
