import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType extends StatelessWidget {
  const CustomCardType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Soy un titulo'),
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: Text('Cancelar')
                ),
                TextButton(
                  onPressed: () {}, 
                  child: Text('OK')
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}