import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class Mecha extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Mechanical Services',
            textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),speed: Duration(milliseconds: 300))],
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
                    Padding(padding: EdgeInsets.only(left: 100,top: 5)),
                    Row(
                        children: [
                          Padding(padding: EdgeInsets.all(3)),
                          IconButton(onPressed: ()
                            async {var FlutterLaunch;
                            await FlutterLaunch.launchWhatsapp(phone: "7498289856", message: "Hello");
                          },icon: Icon(Icons.chat),color: Colors.green[400],),
                          Padding(padding: EdgeInsets.all(12)),
                          IconButton(onPressed: ()async {
                            final url = Uri(
                              scheme: 'mailto',
                              path: 'pvedant971@gmail.com',
                              query: 'subject=Hello&body=please order your product..',
                            );
                            if (await canLaunchUrl(url)) {
                              launchUrl(url);
                            } else {
                              // ignore: avoid_print
                              print("Can't launch $url");
                            }
                          }, icon: Icon(Icons.alternate_email),color: Colors.redAccent,),
                          Padding(padding: EdgeInsets.all(17)),
                          IconButton(onPressed: ()
                            async {
                              final url = Uri.parse('tel:+91 7498289856');
                              if (await canLaunchUrl(url)) {
                            launchUrl(url);
                            } else {
                            // ignore: avoid_print
                            print("Can't launch $url");
                            }
                          },
                          icon: Icon(Icons.call),color: Colors.green,),
                          ])])
                  ),
                Positioned(right: 207,top: 18,
                    child: CircleAvatar(
                  radius: 52,
                      backgroundImage: NetworkImage('data:image/jpeg;base64,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')
                        ,
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
                      children: [Text("Name:- Rajesh Patil",style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.bold,),),
                        SizedBox(height: 7),
                        Text("Field:- Car Mechanical",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 7),
                        Text("Address:- Available all branches..",style: TextStyle(fontSize: 12,
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
                      children: [Text("Name:- Yogesh Bhangale",style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold,),),
                        SizedBox(height: 6),
                        Text("Field:- Mechanical",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 6),
                        Text("Address:- Jalgoan  ",style: TextStyle(fontSize: 12,
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
                      children: [Text("Name:- Nishant zope",style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.bold,),),
                        SizedBox(height: 7),
                        Text("Field:- Mechanical",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 7),
                        Text("Address:- Distinct Branches",style: TextStyle(fontSize: 12,
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
                  backgroundImage: NetworkImage('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANgAAADpCAMAAABx2AnXAAABs1BMVEX///8REiT///0AAADT0tb9/////f9FGDJIGTM/GDA9GTBNFzZLGDVKGDMtABk7Gy6zqK9OEjVcMkkREiM1GispHSOBDVSPC15hFEJvE0lmE0NaCT3/+v9uEEmxBnB2SGKfCWPDA3osHCanBmqVCmB5EE+JDFhaFT4uFyS6BHMAABXGA3v4//sAABEVAAAAAAj/9P9+AEpRADCkiZhrAD0fAACfAFnMAH3CAGvjz91lADNBACk/QEtmADyDAE+jcI7fq8wmDRzz2u2+ZZjBvb+Ji5Tp4+eRAFHtxuOxAGX/8P8+ACIqABKZCWXXkr0xABjIlrS6mq6UPG17P2GQMWWGfYOEV3AYAA7LAHOhlp1NACfEs74pKjleX2pOTldtb3rUuMqWUHZ+Llo/NDvAgqesg5rCcKfAlrCxi6LOq8KvQ3yOJGTju9exb5W2oa6Dc32rAFViRFZNNEFzW2mUboTPgqw/LDa/TJGrSoTDOozHWJLNAIfdAH3gkcapJ3jlstNpLk7cea9/WGz82/WuX4dHABMtAABmIT/TcLJjACGqaIKUeYu8aJKEO2ZdLUqnRYWLAEBzdk3yAAAW7UlEQVR4nO2cjV8TSdLH20l6WMALYcMCwhATEwJJBpighEReDIG8zIQAurIQAgQVZaPB9WV93RN08e72bt29+5Ofqu4JBEwiHjfg42d+KoTJGOY7VV1dXd09hJgyZcqUKVOmTJkyZcqUKVOmTJkyZcqUKVOmTJkyZcqUKVOmTJkyZcqUKVOmTJkyZeokEqkuQgQB/4H4VyoL7AwqEHrkP1GKZ33JAiARJMBfgpcvKUldigKURMTrj9ppJQWVEhTJzuyiPy2kwnsP5hLjG9e3b90MhXpDV5h6O29/P0MFWSYP5y8TofI/SUt3kkQ4asUvSZQ5ItE27t4IhVKpSd9kO1cvKvS9hA53OTN8GIxIl6aWrB+555ckuGwpunkjNJnydnT4fPC3EmwiTsEsl4f7AOxAcCOk/rZ+S/LMrrqeREJFxIpv+lIpL1ABE1MFWM9dPGljpfMwGEjq77906TvpyzMZlakgykRbuBnyurzI5SuTtR+QTWgQDZXhzr6PwEQEW1o8m4uvJ8CiNL6d8mYRC8mqgV3D036/0vcxGLeYxXo2V19HgJV+n3KBsh0d1cBYC4tCa0oOT1SxGAf7bg08+osSJXEdK+sN6yYrt7LJyckQhnwgU8Bbr3f31QaD+PGFNDPKUgai3PMCFCfL7oP5gKj3xr+u/bh1/Xrx+vUfr0NTJLe7OjtZ8DgI9+I+2KD9DFkqBJ4F3ZIoFl2MiX0Nu1wsdoRCNzaLUUXSz9TPl5UVBOs83I/tgy0VTp2hquByIY2I33d5QBzMiy0sFXqwWdJ4GiJUCIwbHS5bTD74GOygGdh3d86QpkIIJs2lkMu1r3DqwVZcZEkt9gKQiqD4+ZTkJxhY68XoQWuCF/apSwzM8iUED/BDmWrTYadzHyubTYW2o9BRy9xAPGsUWKJPGNjDiU6mvsxlCZN8PEas64Nt/V8KmARXJNO0R/Uw6dbqWIgTWitJB0gdrA+7srE8HBLBDX8abGpr+2Ishi5GYo+cHqdHF7SxBYU5Xw0BmKC7IlPmMXTIUs5ma2kpg3139mCyJIvPwmWqLNgsBVh49WJtNFIOHqDW5tbW+Z9mntgamgCs/1I5eJw1miQr06rT4y+j+bYhc5dp3cuCVqnsg/U1g8ZsDY3A1YIGw35skZ92RsKQR6h2X3U6dU90hjtKhHVqtBwo0Fchly+D6pUBmVzs7uzjFmttPv/NNw0NjS0HFrPMwEcnnyhnNZiGES/j8jOybNaT2taofMRYiA8tjkgHUsBXHw539TGTtQLZXxCsqQmamJ5SwX8i+fkn0plgwe2nVNtR/RwMFAZzyUfvMXPL+NYtzBRDrDgw0T2sUaVb98UqYDBuAXM/bW14LJ2JP0J4UO5HmLXwn+t+nDJHO3wWBPINGEl3dJSz+56e3onrBMbPevD4GIzlwMlM8zeZx0rtXsNAMFm5z8yFFnOGpyE+srTx0EkwPHsfwqQRsvvJ9vYQgk1cGVZkqa+77yhYCwMbzGHLvDzW3NAw9pScbjMTWLGQTut+iFwL/N5W2otiQSc9CXljdjJ041qFfs5DxM906mQ6WAsLHv1T63h/lAzElIYG208VyeRpSMTS4DPVqcsTjlVpDeCZNJaCMWfoRlGrPI7WFkg+o3djFWDA9VzCiPr72HkEa5jNkTr9oQESZLL7yO+M6PbardYUJJmWUtmsa7KIQaVCWO6BMVkx013pisxiU3eSLEmeb0Uw6AdG8qdJhn1wGv0w4te5xCpgghgHe7kexKlE9Oyei+il72jz8BFXHCxIaGeSn21mYHDcdrrDaVnZ0QOH3xmOIeiRE9hY5t8won7AUhGdRe+fWfCEo8rvGeDaB7M9z/NxjkDs8+d5v93Q8OQUy3HgePf8TE6//9FCtTOg+4IGFs6mWHG0xscQojVD5qGD2RYr3nkIZOehkTU2wuHTi4x0N+LXyTybVV1FgN4gnHWltshHXdvBp8CfbyvA7JUEv2cg3iNY48jMqTmjoDjdOpf6olrcQEcjm+Gs5yaLjTU/qDYYFZ+O6WCNz0/PGaf9ZYO5tBoGo2mIHKk0rRvUjoLRig9QWhoYWQs64ymQ4SA/rbp5+/KH8coFrNZARJBx8ogyFEiGX2Zd4Wki1hmX1XNFCCHRWWaxlsbGQatwCjGfCtLOviPOEVkEX8Srx8Qdw7rAJ5F2wREhctT/JOEI2IGQJGfD4/BO0+NT6MxEWYhFmMHcfvWlKEOGCCjam1dgQFW9v6CA7UQqSmFI9xfIR93AccFYfecp9GQI1oLdtLFY0DtVRI5HcTYWFOneq+XR0aDbHQz6d+KQZshkAcBcSv0U9lNgQhKcsYl33caPzURhblmPHOoca1CiLL5e/gXBlv1ut/OlBIlgPAwJZInWbxr1wPgse25eBzvcFRgjTXXrFtuReA2AamAv0LLbD++ENbiiD6pHvQWBg7cNdtZ+QkX2SzXQi9e2GCsxPDnfyC3WJhndyuhcJMjB1JKgX3bczwzmXkZbPtIEOQ2OmIqzwrZ+ieXqdlnsLRiS1AHDEcTMLIRFBJu1G93KJD+6HMj9sjzBL9LXf+VkYDF1WhTEHXDETUIrbnLVq/o0GHnKwVpaDO+ld/3M4cBgaYH7FQwotZ1IEHwxOBpUdzQeOdS5rQWuLabrFXqoi9R1RSbriA4GiZVxwnv2yu0eZWCvIZbrrijI0ptXzD1fLEDo0FxYZ2TVbjariXWBdj7x19vL6jmo7uGLnwKDWwYma2JgbesGcsHv2VPB49z+IBjs0Ft6gY2Ce6V3eNXKo5OxFRG+cjHnQk/PhQtdXV2dnd0XSb1wr8s61dDSxsZqScPKwwj2zI1gQbCNeNjnue1EgW4+YqUrl8cDo+cqYBc+D4w8buRgtpxBWOzaFT9ygcnU3Y/aMgt2dDrChp+uaW9Y9WS9JwfLz3JXbHsuGhU+wGLpiA7mlKqOVsicChkJeOI9omyGXJ7/AZho08EGDVuNBGDv3Bws8qxqJZOmH2GqBYL8g8RfwsiFr4rQyVjB9AKCdR4XjJJFGwebNWz0IsqSf5SDqVXzdujA3ConU127cKDU4c2CwbzlpR46WM/nWEyP+G3gi4aB0XgkyMCWd8Rqv4SWWLqlqizcvwR4aXMSK4u4KmLfYiiI9t0TxwQjT3Qww9aPiXRumYNF5qovK3wNOYk6PTeNMdEVTm0qlGjF7Vs3uP7g+h518eLjt8cDg1TYxsGmjFr/IZAXbu6KkXS1SgbVnO6IJw5dmRLbCUO0D3uLdSbwNv48Jph1ioH1968Z5IuyAk2MgUFMrOaJ8Yhb3SM88415sR9L3VyIK1K5Yz3cwW58eywwGBe06WCXDMoXhT11mUVFSKeq3rtSxP2ifC6JT6cYWsj34CbXba4/br8F/fl95/GiIvyinxqZK/YPGtXIYv5RDoZNrEq4j6n+dzK/Gqz+LqQ8ro6yysGDhY+unomu4wYPXNhi42BLRiXC74JB5oqQ2JNqI9pYxP+OcjAci9FSiq8/8h3txy504bTfcaMiNrI21FTCILBXozx4qJpQdRoiBukU6wcoW5Ii0LQPl8EdAkODfVbmAbdQGtHB1ozhktyjv8Do2R18RaqXw2IQPOYIVqn4aFkmpVS2I3yi7J79qifMFS/1Pzckv6caC4pgsukaQRzAlj0xkcpsVRibRdsOezu8J8oVEewnWxsDGzSkWEX3/EEsRbmX52r0JwAGfjod19dziIIsR1Ne3wnBQNBFczBjwmIpyMEiuzVOgDaGNYNH01EJRzCYnZR82RNm96iZMpgx66BjDCwIeQep3sj0ErFTDbvuxeKg9Cbm974Tg1mn0BX7jYr3b/yjrBYVidc4AcCcfNTixFRxMsWHLSe3WHKJRY+2JWOyxXcQ7IOfANOHY/uLF08+0ORgbayHnjKmPPAuqIMpxwLzlBdznxxMmuKpx5QxuyjejY6y1EP9NFjZZPtr1E8I1sQs1mYQ2G86mL8WGIwz/e5DYDoZ31JwkHrgULP7c8Da9NTDMLDRemA0Xh2so8Mb6r1169YPlfr11+8/B6ypzUBX/C3IwWq2MdEZdPo/AoPMo71YJWU45kATZTDYuyCL9rXByFzEXwXMd0OTK1diMoniMQeaDMxmLJg7WB9M1NSj8R5d0adR6e4DfcxSrr519X1GG1OmDG1jb5Yx3rtH1Vr9mEznVOeRjiybDcWJ+Eeqskr133bQRvVjc58CEwXxdeSwK2azqQ0ivk/t7x/r+exhC8haBjMm84gtj7JkUS3VApNl5b6KhcUDsNQCoVuTHe2+k4DNTBlaG0hH+Ag6EqtxggxJvTQd5tV7vYN+T0jxiq/ddyKwctHDmOye7jEw6Mee4YCk2pCMRuMyLe2onn2ymwpNh1hK5TtoY0dK3LjMrV4xh5KEDmZQLViL6DPNL6hMq5X4RLnkgSGNVLq3g3t3wqkUBEStN1QW37qO05nDoJXHfEazGZfvNdQpv8EIGqN9P7iiMVN/OCXB4r2T1ALbVcPPNJk9W0BjkmSqaUpSOSr21AHKJtebG1oe25rqWozbq63/jkGl4NccLKhqslDt3olyGhcefUhL/Ipwlrp8ZsWOv/JPfNVAa+tTiURn64FJg6wS3DZl1B7HZ8sYPILBSBonL6uACSUP1gbC4Z3pe9vbH7YoUIlU5kviKCH0kPgCltZMFAgXbbWDB7XOcrBZo2ZrdyM8v4/M0aqVYFzwpy/Ex8gR3sZFbGyPftVFVWg6BoZ1qMam2suKcjYOZlQlmMYjvyBXcPl19eeJMLCKzGO7/jMssKr681hr65OkZJ9taVqyVgNDQ6818kkJo2r3VIywcO9efk2q7s2gBJdoljMPF1ucU+8DASyfgXg/b5uHcP+86nIpPPZUn5QwakpTINMsp8Jyb9U2RgTNc2AxV6p4jPWTv47xeN80OFP1bDzGXRFTYIPmx4S4340dtFNh60o/kiiTe+oBmFeT61ZusVwsKI/5cu2RHFvTXvX3Si1YV5xaMmoWCfqn9I4aUV/u1bhz0PLi98NcqVSq9Kk9UvgpovTw29nZkadVG1j5tOTTwanBO4Y9wkSUIMmNl/ZozR1CkAVr8bK02udVCHvzZFKqH2YAbcbAZ87IlG3Zrr2nC6v1bAdZeS/mMTIg3qPV6BDKEj7aSfg/lYib0WX5YC/pUeFTBQ6Wk+L5X8jjKz4lnKgUSe2FvgLVk/5yZlF/37D+mexxBPQT8fN0d5GZMmXKlClTpr4QUb7rklIJd/hRScZ9pvi8FfyGz5zaf5AC7o9jOaMgsBwSc0y2S1jWMy1BFkW+3QUfkIkfwLNGUt6osD+cPY28QxAkuheL7caBAXGkNCTy7GmkcXiVTqfjip5JYaaobRSLGxruEkxHdSWppL+KQ16NB3DZucResLcxi07m7XkcpQhJa1lG7yCT5firyHJwOfKKLcChsUeP1LAmg5Xep2AY5vKGU9sKG6/A9W72htp9oas/SrJy9coEK5de3SbRvw1PDF+9Ojz8Nkrfrqw0S/Ax+b+vjFiTI5mRPNyQ6JPZzJht8Cmg2S2DXIY/w0/Yi/x1dNS/PDrqBByBvMABcwyHlB9UpyeVCmc94QXmOQLd+o/L9/5mynulSJV2n2/yCsBdvUaiV3t7J1ZWJnqu/EMsDncNRwWZ/Nzd/S1JZvoyeVy23dCQmc002p5IxD7b1r8EWBajwSh9BVhv0nNqUH0GbSHOpvruY9P74HF697S0K+t5yVxRJjddvgVC/giFfiAaWG6buyKAXZgoatrP3V0rSXGla/gyodJK39hDfDoJgj1p+EsmZ83ZxgZzANY/lWeuaPRzj+L+0eV3YI2513NxUSDP/M7fnP7wHlZ6PE4XnHA/67rFzpTFm2Hfg4UNGEtLgtTeHroLALjrNnq1Z2KDkI3uCytR8vNE9/fweqwvk6TRTPNYHrcJj2FlNPeT3Urstja96GZ0/CiNji6XcHMOG36JHreanvb7NxmY6prbfOnypHRXJFshFz6w79YGkSVcDHH7du/tK1EE67l2/W7XhStvJbqx0rmSJL93D/9KdLB8pmE+yiMhBbD+/ueg7wxag3mg3eXRSJzFZlkWpJL6i0cqqk6XhGAuT9jlcXk3RR48ZLLga8dFfVcXCAMLhXqv/JODQRjp6fwzSgTpz67hh+TP7pU8pUkGZs98M5tkNXGIugg2NTIyYjFw+xgXWCySpqKsxEXokF4v+3/T9lz+yC6CedRpl1OdFnmFAsO9snHtQcrrDSngipO3isWt4nVsYz29P7yd6LodxX7q8kT3D9GxzjGIjcmyxWbR+5L4BVxxKmcHGbnhj2kP2tgbItM3Ef8zSfM4g2oYt3x8IAgWJjFXNvyBL7Cn8R/v/kshZHOyIxSVIHjcZVNC4HFXe67kFfDElSR06vGVzr673d2/kzKYdf78GM5PLA4+yaErnk4bo9KrvwaDu1osMhqcJjGIiapHVZ3OsIZbhF1E2nFlU1FmMboXCocWCC2GfMxi7TwqRllUzJNi94WJX7H6dnGib7hvBVtVMtOKUfHb1ubnM0m7rXF+EcGWZlhUNPrByHIap1z8/l/ckT36yr38IjYXe+PxqzH6wenMErkUzqr3+ZnirXBH+433k97QNlFwCprNZ/6Brnhlg4pve3qGo1Sm+eHOzu4/Mf2AfgwsRq0jzefn522NDTbWj7UtsQ7aaF+UadrvD0Lm4U+T+CO/OoftBOLhDpl2uR5B5/Vvl+s/bFmBICs3Ql7ol0PXNKqEQu29vThbC2B/m/jnBoT4v01cvQhBRxlbGc5cxjQyOTL29zxE03yjbWwsM9tixcxjictwMEhXtd25Z+9KGiRXsVJMkyHLSpc2ikq6WIxBPEkWi8UoOxUS5ejWwuYWxAhR3NgXTRbzG0lRFvMgMJQYhe9J7D5E/kIg0kwul5uRsNnNlGW0K4pCeb86f8GfvUWw22I7CQ5K8LhbQs/zq03sUr0CWa5E7h/ZjxP0lJ8jZsqUKVOmTJkyZcqUKVOmTJkyZcqUKVOmTJkyZcqUKVOmTJkyZcqUKVOmTJky9ZkSvlKd9X01TtavVMTylYqc+0plgv1/kw7mqPqmI+BwHLyDLwM1zjRYjsrrOHz4iPbf08HGA+fOrepHy9/PDa2vW1bvnNOxHeOOc6trq8ZdfX3VuqH1wQKFtcBAwjI04AgMWRLjgaGhAXiB+7YKcNRicZyzWL6zWizjifEzsdh/Id1iA7mBQAJkSSQKhdxqLrE4bl+3rlssheRawmpdHbda12fG4ftpgjkCgQozlH8I4I+OsncGUAOOAfY94MBXjkqwoZylsFawLK4tWiyLq4kBSwJ+GrcmFwsJh9WyNmMdtziS1oAjcHpY0D4Ka+N4xeNw6UPjOfjBERgILA5ASwcEeGeosJZbA1PYV3Nri4m13LoDXhU4mQ4WWCsk1u1wzjq45GrOMlAoFMAZLdbFxPiMxTFjtQwB2GrVJmyYhvCaC7m1Gbh4+3pufKaQKOQK9kXLYqKQWLTbAQrMAVebgxNnFhft64XEuL3Ab345Kg7ZFx05iA/21fG1Ap69XrBAA7OC+1kL8IkzhXF4PXSaXOegccB9za3nCoVEYrWQyCXWEvBTYhW+w5HEeKKA9x1YCovAht9mwMUOgwUKq4HVRMEB/yxrlrXF1dXxwHpicWBgbd2RWBsaKsAnWwrjpwoGAXpg3bE6vuqAr/DvTmB9AH5aXQ2sB9bPra464PX6+Dr8xaNwvYEA/Ae9tZQ7aGyT0FhZgw2wF9A8sSFii2TfzgUcgTMIiQ52Jef0uF4+6Nh/80iU339JDv1U5XMPv3WqZEd/d7Xu6uhb7Cf88rWnVF+fvlqw/wMzdwK0FxNT1wAAAABJRU5ErkJggg=='),
                ),),]),),





        ],),
    );
  }



}