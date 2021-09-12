import 'package:aplikasi_reward/login_page.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_reward/login_page.dart';
import 'package:aplikasi_reward/register.dart';
import 'package:aplikasi_reward/main_menu.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordHide = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _emailField = TextFormField(
      controller: _emailController,
      style: const TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      validator: (String? value) {
        if (value == null) {
          return 'Email tidak boleh kosong';
        }
      },
      decoration: const InputDecoration(
          errorStyle: TextStyle(color: Colors.red),
          hintText: 'Email',
          hintStyle: TextStyle(color: Colors.black),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
      keyboardType: TextInputType.emailAddress,
    );

    final _passwordField = TextFormField(
      controller: _passwordController,
      style: const TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      validator: (String? value) {
        if (value == null) {
          return 'Password tidak boleh kosong';
        }
      },
      obscureText: _isPasswordHide,
      decoration: InputDecoration(
          errorStyle: const TextStyle(color: Colors.red),
          hintText: 'Password',
          hintStyle: const TextStyle(color: Colors.black),
          suffixIcon: GestureDetector(
            child: Icon(
                _isPasswordHide ? Icons.visibility : Icons.visibility_off,
                color: Colors.black),
            onTap: () {
              setState(() {
                _isPasswordHide = !_isPasswordHide;
              });
            },
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black))),
    );

    final _loginButton = ElevatedButton(
      onPressed: () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage())),
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15)),
      child: const Text("Login",
          style: TextStyle(color: Colors.black, fontSize: 17.0)),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("IntroduceApp",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0)),
              const SizedBox(height: 10.0),
              const Text('Hai! Welcome', style: TextStyle(color: Colors.black)),
              const SizedBox(height: 40.0),
              _emailField,
              const SizedBox(height: 30.0),
              _passwordField,
              const SizedBox(height: 30.0),
              _loginButton,
              const SizedBox(height: 10),
              const Text("atau masuk dengan :",
                  style: TextStyle(color: Colors.black)),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Image.asset("image/google.png", width: 35, height: 35),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Belum punya akun?",
                      style: TextStyle(color: Colors.black)),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignUp())),
                    child: const Text("Daftar",
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline)),
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
