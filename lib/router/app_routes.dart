import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
    // MenuOptions(
    //     route: 'home',
    //     nombre: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home),
    MenuOptions(
        route: 'listview1',
        nombre: 'Listview tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.list_alt),
    MenuOptions(
        route: 'listview2',
        nombre: 'Listview tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list_outlined),
    MenuOptions(
        route: 'alertas',
        nombre: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOptions(
        route: 'card',
        nombre: 'Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOptions(
        route: 'avatar',
        nombre: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOptions(
        route: 'animated',
        nombre: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_fill_rounded),
    MenuOptions(
        route: 'inputs',
        nombre: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOptions(
        route: 'slider',
        nombre: 'Slider && Checks',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_outlined),
    MenuOptions(
        route: 'listviewbuilder',
        nombre: 'InfiniteScroll & Pull refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const Listview1Screen(),
  //   'listview2': (context) => const Listview2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
