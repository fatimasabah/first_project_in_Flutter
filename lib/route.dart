import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_first_app/mobile/about.dart';
import 'package:my_first_app/mobile/bolg.dart';
import 'package:my_first_app/mobile/contact.dart';
import 'package:my_first_app/mobile/landing_page.dart';
import 'package:my_first_app/mobile/works.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              return LandingPage();
            },
          ),
        );
      case '/contact':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              return contact();
            },
          ),
          settings: settings,
        );
      case '/About':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, Constraints) {
              return About();
            },
          ),
          settings: settings,
        );
      case '/Blog':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, Constraints) {
              return Blog();
            },
          ),
          settings: settings,
        );
      case '/Works':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, Constraints) {
              return Works();
            },
          ),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("not found  this page : ${settings.name}"),
            ),
          ),
        );
    }
  }
}
