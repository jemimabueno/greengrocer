import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/components/custom_text_field.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: Column(
        children: [
        Expanded(
          child: Center(
            child: Text('Cadastro',
            style: TextStyle(
              color: Colors.white,
              fontSize:35,),),
          ),
        ),
        //Formulário
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
          vertical: 40),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(45),
            )
          ),
          child: Column(children: [ 
            CustomTextField(icon: Icons.email, label: 'email'),      
            CustomTextField(icon: Icons.lock, label: 'Senha'),
            CustomTextField(icon: Icons.person, label: 'Nome'),
            CustomTextField(icon: Icons.phone, label: 'Celular'),
            CustomTextField(icon: Icons.file_copy, label: 'CPF'),
          ],),
        ),

      ],),
    );
  }
}