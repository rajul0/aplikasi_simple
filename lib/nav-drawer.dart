import 'package:flutter/material.dart';
import 'package:aplikasi_reward/LoginScreen.dart';
import 'package:aplikasi_reward/main_menu.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Center(
                child: Text(
              "Selamat Datang",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            )),
          ),
          Center(
            child: ListTile(
              title: Text('Logout'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: Text("Logout ?"),
                          content: Text("We really miss you if you out!"),
                          actions: [
                            FlatButton(
                              child: Text("No"),
                              onPressed: () => {
                                Navigator.pop(context),
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()))
                              },
                            ),
                            FlatButton(
                              child: Text("Yes"),
                              onPressed: () => {
                                Navigator.pop(context),
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()))
                              },
                            )
                          ],
                        ));
              },
            ),
          )
        ],
      ),
    );
  }
}
