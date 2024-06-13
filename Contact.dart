import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';



class Cont extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
          title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Contact us',
              textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),
              speed: Duration(milliseconds: 300))],
              isRepeatingAnimation: true,totalRepeatCount: 10),
        centerTitle: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)
        )),
        backgroundColor: Colors.deepPurple,
        elevation: 50.0,
      ),

      body: Center(

        child: Card(
          elevation: 50,
            shadowColor: Colors.black,
          color: Colors.orange.shade100,
          child: SizedBox(
            width: 300,height: 500,
            child: Padding(padding: EdgeInsets.all(8),
            child: Column(children: [
              CircleAvatar(backgroundColor: Colors.deepPurple.shade400,
              radius: 90,
              child: CircleAvatar(
                backgroundImage: AssetImage("image/veda.jpeg"),
                radius: 80,
              ),),
              SizedBox(height: 15,),
              Text('Vedant Patil',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 10,),
              Text('Software Developer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              Divider(height: 10,),
              SizedBox(height: 15,),
              Row(
                children: [
                  Icon(Icons.important_devices),Text('  Vedant Kishor Patil',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)]),
              Divider(height: 10,),SizedBox(height: 7,),
              Row(
                  children: [
                    Icon(Icons.home),Text('  Address: Pimpalgaon Khurd',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))]),
              Divider(height: 10,),SizedBox(height: 7,),
              Row(
                  children: [
                    Icon(Icons.email_outlined),Text('  Email: pvedant971@gmail.com ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))]),
              Divider(height: 10,),SizedBox(height: 7,),
              Row(
                  children: [
                    Icon(Icons.call),Text('  Contact No: 7498289856',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))]),
              Divider(height: 10,),

            ],),

            ),
          ),
        )
      ),



    );
  }

  void setState(Null Function() param0) {}
}