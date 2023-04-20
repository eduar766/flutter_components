import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType(),
          SizedBox(height: 10,),
          CustomCardType2(name: 'Paisaje Montañoso',imageUrl: 'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',),
          SizedBox(height: 10,),
          CustomCardType2(name: 'Casa en las praderas', imageUrl: 'https://cdn.shopify.com/s/files/1/0253/6459/4751/articles/2021-fall-photography-hero_1200x.jpg?v=1632425852',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://assets.churchofjesuschrist.org/0d/85/0d854478366a16ee55554f047db40a6994bb2bf0/colorful_sunset_over_the_mountains.jpeg',),
          SizedBox(height: 100,),
        ],
      )
    );
  }
}