import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';


class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Eduardo',
      'last_name': 'Saavedra',
      'email': 'eduar766@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                 const CustomInputfield(labelText: 'Nombre', hintText: 'Nombre del usuario'),
                 const SizedBox(height: 30),
                 const CustomInputfield(labelText: 'Apellido', hintText: 'Apellido del usuario'),
                 const SizedBox(height: 30),
                 const CustomInputfield(labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress,),
                 const SizedBox(height: 30),
                 const CustomInputfield(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true,),
                 const SizedBox(height: 30),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar')
                    )
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }
                    print(formValues);
                  }, 
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

