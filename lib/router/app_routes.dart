import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute  = 'home';

  static final menuOptions = <MenuOption>[
    //MenuOption(route: 'home',  name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_outlined),
    MenuOption(route: 'listview1',  name: 'ListView Tipo 1', screen: const ListView1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2',  name: 'ListView Tipo 2', screen: const ListView2Screen(), icon: Icons.list),
    MenuOption(route: 'alert',  name: 'Alert Screen', screen: const AlertScreen(), icon: Icons.notification_important_outlined),
    MenuOption(route: 'card',  name: 'Card Screen', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar',  name: 'Circle Avatar Screen', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated',  name: 'Animated Container Screen', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs',  name: 'Text Inputs Screen', screen: const InputScreen(), icon: Icons.input_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext) > appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen() });

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen });
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(), 
  //   'listview2': (BuildContext context) => const ListView2Screen(), 
  //   'alert': (BuildContext context) => const AlertScreen(), 
  //   'card': (BuildContext context) => const CardScreen(), 
  // };

  static Route<dynamic> onGenerateRoute( RouteSettings settings) {
    print(settings);

    return MaterialPageRoute(builder: (context) => const AlertScreen(),);
  }

}