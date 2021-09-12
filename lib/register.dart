import 'package:flutter/material.dart';
import 'package:aplikasi_reward/LoginScreen.dart';

class SignUp extends StatefulWidget {
   _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool _isPasswordHide = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    final _nameField = TextFormField(
      style: TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      
      validator: (String? value){
        if(value == null){
          return 'Nama tidak boleh kosong';
        }
      },
      decoration: InputDecoration(
        errorStyle: TextStyle(color: Colors.red),
        hintText: 'Nama',
        hintStyle: TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black)
        )
      ),
    );

    final _emailField = TextFormField(
      style:TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      validator: (String? value){
        if(value == null){
          return 'Email tidak boleh kosong';
        }
      },
      decoration: const InputDecoration(
        errorStyle: TextStyle(color: Colors.red),
        hintText: 'Email',
        hintStyle: TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black)
        )
      ),
      keyboardType: TextInputType.emailAddress,
    );

    final _passwordField = TextFormField(
      style: const TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      validator: (String? value){
        if(value == null){
          return 'Password tidak boleh kosong';
        }
      },
      obscureText: true,
      decoration: InputDecoration(
        errorStyle: TextStyle(color: Colors.red),
        hintText: 'Password',
        hintStyle: TextStyle(color: Colors.black),
        suffixIcon: GestureDetector(
          child: Icon(
         _isPasswordHide ? Icons.visibility : Icons.visibility_off, color: Colors.white
          ),
          onTap: (){
            setState(() {
              _isPasswordHide = !_isPasswordHide;
            });
          }
          ),
       
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black
          )
        )
      ),
    );

    final _registerButton = ElevatedButton(
      onPressed: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()))

      ,
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15)
      ),
      child:Text("Daftar", style: TextStyle(color: Colors.black, fontSize: 17.0)),
    );
   return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("IntroduceApp", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0)),
              SizedBox(height: size.height * 0.05),
              Text('Silakan daftar dengan email anda', style: TextStyle(color: Colors.black)),
              SizedBox(height: size.height * 0.05),
              _nameField,
              SizedBox(height:size.height * 0.05),
              _emailField,
              SizedBox(height: size.height * 0.05),
              _passwordField,
              SizedBox(height: size.height * 0.05),
              _registerButton,
              SizedBox(height: size.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Sudah punya akun?",
                  style: TextStyle(color: Colors.black)),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen())),
                    child: const Text("Login", style: TextStyle(color: Colors.black, decoration: TextDecoration.underline)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
