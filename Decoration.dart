import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:aquos_services/Card.dart';
import 'package:aquos_services/Categories.dart';
import 'package:aquos_services/main.dart';




class Deco extends StatelessWidget {
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
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Decoration Services',
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
                  children: [Text("Name:- Amol Mahar",style: TextStyle(fontSize: 21,
                    fontWeight: FontWeight.bold,),),
                    SizedBox(height: 7),
                    Text("Field:- Decorator",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                  children: [Text("Name:- Vinay Zope",style: TextStyle(fontSize: 21,
                    fontWeight: FontWeight.bold,),),
                    SizedBox(height: 7),
                    Text("Field:- Decorator",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlqGyv8NkPmpi6xAV6VTSm_qR_MycdZ83fhg&usqp=CAU'),
            ),),]),),])
    );
  }

  void setState(Null Function() param0) {}
}