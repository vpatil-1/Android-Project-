import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';




class Wash extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Washing Page',
            textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),
            speed: Duration(milliseconds: 300))],
            isRepeatingAnimation: true,totalRepeatCount: 10),
        centerTitle: true,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)
        )),backgroundColor: Colors.deepPurpleAccent,
        elevation: 50.0,
      ),


      body: ListView(
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
                      children: [Text("Name:- Vivek Talele",style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.bold,),),
                        SizedBox(height: 7),
                        Text("Field:- Car Mechanical",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                    color: Colors.amber[300],borderRadius: BorderRadius.only(topLeft: Radius.circular(25),

                      bottomRight: Radius.circular(25)),
                    boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10, 20),blurRadius: 40)],
                    border: Border.all(color: Colors.black,width: 4,style: BorderStyle.solid),
                  ),
                  padding: EdgeInsets.only(left: 110,top: 18),

                  child:Column(
                      children: [Text("Name:- Vivek Talele",style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.bold,),),
                        SizedBox(height: 7),
                        Text("Field:- Car Mechanical",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                      children: [Text("Name:- Vivek Talele",style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.bold,),),
                        SizedBox(height: 7),
                        Text("Field:- Car Mechanical",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ9l1odYEtil9kK-H_7z5HZCS0MTRRU8ONdQ&usqp=CAU'),
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
                        Text("Field:- Car Mechanical",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlBDDUcVVQAlkRYlE8m78gVW0QIorjQm5dYg&usqp=CAU'),
                ),),]),),





        ],),
    );
  }



}