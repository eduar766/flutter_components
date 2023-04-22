import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              //divisions: 10,
              activeColor: AppTheme.primary,
              value: _sliderValue, 
              onChanged: (value) {
                _sliderValue = value;
                setState(() {});
              }
            ),
            Image(
              image: const NetworkImage('https://www.pngmart.com/files/2/Batman-PNG-Transparent-Image.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            SizedBox(height: 100,)
          ],
        ),
      )
    );
  }
}