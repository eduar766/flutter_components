import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOpts = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOpts[index].name),
          leading: Icon(menuOpts[index].icon, color: Colors.indigo,),
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