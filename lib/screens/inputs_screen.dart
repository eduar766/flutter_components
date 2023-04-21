import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';


class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
               CustomInputfield(labelText: 'Nombre', hintText: 'Nombre del usuario'),
               SizedBox(height: 30),
               CustomInputfield(labelText: 'Apellido', hintText: 'Apellido del usuario'),
               SizedBox(height: 30),
               CustomInputfield(labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress,),
               SizedBox(height: 30),
               CustomInputfield(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true,),
               SizedBox(height: 30),
            ],
          ),
        ),
      )
    );
  }
}

