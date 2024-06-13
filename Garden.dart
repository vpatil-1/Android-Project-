import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';




class Gard extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Garden Clean page',
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
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0hUZb7lC74jLeYoQK0F2ccyHR8Cth0q1O7A&usqp=CAU'),
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
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToPC--AkG44S0uZ-dhr-ztEQe0_3l_WLsK1w&usqp=CAU'),
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
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9NDt0VK7HWLwMjhoF3c7RLcnZDVH6Xq0Fwg&usqp=CAU'),
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
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSxli0N1P0-_n8wnkqO7bDSouDWYEutEnf-A&usqp=CAU'),
                ),),]),),





        ],),
    );
  }



}