import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            //divisions: 10,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnable 
              ? (value) {
                _sliderValue = value;
                setState(() {});
              }
              : null
          ),
          Checkbox(
            value: _sliderEnable, 
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            }
          ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider con CheckboxListTile'),
            value: _sliderEnable, 
            onChanged: (value) => setState(() { _sliderEnable = value ?? true;}),
          ),
          Switch(
            value: _sliderEnable, 
            onChanged: (value) => setState(() { _sliderEnable = value;}),
          ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider con SwitchListTile'),
            value: _sliderEnable, 
            onChanged: (value) => setState(() { _sliderEnable = value;}),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://www.pngmart.com/files/2/Batman-PNG-Transparent-Image.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(height: 100,),
          const AboutListTile()
        ],
      )
    );
  }
}