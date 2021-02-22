import 'package:flutter/material.dart';
import 'package:app_movil/Paginas/pageBuscar.dart';
import 'package:app_movil/Paginas/pageEmpleos.dart';
import 'package:app_movil/Paginas/pageMensaje.dart';
import 'package:app_movil/Paginas/pagePerfil.dart';
import 'package:app_movil/Paginas/pagePublicar.dart';
import 'package:app_movil/Paginas_complementarias/complementPagePerfil/edit_profile.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final int tabItem;

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (tabItem == 1)
      child = pageEmpleos();
    else if (tabItem == 2)
      child = pagePublicar();
    else if (tabItem == 3)
      child = pageBuscar();
    else if (tabItem == 4)
      child = pageMensaje();
    else if (tabItem == 5) child = pagePerfil();

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}
