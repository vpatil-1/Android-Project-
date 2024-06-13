
import 'package:aquos_services/Card.dart';

import 'package:aquos_services/feedback.dart';

import 'package:aquos_services/main.dart';
import 'package:flutter/material.dart';
import 'package:aquos_services/Mechanical.dart';
import 'package:aquos_services/Ac.dart';
import 'package:aquos_services/Painting.dart';
import 'package:aquos_services/Photographer.dart';
import 'package:aquos_services/Plumber.dart';
import 'package:aquos_services/Hall.dart';
import 'package:aquos_services/Electrician.dart';
import 'package:aquos_services/Emergency.dart';
import 'package:aquos_services/Boarding.dart';
import 'package:aquos_services/Decoration.dart';
import 'package:animated_text_kit/animated_text_kit.dart';





class Cate extends StatelessWidget {
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
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Categories Page',
            textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),speed: Duration(milliseconds: 300))],
            isRepeatingAnimation: true,totalRepeatCount: 10),
        centerTitle: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)
        )),backgroundColor: Colors.deepPurpleAccent,
        elevation: 50.0,
      ),

      body: ListView(
        children:[Container(height: 50,color: Colors.white,
        padding: EdgeInsets.only(left: 20,top: 10),
          child: Text("Discover",style:TextStyle(fontSize:40,fontWeight: FontWeight.bold,)),
        ),
          Text("your service here........",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold,),
            textAlign: TextAlign.center,),
          Container(height: 900,
          child: GridView.extent(
            scrollDirection: Axis.vertical,
            primary: false,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 200.0,
            children: <Widget>[
              GestureDetector(child:
              Container(

                padding: const EdgeInsets.all(8),
                child:  Container(

                  width:500,

                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                  ),margin: EdgeInsets.only(top: 116,),child: Text('Mechanical',
                  style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
                ),   decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/mecha.jpeg'),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(20.0),),
                boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,20),blurRadius: 30)],

              ),),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Mecha()));
              },
              ),
              GestureDetector(child:
              Container(
                padding: const EdgeInsets.all(8),
                child:  Container(

                  width:500,

                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                  ),margin: EdgeInsets.only(top: 116,),child: Text('Plumber',
                  style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
                ),   decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/plumb.jpeg'),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(20.0),),
                boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,20),blurRadius: 30)],

              ),
              ),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Plum()));
              },
              ),

              GestureDetector(child:
              Container(
                padding: const EdgeInsets.all(8),
                child:  Container(

                  width:500,

                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                  ),margin: EdgeInsets.only(top: 116,),child: Text('Painter',
                  style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
                ),   decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/paint.jpeg'),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(20.0),),
                boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,20),blurRadius: 30)],

              ),
              ),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Paint()));
              },
              ),
              GestureDetector(child:
              Container(
                padding: const EdgeInsets.all(8),
                child:  Container(

                  width:500,

                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                  ),margin: EdgeInsets.only(top: 116,),child: Text('AC Services',
                  style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
                ),   decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/ac.jpeg'),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(20.0),),
                boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,20),blurRadius: 30)],

              ),
              ),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Acc()));
              },
              ),
              GestureDetector(child:
              Container(
                padding: const EdgeInsets.all(8),
                child:  Container(

                  width:500,

                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                  ),margin: EdgeInsets.only(top: 116,),child: Text('Electrician',
                  style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
                ),   decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/ele.jpeg'),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(20.0),),
                boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,20),blurRadius: 30)],

              ),
              ),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Elect()));
              },
              ),
              GestureDetector(child:
              Container(
                padding: const EdgeInsets.all(8),
                child:  Container(

                  width:500,

                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                  ),margin: EdgeInsets.only(top: 116,),child: Text('Hall Services',
                  style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
                ),   decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/hall.jpeg'),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(20.0),),
                boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,20),blurRadius: 30)],

              ),
              ),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Hal()));
              },
              ),
              GestureDetector(child:
              Container(
                padding: const EdgeInsets.all(8),
                child:  Container(

                  width:500,

                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                  ),margin: EdgeInsets.only(top: 116,),child: Text('Decoration',
                  style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
                ),   decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/deco.jpeg'),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(20.0),),
                boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,20),blurRadius: 30)],

              ),
              ),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Deco()));
              },
              ),
              GestureDetector(child:
              Container(
                padding: const EdgeInsets.all(8),
                child:  Container(

                  width:500,

                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                  ),margin: EdgeInsets.only(top: 116,),child: Text('Photographer',
                  style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
                ),   decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/photo.jpeg'),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(20.0),),
                boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,20),blurRadius: 30)],

              ),
              ),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Photo()));
              },
              ),
              GestureDetector(child:
              Container(
                padding: const EdgeInsets.all(8),
                child:  Container(

                  width:500,

                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                  ),margin: EdgeInsets.only(top: 116,),child: Text('Loding-Boarding',
                  style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
                ),   decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/board.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(20.0),),
                boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,20),blurRadius: 30)],

              ),
              ),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Boar()));
              },
              ),
              GestureDetector(child:
              Container(
                padding: const EdgeInsets.all(8),
                child:  Container(

                  width:500,

                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                  ),margin: EdgeInsets.only(top: 116,),child: Text('Emergency',
                  style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
                ),   decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/emer.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(20.0),),
                boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,20),blurRadius: 30)],

              ),
              ),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Emer()));
              },
              ),
            ],
          )),],),
      bottomNavigationBar: SizedBox(
          height: 74,
          child:BottomNavigationBar(
            elevation: 30,
            selectedFontSize: 20,
            showSelectedLabels: true,
            selectedLabelStyle: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 12),
            unselectedItemColor: Colors.white,
            currentIndex: _currentindex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.deepPurpleAccent,
            selectedItemColor: Colors.black,
            items: [BottomNavigationBarItem(icon:IconButton(icon: Icon(Icons.home),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage(title: 'Home',)));
              },),label: 'Home'),
              BottomNavigationBarItem(icon:IconButton(icon: Icon(Icons.grid_4x4),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Cate()));
                },),label: 'Categories'),
              BottomNavigationBarItem(icon:IconButton(icon: Icon(Icons.shopping_bag_outlined),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Car()));
                },),label: 'Card'),
              BottomNavigationBarItem(icon:IconButton(icon: Icon(Icons.person),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Feedbackss()));
                },),label: 'Feedback'),
            ],
            onTap: (int itemindex)
            {
              setState(() {
                _currentindex=itemindex;
              });
            },)),

    );
  }

  void setState(Null Function() param0) {}
}