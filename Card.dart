import 'package:flutter/material.dart';



class Car extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("AQUOS SERVICES"),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        centerTitle: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)
        )),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 50.0,
      ),

      body: Container(),
    );
  }
}