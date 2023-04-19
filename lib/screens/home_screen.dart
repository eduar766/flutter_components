import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOpts = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components')
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOpts[index].name),
          leading: Icon(menuOpts[index].icon, color: AppTheme.primary,),
          onTap: () {
            Navigator.pushNamed(context, menuOpts[index].route);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOpts.length
      ),
    );
  }
}