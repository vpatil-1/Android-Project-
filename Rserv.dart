import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:aquos_services/Repair.dart';
import 'package:flutter/material.dart';


class Rser extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Repair Page',
            textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),
            speed: Duration(milliseconds: 300))],
            isRepeatingAnimation: true,totalRepeatCount: 10),
        centerTitle: true,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)
        )), backgroundColor: Colors.deepPurpleAccent,
        elevation: 50.0,
      ),
      body: ListView(children:[Container(height:90,width:300,
        child:
        Stack(children:[
          ListTile(
            tileColor: Colors.white,
            title: Column(
                children: [Padding(padding: EdgeInsets.only(top: 10)),
                  Text("Aqua repairing",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                  SizedBox(height: 2),

                ]),onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => Repai()));
          }

          ),
          Positioned(top:4,left: 3,
              child: CircleAvatar(backgroundColor: Colors.deepPurpleAccent,radius: 35,
              backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
              )),]),),
        Divider(height: 8,thickness: 8,color: Colors.black38,),

        Container(height:90,width:300,
          child:
          Stack(children:[
            ListTile(
              tileColor: Colors.white,
              title: Column(
                  children: [Padding(padding: EdgeInsets.only(top: 10)),
                    Text("Refrigerator repairing",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                    SizedBox(height: 2),

                  ]),onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Repai()));
            }

            ),
            Positioned(top:4,left: 3,
                child: CircleAvatar(backgroundColor: Colors.deepPurpleAccent,radius: 35,
                backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
                )),]),),
        Divider(height: 8,thickness: 8,color: Colors.black38,),

        Container(height:90,width:300,
          child:
          Stack(children:[
            ListTile(
              tileColor: Colors.white,
              title: Column(
                  children: [Padding(padding: EdgeInsets.only(top: 10)),
                    Text("TV Repairing",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                    SizedBox(height: 2),

                  ]),onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Repai()));
            }

            ),
            Positioned(top:4,left: 3,
                child: CircleAvatar(backgroundColor: Colors.deepPurpleAccent,radius: 35,)),]),),
        Divider(height: 8,thickness: 8,color: Colors.black38,),

        Container(height:90,width:300,
          child:
          Stack(children:[
            ListTile(
              tileColor: Colors.white,
              title: Column(
                  children: [Padding(padding: EdgeInsets.only(top: 10)),
                    Text("Other Home appliences ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                    SizedBox(height: 2),

                  ]),onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Repai()));
            }

            ),
            Positioned(top:4,left: 3,
                child: CircleAvatar(backgroundColor: Colors.deepPurpleAccent,radius: 35,
                backgroundImage: NetworkImage('data:image/jpeg;base64,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'),)),]),),





      ]),

    );
  }

  void setState(Null Function() param0) {}
}