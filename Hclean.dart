import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:aquos_services/Home.dart';
import 'package:flutter/material.dart';


class Hcl extends StatelessWidget {
  List<String> items=<String>[
    'Wall & Ceiling Dusting','Furniture Dusting & Wiping',
    'Windows, Fans, Switchboards Cleaning','General Cleaning'

  ];
  List<String> items1=<String>[
    'Kitchen Tops & Tiles','Kitchen Cabinets','Appliances & Chimneys'
  ];
  List<String> items2=<String>[
   'Mattress & Curtain Vacuuming','Air Conditioners','Tiles Scrubbing','Mirrors, Showers, Taps, Shelves','Wash Basin, Bath Tubs, Exhaust'
  ];
  List<String> items3=<String>[
    'Sofa, Chair & Carpet Vacuuming','Hall Cabinets','Balcony & Balcony Grills'
  ];

  String dropdownValue2='Mattress & Curtain Vacuuming';
  String dropdownValue='Wall & Ceiling Dusting';
  String dropdownValue1='Kitchen Tops & Tiles';
  String dropdownValue3='Sofa, Chair & Carpet Vacuuming';




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Home Clean',
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
                  Text("Full Home Cleaning Packages",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                  SizedBox(height: 2),
                  DropdownButton(
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    hint: Text('Services'),
                    focusColor: Colors.white,
                    alignment: AlignmentDirectional.centerStart,

                    value: dropdownValue,
                    onChanged: (newValue){
                      setState(() {
                        dropdownValue=newValue!;
                      });
                    }, items:
                  items.map((valueItem){
                    return DropdownMenuItem(
                      value: valueItem
                      ,child: Text(valueItem),);
                  }).toList(),onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Hom()));
                  },),
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
                    Text("Kitchen",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
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
                    }).toList(),onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Hom()));
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
                    Text("Bedrooms",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
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
                              builder: (context) => Hom()));
                        }
                    ),
                  ]),

            ),
            Positioned(top:4,left: 3,
                child: CircleAvatar(backgroundColor: Colors.deepPurpleAccent,radius: 35,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7LXMura-xlDD_ZgOTj7WghzwH_PsUVtGqAw&usqp=CAU'),
                )),]),),
        Divider(height: 8,thickness: 8,color: Colors.black38,),

        Container(height:90,width:300,
          child:
          Stack(children:[
            ListTile(
              tileColor: Colors.white,
              title: Column(
                  children: [Padding(padding: EdgeInsets.only(top: 10)),
                    Text("Hall & Living Room",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
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
                    }).toList(),onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Hom()));
                    }),
                  ]),

            ),
            Positioned(top:4,left: 3,
                child: CircleAvatar(backgroundColor: Colors.deepPurpleAccent,radius: 35,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAUdbnbB0gjLsdFWOC8kaSjr0R4E1ZuY01iQ&usqp=CAU'),
                )),]),),





      ]),

    );
  }

  void setState(Null Function() param0) {}
}