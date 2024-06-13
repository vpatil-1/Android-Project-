
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:aquos_services/About.dart';
import 'package:aquos_services/Hclean.dart';
import 'package:aquos_services/Contact.dart';
import 'package:aquos_services/Gserv.dart';
import 'package:aquos_services/Rserv.dart';


import 'package:aquos_services/Use.dart';
import 'package:aquos_services/feedback.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:aquos_services/Mechanical.dart';
import 'package:aquos_services/Ac.dart';
import 'package:aquos_services/Painting.dart';
import 'package:aquos_services/Card.dart';
import 'package:aquos_services/Plumber.dart';

import 'package:aquos_services/Electrician.dart';
import 'package:aquos_services/Emergency.dart';
import 'package:aquos_services/Wserv.dart';
import 'package:aquos_services/Categories.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => MyHomePage(title: 'Home Page'),

      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('image/Services.gif')

      ),backgroundColor: Colors.black,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _currentindex=0;
  TextEditingController textController=TextEditingController();





  

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('AQUOS SERVICES',
            textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),speed: Duration(milliseconds: 300))],
          isRepeatingAnimation: true,totalRepeatCount: 10),
        centerTitle: true,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)
        )),backgroundColor: Colors.deepPurpleAccent,
        elevation: 50.0,
        ),

      drawer:Drawer(backgroundColor: Colors.deepPurple[50],
        child: Column(mainAxisAlignment: MainAxisAlignment.start,children: [
        Container(
          width: double.infinity,

          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/qqq.jpg'),fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                width: 100,height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("image/aq.jpeg")),
                ),
              ),
              Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
                  color: Colors.white),)
            ],
          ),
        ),

        ListTile(title: AnimatedTextKit(animatedTexts: [TyperAnimatedText('About us',
            textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black,),
            )],
            isRepeatingAnimation: true,totalRepeatCount: 50),leading: Icon(Icons.info_outline),
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Abou()));
          },),
        Divider(color: Colors.deepPurple,thickness: 3,),
        ListTile(title: AnimatedTextKit(animatedTexts: [TyperAnimatedText('Categories',textAlign: TextAlign.left,
          textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black,),
        )],
            isRepeatingAnimation: true,totalRepeatCount: 50),leading: Icon(Icons.apps_outage_sharp),
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Cate()));
          },),
        Divider(color: Colors.deepPurple,thickness: 3),
        ListTile(title: AnimatedTextKit(animatedTexts: [TyperAnimatedText('Emergency Services',
          textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black,),
        )],
            isRepeatingAnimation: true,totalRepeatCount: 50),leading: Icon(Icons.emergency_outlined),
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Emer()));
          },),
        Divider(color: Colors.deepPurple,thickness: 3),
        ListTile(title: AnimatedTextKit(animatedTexts: [TyperAnimatedText('Contact ous',
          textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black,),
        )],
            isRepeatingAnimation: true,totalRepeatCount: 50),leading: Icon(Icons.call),
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Cont()));
          },),
        Divider(color: Colors.deepPurple,thickness: 3),

        ListTile(title: AnimatedTextKit(animatedTexts: [TyperAnimatedText('Terms of use',
          textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black,),
        )],
            isRepeatingAnimation: true,totalRepeatCount: 50),leading: Icon(Icons.home),
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Term()));
          },),
        Divider(color: Colors.deepPurple,thickness: 3,),

      ],),),

      body:
        ListView(
          children:[Padding(padding: EdgeInsets.all(5.0)),
            Container(height: 50,
              child:Padding(padding:EdgeInsets.all(4.0),
            child:
            AnimSearchBar(width: 600, textController: textController, onSuffixTap: (){
            setState(() {
              textController.clear();
            });
            }, color: Colors.redAccent,helpText: "Search service here",autoFocus: true,closeSearchOnSuffixTap: true,
                animationDurationInMilli: 2000,rtl: true, onSubmitted: (String ) {  },),)),

        Container(height: 750,
          color: Colors.white,
          child:  ListView(

            children: [
              CarouselSlider(
                items: [
                  //1st Image of Slider
                  Container(
                    margin: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,20),blurRadius: 20)],
                      image: DecorationImage(
                        image: AssetImage('image/f.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,10),blurRadius: 20)],
                      image: DecorationImage(
                        image: AssetImage('image/a.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,15),blurRadius: 20)],
                      image: DecorationImage(
                        image: AssetImage('image/c.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,15),blurRadius: 20)],
                      image: DecorationImage(
                        image: AssetImage('image/d.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //5th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [BoxShadow(color: Colors.black,offset: Offset(10,15),blurRadius: 20)],
                      image: DecorationImage(
                        image: AssetImage('image/e.jpeg'),
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

              Container(
                width: 300,height: 40,
                color: Colors.white,
                child: ListView(
                  padding: EdgeInsets.all(8),
                  children: [Container(width:300,

                    decoration: BoxDecoration(color: Colors.white38),child: Text('Our special Festival services..',
                      style: TextStyle(fontSize: 16,color: Colors.deepPurple,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,),
                  ),],
                ), ),

              Container(height: 200,
                padding: EdgeInsets.only(left: 10),
                child: ListView(scrollDirection: Axis.horizontal,
                  children: [
                    Stack(children:[
                      GestureDetector(child:
                      Container(height: 185,width: 120,

                          decoration: BoxDecoration(gradient:LinearGradient(colors: [Colors.redAccent,Colors.amberAccent],
                              begin: Alignment.topRight,end: Alignment.bottomLeft),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(25)),)),onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Hcl()));
                      },
                      ),

                      Positioned(right:4,top:7,
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline,color: Colors.white,))),
                      Positioned(top: 100,left:5,child:
                      Text('Home Clean',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),textAlign: TextAlign.center,)
                      )]),
                    SizedBox(width: 10,height: 170,),


                    Stack(children:[
                      GestureDetector(child:
                      Container(height: 185,width: 120,

                          decoration: BoxDecoration(gradient:LinearGradient(colors: [Colors.deepPurple,Colors.purple],
                              begin: Alignment.topRight,end: Alignment.bottomLeft),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
                          )),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Gser()));
                        },
                      ),
                      Positioned(right:4,top:7,child: IconButton(onPressed: (){},
                          icon: Icon(Icons.add_circle_outline,color: Colors.white,))),
                      Positioned(top: 100,left:5,child:
                      Text('Garden Clean',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),textAlign: TextAlign.center,)
                      )]),SizedBox(width: 10,height: 170,),

                    Stack(children:[
                      GestureDetector(child:
                      Container(height: 185,width: 120,

                          decoration: BoxDecoration(gradient:LinearGradient(colors: [Colors.pinkAccent,Colors.amberAccent],
                              begin: Alignment.topRight,end: Alignment.bottomLeft),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
                          )),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Wser()));
                        },
                      ),
                      Positioned(right:4,top:7,child: IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline,color: Colors.white,))),
                      Positioned(top: 100,left:5,child:
                      Text('Washing',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),textAlign: TextAlign.center,)
                      )]),
                    SizedBox(height: 185,width: 10,),


                    Stack(children:[
                      GestureDetector(child:
                      Container(height: 185,width: 120,

                          decoration: BoxDecoration(gradient:LinearGradient(colors: [Colors.deepPurple,Colors.purple],
                              begin: Alignment.topRight,end: Alignment.bottomLeft),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
                          )),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Rser()));
                        },
                      ),
                      Positioned(right:4,top:7,child: IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline,color: Colors.white,))),
                      Positioned(top: 100,left:5,child:
                      Text('Repairing',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),textAlign: TextAlign.center,)
                      )]),

                  ],
                ),
              ),



          Container(height: 800,
              color: Colors.white,
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
                      ),margin: EdgeInsets.only(top: 116,),child:AnimatedTextKit(animatedTexts: [TyperAnimatedText('Mechanical',
                        textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white,),
                        textAlign: TextAlign.center,)],
              isRepeatingAnimation: true,totalRepeatCount: 50),
                    ),   decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/mecha.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                    boxShadow: [BoxShadow(color: Colors.black,offset: Offset.zero,blurRadius: 30)],

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
                      ),margin: EdgeInsets.only(top: 116,),child:AnimatedTextKit(animatedTexts: [TyperAnimatedText('Plumber',
                        textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white,),
                        textAlign: TextAlign.center)],
                        isRepeatingAnimation: true,totalRepeatCount: 50),
                    ),   decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/plumb.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                    boxShadow: [BoxShadow(color: Colors.black,offset: Offset.zero,blurRadius: 30)],

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
                      ),margin: EdgeInsets.only(top: 116,),child:AnimatedTextKit(animatedTexts: [TyperAnimatedText('Painter',
                        textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white,),
                        textAlign: TextAlign.center,)],
                        isRepeatingAnimation: true,totalRepeatCount: 50),
                    ),   decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/paint.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                    boxShadow: [BoxShadow(color: Colors.black,offset: Offset.zero,blurRadius: 30)],

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
                      ),margin: EdgeInsets.only(top: 116,),child:AnimatedTextKit(animatedTexts: [TyperAnimatedText('Ac Services',
                        textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white,),
                        textAlign: TextAlign.center)],
                        isRepeatingAnimation: true,totalRepeatCount: 50),
                    ),   decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/ac.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                    boxShadow: [BoxShadow(color: Colors.black,offset: Offset.zero,blurRadius: 30)],

                  ),
                  ),onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Acc()));
                  },),

                  GestureDetector(child:
                  Container(
                    padding: const EdgeInsets.all(8),
                    child:  Container(

                      width:500,

                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius:
                        BorderRadius.all(Radius.circular(20.0),),
                      ),margin: EdgeInsets.only(top: 116,),child:AnimatedTextKit(animatedTexts: [TyperAnimatedText('Electrician',
                        textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white,),
                        textAlign: TextAlign.center)],
                        isRepeatingAnimation: true,totalRepeatCount: 50),
                    ),   decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/ele.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                    boxShadow: [BoxShadow(color: Colors.black,offset: Offset.zero,blurRadius: 30)],

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
                      ),margin: EdgeInsets.only(top: 116,),child:AnimatedTextKit(animatedTexts: [TyperAnimatedText('Emergency',
                        textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white,),
                        textAlign: TextAlign.center)],
                        isRepeatingAnimation: true,totalRepeatCount: 50),
                    ),   decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/emer.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                    boxShadow: [BoxShadow(color: Colors.black,offset: Offset.zero,blurRadius: 30)],

                  ),
                  ),onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Emer()));
                  },
                  ),

                ],
              )),

        ],),   ),
          ],
      ),

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
        backgroundColor: Colors.deepPurple,
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
}
