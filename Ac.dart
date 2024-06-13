import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:aquos_services/Card.dart';
import 'package:aquos_services/Categories.dart';
import 'package:aquos_services/main.dart';
import 'package:animated_text_kit/animated_text_kit.dart';




class Acc extends StatelessWidget {
  int _counter = 0;
  int _currentindex=0;


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }



  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('AC Services',
            textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),
            speed: Duration(milliseconds: 300))],
            isRepeatingAnimation: true,totalRepeatCount: 10),


        centerTitle: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)
        )),backgroundColor: Colors.deepPurpleAccent,
        elevation: 50.0,
      ),


      body:  ListView(
        children: [
        Container(alignment: Alignment.center,
        height: 200,
        width: 350,


        child:Stack(children:[
          Container(
              alignment: Alignment.center,
              height:163,width: 326,
              decoration: BoxDecoration(
                color: Colors.white30,borderRadius: BorderRadius.only(topLeft: Radius.circular(25),

                  bottomRight: Radius.circular(25)),border: Border.all(color: Colors.black,width: 4,style: BorderStyle.solid),
              ),
              padding: EdgeInsets.only(left: 110,top: 18),

              child:Column(
                  children: [Text("Name:- Gana Ingale",style: TextStyle(fontSize: 21,
                    fontWeight: FontWeight.bold,),),
                    SizedBox(height: 7),
                    Text("Field:- AC Repairer",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(height: 7),
                    Text("Address:- Available all over",style: TextStyle(fontSize: 12,
                        fontWeight: FontWeight.bold)),
                    Padding(padding: EdgeInsets.only(left: 150,top: 10)),
                    Row(
                        children: [
                          Padding(padding: EdgeInsets.all(3)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.chat),color: Colors.green[400]),
                          Padding(padding: EdgeInsets.all(12)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.alternate_email),color: Colors.redAccent,),
                          Padding(padding: EdgeInsets.all(17)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.call),color: Colors.green,),
                        ])])
          ),
          Positioned(right: 207,top: 18,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 52,
              backgroundImage: NetworkImage('data:image/png;base64,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'),
            ),),]),),
      Container(alignment: Alignment.center,
        height: 200,
        width: 350,


        child:Stack(children:[
          Container(
              alignment: Alignment.center,
              height:163,width: 326,
              decoration: BoxDecoration(
                color: Colors.white30,borderRadius: BorderRadius.only(topLeft: Radius.circular(25),

                  bottomRight: Radius.circular(25)),border: Border.all(color: Colors.black,width: 4,style: BorderStyle.solid),
              ),
              padding: EdgeInsets.only(left: 110,top: 18),

              child:Column(
                  children: [Text("Name:- Vivek Talele",style: TextStyle(fontSize: 21,
                    fontWeight: FontWeight.bold,),),
                    SizedBox(height: 7),
                    Text("Field:- AC Repairer",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(height: 7),
                    Text("Address:- Available all over Mumbai",style: TextStyle(fontSize: 12,
                        fontWeight: FontWeight.bold)),
                    Padding(padding: EdgeInsets.only(left: 150,top: 10)),
                    Row(
                        children: [
                          Padding(padding: EdgeInsets.all(3)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.chat),color: Colors.green[400]),
                          Padding(padding: EdgeInsets.all(12)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.alternate_email),color: Colors.redAccent,),
                          Padding(padding: EdgeInsets.all(17)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.call),color: Colors.green,),
                        ])])
          ),
          Positioned(right: 207,top: 18,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 52,
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLN6sFsil9vfv5ydVAGGgBGtWNXhJp4lSrZQ&usqp=CAU'),
            ),),]),),])
    );
  }

  void setState(Null Function() param0) {}
}