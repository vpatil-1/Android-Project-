import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:aquos_services/Card.dart';
import 'package:aquos_services/Categories.dart';
import 'package:aquos_services/main.dart';




class Photo extends StatelessWidget {
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
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Photographer Page',
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
                  children: [Text("Name:- Ratik Patel",style: TextStyle(fontSize: 21,
                    fontWeight: FontWeight.bold,),),
                    SizedBox(height: 7),
                    Text("Field:- Video-Photo shooter",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
              backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
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
                      children: [Text("Name:- Gaurav Patil",style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.bold,),),
                        SizedBox(height: 7),
                        Text("Field:- All services",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 7),
                        Text("Address:- Available all over ",style: TextStyle(fontSize: 12,
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
                          children: [Text("Name:- Prashan Zope",style: TextStyle(fontSize: 21,
                            fontWeight: FontWeight.bold,),),
                            SizedBox(height: 7),
                            Text("Field:- Photographer",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                    ),),]),),]),

    );
  }

  void setState(Null Function() param0) {}
}