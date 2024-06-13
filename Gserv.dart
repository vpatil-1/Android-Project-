import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:aquos_services/Garden.dart';
import 'package:flutter/material.dart';


class Gser extends StatelessWidget {

  List<String> items1=<String>[
    "Vertical Garden" , "Vertical wall garden", "Green wall garden", "Hanging garden"
  ];
  List<String> items2=<String>[
    'Balcony Garden','Horticulture Service','Terrace Garden'
  ];
  List<String> items3=<String>[
    'Home - roof top garden','Roof top restaurants','Recreational roof garden for apartments'
  ];

  String dropdownValue2='Balcony Garden';

  String dropdownValue1='Vertical Garden';
  String dropdownValue3='Home - roof top garden';




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Garden Services',
            textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),
            speed: Duration(milliseconds: 300))],
            isRepeatingAnimation: true,totalRepeatCount: 10),
        centerTitle: true,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)
        )), backgroundColor: Colors.deepPurpleAccent,
        elevation: 50.0,
      ),
      body: ListView(children:[

        Container(height:90,width:300,
          child:
          Stack(children:[
            ListTile(
              tileColor: Colors.white,
              title: Column(
                  children: [Padding(padding: EdgeInsets.only(top: 10)),
                    Text("VERTICAL GARDENING SERVICES",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                    SizedBox(height: 2),
                    DropdownButton(
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                      hint: Text('Services'),
                      focusColor: Colors.white,
                      alignment: AlignmentDirectional.centerStart,

                      value: dropdownValue1,
                      onChanged: (newValue1){
                        setState(() {
                          dropdownValue1=newValue1!;
                        });
                      }, items:
                    items1.map((valueItem1){
                      return DropdownMenuItem(
                        value: valueItem1
                        ,child: Text(valueItem1),);
                    }).toList(),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Gard()));
                        }
                    ),
                  ]),

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
                    Text("HOME GARDENING SERVICES",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                    SizedBox(height: 2),
                    DropdownButton(
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                      hint: Text('Services'),
                      focusColor: Colors.white,
                      alignment: AlignmentDirectional.centerStart,

                      value: dropdownValue2,
                      onChanged: (newValue2){
                        setState(() {
                          dropdownValue2=newValue2!;
                        });
                      }, items:
                    items2.map((valueItem2){
                      return DropdownMenuItem(
                        value: valueItem2
                        ,child: Text(valueItem2),);
                    }).toList(),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Gard()));
                        }
                    ),
                  ]),

            ),
            Positioned(top:4,left: 3,
                child: CircleAvatar(backgroundColor: Colors.deepPurpleAccent,radius: 35,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToPC--AkG44S0uZ-dhr-ztEQe0_3l_WLsK1w&usqp=CAU'),
                )),]),),
        Divider(height: 8,thickness: 8,color: Colors.black38,),

        Container(height:90,width:300,
          child:
          Stack(children:[
            ListTile(
              tileColor: Colors.white,
              title: Column(
                  children: [Padding(padding: EdgeInsets.only(top: 10)),
                    Text("ROOF GARDENING SERVICES",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                    SizedBox(height: 2),
                    DropdownButton(
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                      hint: Text('Services'),
                      focusColor: Colors.white,
                      alignment: AlignmentDirectional.centerStart,

                      value: dropdownValue3,
                      onChanged: (newValue3){
                        setState(() {
                          dropdownValue3=newValue3!;
                        });
                      }, items:
                    items3.map((valueItem3){
                      return DropdownMenuItem(
                        value: valueItem3
                        ,child: Text(valueItem3),);
                    }).toList(),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Gard()));
                        }
                    ),
                  ]),

            ),
            Positioned(top:4,left: 3,
                child: CircleAvatar(backgroundColor: Colors.deepPurpleAccent,radius: 35,
                backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
                )),]),),





      ]),

    );
  }

  void setState(Null Function() param0) {}
}