
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';




class Emer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
          title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Emergency Services 24/7',
              textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),
              speed: Duration(milliseconds: 300))],
              isRepeatingAnimation: true,totalRepeatCount: 10),


          centerTitle: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)
    )),backgroundColor: Colors.deepPurpleAccent,
    elevation: 50.0,
    ),



      body:ListView(
        children: [Container(

          width: 300,height: 200,

          child: ListView(


            children: [
              CarouselSlider(
                items: [

                  //1st Image of Slider
                  Container(
                    margin: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [BoxShadow(offset: Offset.zero,color: Colors.black,blurRadius: 30)],
                      image: DecorationImage(
                        image: AssetImage('image/E24.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(

                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [BoxShadow(offset: Offset.zero,color: Colors.black,blurRadius: 30)],
                      image: DecorationImage(
                        image: AssetImage('image/emer.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ],
          )     ,),
          Divider(),

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
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUYLW7xiiN2hbMvEwqKZFCa50ZC-m9jkllEg&usqp=CAU'),
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
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmAtLHCVLtJlCZBYX7xIiQHCO3FltT_nOKUg&usqp=CAU'),
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
                  backgroundImage: NetworkImage('data:image/png;base64,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'),
                ),),]),),





        ],
      ),
    );
  }
}