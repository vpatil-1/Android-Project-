import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:aquos_services/Card.dart';
import 'package:aquos_services/Categories.dart';
import 'package:aquos_services/main.dart';




class Boar extends StatelessWidget {
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
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Lodging-Boarding',
            textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),
            speed: Duration(milliseconds: 300))],
            isRepeatingAnimation: true,totalRepeatCount: 10),
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
                  children: [Text("Name:- Vijay Dhole",style: TextStyle(fontSize: 21,
                    fontWeight: FontWeight.bold,),),
                    SizedBox(height: 7),
                    Text("Field:- Laughing Boarding",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(height: 7),
                    Text("Address:-  Mumbai",style: TextStyle(fontSize: 12,
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
              backgroundImage: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHEA8PEBASEREQFhIPGREQEhYYFxUXFhYZGBkWGRMaKCggGBolGxgVIT0tJSorLi8uFyA/RDYvQystLi4BCgoKDg0OGBAQGC0lHh0rLS03Ly0tLS0tLy0tLTctLSs3LS0tLS0tLS0tLS0tLS0tKy0tNy0tLS0tLS0tNy0tN//AABEIAL4BCQMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABgECBAUHAwj/xAA+EAACAQMDAgQDBAcHBAMAAAABAgADBBEFEiEGMRMiQVEyYXEUFSOBQlJUYpGT0QckM5KhsfAWQ4LhU3Ki/8QAGAEBAQEBAQAAAAAAAAAAAAAAAAEDAgT/xAAeEQEAAwACAgMAAAAAAAAAAAAAAQIREiEDIjFhgf/aAAwDAQACEQMRAD8A7jERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAShIEEgTlfX3Wpvd1patil8L1VP+J7qp/U+fr9O/NrRWHVazaW7vf7R7G3uxRVd9uMo9ZefNnuo9UHr7+nbmbUa1OuqujBlYBgynIIPqDPnmnpt5UoPcrTJo02CNU9AT2H+38RJJ0P1jU0JhRrEtbMfmTSP6yj9XPcfn9cq+Wd9mlvHGdOzRLKFanXVXRgysAwZTkEH1Bl83YkREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBKEgQTicq6+61N9utLVvwvheqv/c/dX935+v0782tFYdVrNpOvutje7rS1b8L4Xqqf8T3VT+r8/X6d9D0h04+uVV35WgGCs3qTgnaPrtIz6Szpnpu41ndVPlt6TIGb9YllBRfng9/STW9uh03Y1KtKmpC3b0FQk4VadzWI5+nEwybe1m0zxjjVsNGt6VKwFIL8WKgXHdU2An5yAdR9MnTkpV6OWpPTosw7lGdCT9V8jH5ZkosOqs6dXuhbUwbZxarTFSpgpVKFsk855/0lum6t9/affnwUo/ZqZwEZmyDQqJyW9hOp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'),
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
                  children: [Text("Name:- Roshan Patel",style: TextStyle(fontSize: 21,
                    fontWeight: FontWeight.bold,),),
                    SizedBox(height: 7),
                    Text("Field:- Boarding",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(height: 7),
                    Text("Address:- Branches in Distincts",style: TextStyle(fontSize: 12,
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
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH6s8qzUGsNlxkG6AXhJC00cmot2be2Rb_gQ&usqp=CAU'),
            ),),]),),])
    );
  }

  void setState(Null Function() param0) {}
}