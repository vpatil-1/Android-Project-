import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:aquos_services/main.dart';
import 'package:flutter/material.dart';

import 'package:aquos_services/Card.dart';
import 'package:aquos_services/Categories.dart';




class Elect extends StatelessWidget {
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
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Electrician Services',
            textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),
            speed: Duration(milliseconds: 300))],
            isRepeatingAnimation: true,totalRepeatCount: 10),


        centerTitle: true,
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
                  children: [Text("Name:- Ritesh Patil",style: TextStyle(fontSize: 21,
                    fontWeight: FontWeight.bold,),),
                    SizedBox(height: 7),
                    Text("Field:- Electician",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(height: 7),
                    Text("Address:- Available all over",style: TextStyle(fontSize: 12,
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
              backgroundImage: NetworkImage('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPsAAADJCAMAAADSHrQyAAAB+FBMVEX///////79//////z//f/wTwP///rwRgP//vv6//////jyWgP7//v//f7/+//8//3oj1PuVQLsPwb1//8EZ8H///UEX7rx0MMAAGvqGADpMAMDWrb0SwDrTALpQgMAAF4AAFcAADoAACUAAAD/iwDhAAAAAD/g5OoAAFEALHwAAEQAMo0AIngAABsAJ4oAFX4AABAATKz+fAAAPan+gwAAO577cwAATbAAYb/1aADwagMAXL72LwDVAADmLAXYAAAXH2PJzdeesL16jaZFYIwnPHQXH2sfMnIsQHDS3OF8jalRXotASXUAGGwAJHUAF2QAEG0bKViTprlfbpcALHIAGFkvMmgnMVoAEVMKIlhrboOTl7MAN3o/U4O1tsNBR2CSl6Rziq9OXHMDPYxXaJs6PF1/hJMDPowAFYgAADBrb36Zq8Tv0qb579FgY28nSYfkpUbiq3p9gIcAEZT13LvhjCvodwD0w6k/TFv1jT32yZsnM0o0Mz/tv3/79d4gIDDysmm6xdrsmkrsiRE3ZKv7sHkAK6jq3LDqiCtOebLnu5TvdjfnvFh0msxAccDhh1wASbjqo4jgiWnfZj3gdT/ko5HiiHPecVXbTi/SQAjkvrnv4NuftsznPCXTQDHin3leh8HaXUzknprceXTbdWXhqqO2AAC8Uj/WJLc5AAARfUlEQVR4nO2d+18Tx/rHZ2eXZWfYS8lmQ5Llopa4Yig0BJJAAI3aQ2O9tKLfnnqJYCzRoof2lMLRnvItip6q37b0gi0Grdfv+Te/zwS15Zbdvo7ort99/yAXF5jPPs8888wzs7MI+fj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+HgE7o+fcxte9lqhKAqI5ZlchX3NiyLP80hQXnXDXgKyIT43ukRFymEGkeVX26yXgqByIi+u+JZIDfG1t3vF3NjK5fbs3ffO0NG/7P7L7qF39+3dk8tZK695jeAVRKnIgez8/vcODIXD4YMH2w8Bhw8fPvh+S8uWHR8ceO9Int0ARaSKwr/qBr9ANNlASLX2D7eHD7bH246eHDocbjl87IMP/wv48INjf93SEm7ZsfOj4ycsAbqAILzqBr84MPTl/Il3thxsO1lqa+8EO5/aWyjk8hau/K8OnaCw5/ix7Tt37Nh6egSsL9r9Rg+h7xkKdxTj8bb2cMu+kVkdvgXDGgzrEkAh9C138vzI2M6tW7edLrwOducULPIoP3qoo6dUjLeHh44XMH4WzmCMX3FtpZMr1okz57dtZ8anAvbyuIdhMLOGO9qLxZPx9kNnIZpX78uV/I5YJz5+a+sYXOvpYU9C6v7348V4KX7u6BEL8ZDM2JiS4yVQLOROv3V+BCP6cpq5ORw5CN5+Mt55cI+OII3lOSxUG79ZfitSjDkR5T95c1vhpbXzBSJwkKiJKBfvKBWL8c6hAgvdWGQD95r8jTMoMQxVr9wT1ucxxEH2hTr25uk8UjSMRS/FfVmDxuv7O4ogve3oOKl2rSKr5IJ8kUirvs9TZP3tzRHCZj94E9v6otEgouUmwOiJnvZhC4awKlGL04TJCxf/tTaXY0l/7vzHFjKol/I8zKP9naVEsRRvK7AeUC3AYQN/Sj+7uE745xUBCX9/u4BEr2gnhqpQfV9HIjFR/HxYRyLmq87ReHnyM+MLpBqrvs9B9sO6Tn7bGNwFEXkh3zE4HeUnesxSKRkuIF61G6QFfcqYvgKRcKMLlE/+oYLy1ffGjegqP1tMJ0qlnok8xG3N1l8vXNIvXSZkI7uC4xc+tKihvuB2bgYamgV/T5TiZy2qYoLt7G5MTU6mLhJ5o3GfUzhU+NJCq8cBt0EkGQL854mSmYifhTCmidX7uiAr6HIv/mJqhqgb+TyWJQFZ/7RgsODcPM4bMLbNfp5OJHriw4iTsN24bOjUmPpqZuobAwnVrhWp8t8WcvdQpxJw+GypZHaMIl6y145V8nVq5nLXFV2oalKJQ8pbbCL0Atv6ooEw12MmwOFHESu+2l5P0MXUFTTV9ZWuGtV0gd8ryj8t5FbDSwTm6vl42kwkksMwpiMb7TJSkYQ/TU1e6Oq+gJWqdhexInHK3yxeUVxZy+QIFfWT2UR6InmW46i91RUe48mu7pkrrVMzDn6/wFt/d28VV0Kn0qZpzk9AKi4TO+0qzHjw1a6vyqnWVid5iwTzwjFk8G4saEBfHE1nTTPRacF8ldg2kUeYu9DVNXOttfWKkxqFyME4X0DVpkWvBHBwRUVLSbC6mZyFGTi2TWkQpoJxtfXKTHdr92eO/gYPskdU7LbclmnnrYSZNbM9+5GMneRg0Cu+6u6avtzd2nXZ+R8aUVxZx5qbD5lmegJTwjvJv3QVTD5lfNPa2nXR6Z/gOCv3H7RwU2DryuNJ6OxmmyUSTnNSZxHwle7Wa5NdrVdTsuOcBSOi/Qft3Aw0gbOSoZAZSo5TBfO24xuHsUgmp1q7L37R3dp69c/I4d1Wv4I+eD8BVs+WMOdECMfDBO8qqC6D9NYrDjJA90JxLgmd3byerz4neQYxNDKZau2+fI1pv4y8rF0kc1kW6M4imLQ6+QFJN6ZaW6cudoHxu/7lWe0KlTE/mwxmQ6GevMPuKAr4MzD7tZuQ07WmZogrxy0H8LxQMXvITN93+jOEn5nq7k5NXgLp3VPQBTaxfZuJgRV+aR7MngGzOwTja6nurksXeruBb5Arc3QniLqBzFAmlEncd75noNzb3ZX66o0ukN71NaFurklUQyL8LJg9mEnmHdUTqUpm8Bup7u7eyd4uIDWtezXUIRjQb0BvD5k3sKOyCg8z/Qu9qVTq2tcppr13kthP+twKp18Pgvb5JUR1B5cLhCN9oL3u8q3UFGjvmyFuLr9WRRPH08zuSU1RnOR0Godv1oHZ+z5jxk+lbkGYd2s1xg5N+y6YzYbSo4iruq/gGVQ36qd6++q+hn9SU729byDds3ZH+WQwlA1ezyHJ0b44jH+r6+1N1f1PXS+4fl/dTcjq3L7mshHct1kY4DJJXRIdxWtSbuyr66u7dAUcv7e3t24SYVevt1RD/y6YyYSyNyCIOYvX3zcyyZ+C8cHwfXXlylY7D6IQlE8HIamb34McFOmwTPFkU11db13f1bo+pr33loF4T4Y6thNmKZ0JZjNJZ7Uk3SC36pj2qT5md/D9771pdNCODUhsssFQ0NQd+buh32xk0sHXK/Q2XtvsNm4WnG7oZiaTMc0bjmI1MWiUSW7se659etMbuUlwsgjdPRPMJMYd/sQPtcua654SKGNRWwMSFNenuRxFMI8JBjPpWUe1FzwTrVtJk4QVQFgF4qnbxz2FR99W7J62HK0S4h+ht9f/UftPEpHXQiDdcXsM5GTuuyyYPWRamn1/V1BDtL6x/o/a629veLHbJ7YGRglw+WBoTid2duJlwj+ora+pX+ap+Fu/vbEePxuO1jdeJaJKkpDVBbM3sGQXnDQFT0drgPrfqauraVxLTV3j98hZMeAVIlDUk2HaR+27uyDTxcaa36lf6QAraJ4hrt9HCdrHmfhzOSxW3SyNWPq7EKhZyQbya2oXkO66tafVYFFF4+b8XA5Ro1pbJYQ1YkSammrW8kz/81tQ33iLUo1325rjeohEtTM5jP2qSm4H6sHnm5pW34H6FQEA8p5+z+R6RKO2e2vY+tvFSFNN43PhTTVrfOCZ/safZNub6RYwtt3fjqku/9IcqG2qBZjo5VuwvvxoA/aKdgVh2xzMIKgh0lTbzKTX1tQu34GmpnU6QE1N42Pi7YfDVsGr8q+BZeW/A/eAWX6V/sbBGZ1ze4z/MxB0MxJoZqzWv6z9ufz6mv4fMFG84vNOwMZgYFk7qF/X/k9jX33jokEU4XXRTjDHoR/6weWXzV6RX/msqemZ/Eb2OdNfG33CNh26PZ91iqQqpDzQHGgOrAS+rv3dBxrhVoD5a3+tup/aa2gSwY/7m5+5/HMCtc1NzyNAU/3yLYg0bPzMkAchlNwZiAxG1vIsBoDm+qZ+1gECv4ieXaNZD0XCDeszvewM0PsDfSwENgUiZaw5yeMFEeWX8oT36n3CqDxY0Q49f/EWfBZo6r+NdepkbFe40bb55A3dq/t0WKrXzEJecyB6abGfWX+XoYvOTLl0PZPJzt/Y5CZuGhL+sb95OeAvvhFl9yCygFSHy1P3s8HgXLbHtY9R2MChB0+1R3/+CVy+v/kuljX7ZwkRx2H9u2Awk8n0vIx2bgaCfK+ivTkw+FuUOX9k2tEzr2zF2kpkWHV4btMbuVmUF6PLZv/l5374GP1Vd7amhymfm88EM8Gs08Ug93EnspzgDd682x+IBmINiqN99Byh6Ns0056e9WweNB1pZoaPLi4Mwsf+HxF2pJ1CAjDHXD4T0r26Dxf9sqw9cvMeWD2wq4ycVSxkSWDbHYLB7A3k2bN/FlkvD0QHL8TA5QdvO65XGGipsv6ZWOK9anc+Fo0GotHojw+Z/Qdkp9phRszWAEG7Rb1Qx14DuHdDDIwe6N/VEAWzx6Ydn2EkagTMDrHuPpK8WONQFA492QXKA5EH05Foc/Qewk7n7RjtmWdrgPOzPPFiWidgrD+MRAejYPDH0f5mmLY7Ps+C57/LsDBvEurJmqYgq+RBP3T26N1ybDEa+YU4P66Ns5KV3Q7jiOM96fOygmPM7JGHtyPR/lhZUxw9J1a56tss057UJSJ50e5IEGUI89H+gZl74PcLTn9M0TTFSmTnKqveHkXBqGEXc/lHd2JwA5yXXyCfHZ0Pwhg3n/dsLddAC8zusfKDSH9swXGM57AIZq/kdJyr6lXcnzhRm+JHEejtd+mu6OAAkZ3qUGQ0mg5lmNmdbdp+SfA873hTMOakB5HBwcj0QqQ51kCcx2ve6jFDwVD2PnLbs5SO7S7g8kD/YP9daWAw8oComlPtPLphZjOhbMIyRHflNZbjpWNBLMcig5GHDZF+mL8RR8/ZVFh+9nQexnaXnfNjFZAo2J9bhlg6Px0bhEj3OBJ5jAQHm1YQy+M1jkCgA7PPEU7AbjrXTOHRbJ4qmpMEjaLbscHIY3lXFMzuEFHW0P55E7r7dcfPnr4sFE5TjhPqaAM0jx5EIrvKC7HYguPnAolBZ6+boH1+1JU1C2XM4XO9xj0IcvRBZEDc8Oy21WiCbrKjgxImRtRdgQ5VvL5QcHbeVjkWjT0pD0SeON5jgUV0I5E1s6FEjrc73PiVIKARtpnc9v0JuCEWHcCPY79i7Kheg0VJoPuTkMmbySXkzjP8NF45bSHFXvvDXZGH9G6sAcuyk3gtchTlzoHDpyvnC7gsrVkGU6R8qdqd3gb8FINIt+sxUmXBydhOFZT/PG2GTHNOxBxW3DW2V+CoYCDrH5izVX8vcg8txspE1FVHfVfM95gJdlAY4WQeC24a21eQO445m13Q5buxO+WB28iJzSuPj+RLiXQilCha1NUPDqvoyHEBVT+7ryF2T3s0QB3trcE8+FIxYaZLiZ4cpWvO7HYTAkUjp1VUZa6hoDsDC2jgCXKW10jI6iyZ8xPpjhwV3L3/jK0jHzkP0R7J656zp4CnPxpQpgewYDu+8YjXOJQLJxLmxHw8TwVZdH99snA+z4vKusUMiZPR4iP07zsOhgMY1zl+T9t8yUwkikz6JjT1RYNR7u09MFNdL5ZpWEb/Wy7/ihyUZrFC0WgHxLlST0kXqeCF9TeDQ9a2MW3dJERWtfK/0aMGjO3FC0if6EiUSqXknCYgonvB7io1kHr6fJ6tPvEiXpHnYRU/fFK+jfQq2gWBFcAgg5k911MqJRKf70WKLBu2z6G5BaqNvLmXsHPN8IqaqqDi22i6XHUhhtM4TpUM62xnYiJRinfOIt71z039EWKg2W1f5tjBsitqmDKv3kF3UNU9E6IsgLssnewBq/d0nLWQRN0f3/8AJ6jUOrPtjIVWrhmyh79kSdCr5qUC4nKnOouliVJP+ziGZIH31LqjqhmCiArb3h7T2aujILQt91aBCCCcbjBvB98mrPyRHw7HS6Viz7lTeUQkTAh2XbnCBkjC8Njb247n2NtiBPuTyTUN8wL0kNy+cLxYLPV0Hl3y7PvUMNvpbH2ydeuBHGEn6PM2JXxF4li5d6KTKY+faxsXDOraOZsNCsezOnr++PbtH4/l7WfdFKn54aH324rg7h1HT1g872xt2o0omGCKeZiDDu/cufP0WI490c+Mz7o+xz1dxqocKs+zLC43+m74UDEONg8PHbFYfkglF9Yp/hTM849s3b5l+44zJ2bXP+hNnx050xJ+v62teDLe2XLKk68QWxdBoTCc58aObd/ZsmPnznfZ2yJzOQvI53KFQuH4u1vC4UNHi/G2ePv74feOwO2R3DxP/zNwXOXsEqTk95/ZsmXH4XA43PLXYx99tHv3scOHW8Kd7e1tbW3t7aB7aHhc15Aoap7t52vhZW15FyS28nsPHPhoS0vLwYPtFdoOHWo/CDdj6MC+JYu9IpZClPDuuW52EHD1I6On3hnaDQy98+7wylcDv9ZQVtxZXXwSqcvW1DcHTeZlSPkwL0qUDXWiKGIJQ+b6qhv2MpB4DXO8xku8yEkiham6IlJBeV37+Do8fUcu583D+3x8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fP4/8n+DSapsGlgffAAAAABJRU5ErkJggg=='),
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
                    Text("Field:- Electician",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuN3DJKCBTu2qmYV8mgpxYv8TnM2-Lr0meHg&usqp=CAU'),
            ),),]),),
      ])
    );
  }

  void setState(Null Function() param0) {}
}