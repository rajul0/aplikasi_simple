import 'dart:html';
import 'package:flutter/material.dart';
import 'package:aplikasi_reward/register.dart';
import 'package:aplikasi_reward/LoginScreen.dart';

class LoginPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      body: 
      Column(
      children: [
        Container(
          height: 200,width:size.width *1,),
       Center(
         child: Container(
           child: Text("IntroduceApp",
           style: TextStyle(
             fontSize: 30,
             fontWeight: FontWeight.bold,
           )))),
        SizedBox(height: size.height * 0.02),
        Text("Build your own App With Flutter"),
        SizedBox(height: size.height * 0.15,),
        Container(
          child: TextButton(
            onPressed: ()=>{
               Navigator.pop(context),
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> LoginScreen()))
            },
            child: Text("Login",
            style: TextStyle(color: Colors.black),),
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 1.5,color:Colors.black),
            borderRadius: BorderRadius.circular(10)
          ),
          width: size.width * 0.15,
        ),
        SizedBox(height: size.height * 0.02),
        Container(
          child: TextButton(
            onPressed: ()=>{
              Navigator.pop(context),
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> SignUp()))
            },
            child: Text("Sign Up",
            style: TextStyle(color: Colors.black),),
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 1.5,color:Colors.black),
            borderRadius: BorderRadius.circular(10),
            color: Colors.brown[100]
          ),
          width: size.width * 0.15,
        ),
      ]),
      
    );
  }
}

class LoginDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(child: Text('Selamat Datang')),
          ),
          Center(
            child: ListTile(
              title: Text('Login'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          )
        ],
      ),
    );
  }
}
