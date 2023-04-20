import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
   
  const CustomCardType2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 25,
      shadowColor: AppTheme.primary.withOpacity(0.2),
      child: Column(
        children: [
          // Image(
          //   image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg')
          //   )
          const FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top:10, bottom: 10),
            child: Text('Hermoso paisaje')
          )
        ],
      ),
    );
  }
}