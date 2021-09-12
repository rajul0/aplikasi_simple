import 'package:aplikasi_reward/nav-drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
        endDrawer: DrawerWidget(),
        appBar: AppBar(
          title: Center(
              child: Text(
            'IntroduceApp',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          )),
          actions: [
            IconButton(
                icon: Icon(Icons.person),
                onPressed: () => {_scaffoldKey.currentState!.openEndDrawer()}),
          ],
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: size.height * 0.05),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3))
                        ],
                        color: Colors.white),
                    child: Image.asset("image/Web1.jpg"),
                    height: size.height * 0.3,
                    width: size.width * 0.7,
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: Text("Pratinjau Web 1"),
                        content: Text(
                            "Web ini adalah Web milik Sebuah Startup yang berasal dari Indonesia"),
                      ),
                    );
                  },
                ),
                SizedBox(height: size.height * 0.05),
                GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3))
                          ],
                          color: Colors.white),
                      child: Image.asset("image/Web2.jpg"),
                      height: size.height * 0.3,
                      width: size.width * 0.7,
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                title: Text("Pratinjau Web 2"),
                                content: Text(
                                    "Web ini adalah Web yang mencata pertumbuhan Bayi menuju Dewasa"),
                              ));
                    }),
              ],
            ),
          ),
        ));
  }
}
