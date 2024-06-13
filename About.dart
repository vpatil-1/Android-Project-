import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:aquos_services/Card.dart';
import 'package:aquos_services/Categories.dart';
import 'package:aquos_services/main.dart';




class Abou extends StatelessWidget {
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
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('About us',
            textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),speed: Duration(milliseconds: 300))],
            isRepeatingAnimation: true,totalRepeatCount: 10),
        centerTitle: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)
        )),backgroundColor: Colors.deepPurpleAccent,
        elevation: 50.0,
      ),

      body: Container(height: 600,width: 600,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/kkkk.jpg'),fit: BoxFit.cover)),
        child: Padding(padding: EdgeInsets.all(8),
          child: Column(
            children: [
              CircleAvatar(backgroundColor: Colors.deepPurpleAccent,
              radius: 80,
              child: CircleAvatar(backgroundImage: AssetImage('image/aq.jpeg'),radius: 70,),),
              Padding(padding: EdgeInsets.all(20),child:
              Text("              AQUOS Services was established in year 2023 with a promise to "
                  "provide customers with a clean and safe environment in personal and commercial spaces. "
                  "In our organization, we are equipped with advanced technology and all the right tools,"
                  " equipment that helps us provide satisfactory results to the customers. "
                  "We serve as your reliable partner for Professional Home and Commercial Deep Cleaning services, "
                  "Paint services, Sanitization services, AC Services & Repair, Carpenters, Plumbing, Electricians"
                  " and Pest Control Services. We also provide Packers & Movers if you plan"
                  " to shift to a new place and you can avail all other services at new place."
                  " We specialise in making your windows shine with window cleaning services, "
                  "sparkling up the corners of your home, up-keep the condition of your mattresses, carpets."
                  " We also offer kitchen cleaning services, chair cleaning, and sofa dry cleaning services, providing "
                  "professional sanitization services.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)

        )],

          ),),

        ),




    );
  }

  void setState(Null Function() param0) {}
}