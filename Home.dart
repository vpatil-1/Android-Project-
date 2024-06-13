import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';




class Hom extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Home Services',
            textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),
            speed: Duration(milliseconds: 300))],
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
                  backgroundImage: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhISExMVFRIVGBUYFxgYEhcWGBcaHxcZGhgWFxUZHSggGBslGxUVITEjJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0lICU1LS8tLS0tLS0tLS8tLS0tLy0tLy0tLS01LS0vLS0tKy8tLS0tLS0tLS0tLS0tLS0tLf/AABEIAK4BIgMBIgACEQEDEQH/xAAcAAEAAwADAQEAAAAAAAAAAAAABAUGAgMHAQj/xABHEAABAwEEBgYFCAgFBQAAAAABAAIDEQQFITEGEkFRYXETIjJCgZFSobHB0RQjM1NicoLhBxVzkqKy0vAkQ5Oz8RY0Y6PC/8QAGgEBAAIDAQAAAAAAAAAAAAAAAAIEAQMFBv/EADARAAIBAgMFBwUBAQEBAAAAAAABAgMRBCExEkFRYXEigZGhsdHwBRMyweFSI0IU/9oADAMBAAIRAxEAPwD2pERAEREAREQBERAEREAREQBERAEREAREQBEXzWG9YbS1B9RNZETT0AREWQEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBEVRfV/RwNxNXHAAYkncBtKhUqRpq8v63wS4mG0tS0llDRUmiq577bXVYC524Y/kFBsl3Wi0fOWisUZyjBo8j7bu7y9ilMma35uzRdKRgdUhsYP2pTmeWsVrSqTzk7Lgte96eHiYzeuR8Ms7s6NHmfguD4nd6R3nQLuFzzyGs1oLW+hA3UHIyuq48xqqVDo7ZW4mIPO+QmQ+byVsjTgtEZ2UVD5YRnKzxlHxXOGWM9iYH7soPsKvnWaFjSdSNrQKnqNAA8kNhgdQ9FG6uR1GnyNFK6vYyVbXSjKQ/iAcu1t4yN7cesN7Dj+6VPF3xjst1eRI9WS5GycVkHTZLdHJ2HAkZg4OHNpxUlQbZdLJMwQ4ZOaaOHEOCr326ey/wDcAywfXNHWZ+1YNn2ggL5Fwhla9oc1wc1wqCDUEbwQuaAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgC+EqDeF5iOoGLhnuHxPBUdvvwQQvne7511QyvdbQEmn4hzNFTnjaaqfbWbV2+XLm3uRrlUSZI0n0hEI6NlXSuOqA3Elxya3jvOzmuNxXKIv8AE2kh1ophtbEPRYN/H+zTaG2EuPyyYfOSD5ppx6Nh2/edWtdx4rcWaz5Odn3Ru481up03fbn+XouC/b3vkkZjF6vX05HU6B030lWx7IwaF37QjZ9keKmdSNvdYxvJrQPYF3LH6fWurWWcd6ssn3WnqjxfQ/gK3EzSG9IProv9RvxXW++LOP8APiJ2ASsqeGa86um0WcwxmWCPW1Rra0Ta1pjWozVdfzYHzWUQxxs+cbrajGtrV7AK0HNRlowz1G2PLmPr6L/5SsVo7pM6zkMkq6H1s4t4cFspj1H/AHXfyleUOK8xWxFSEo1IvO778o6lDETlGUWtcz2mzWhsjWvY4Oa4VBGRXcvIbg0hksr8OtET1mV9bdzvavUbsvGOeMSRO1mnzB3EbCu7hMZHER4S3r2LFHERqrnwJq65BhlUbQuxFcN5kLVE6wuM0ILrITWWEYmLfLEN29v9jR2a0NkY17HBzHAFpGRB2pa4sC4eIWQstqFgtDWE0sVpdRu6CY93gx/qKA2iIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAKvvO3FvUZ2zmfRHxUy1ThjHPOTRXnuHmqCxNLiXuFXO21oAd54Aexc36hiXC1KDtKW/guPV6I11JWyRBt+BazxPu+KhX9cQndBIT800gyN9LVGA5VAPIrvdJryvdsqQOQwHsV1YBUFpyd7dnw8VwMDU2a+0lvy7sl4+Ts92deGtyXckGsOkIw7vxVyotgI1Ggd3DlRSl6+MlJKS0ZcCx96XRFNbZXP1yehgA1ZpGAUfNUEMcAcx5q8vG8NUljc9p3cuKrLvbWcnfGa+DgR/MVV/+yDrqjHPW76Ju3lnwI7avYhu0as/ouPOaU+1y4G4IAWlsYDg5hBqSRRwO08FoJ6DNU96XsyEY4vPZb73bh7UxeKhRi4vW3hfe/me7iYnNRWZLvC1NjY4uOYcANpJBGHmvMpmkYFWd4XrnLM8AZVJoBuAXyWNsgz5Ef3ivJVa7k1l2Ve3lf9dDnVX9wpJCpF0XzLZZOkjP3mnsvG4j37F1WmItND/zxChyKxSk4tSi+hTu4u6yZ7Xo9f0VrZrRmjh22E9Zp944q3X59sNvkgkbLE4te3aNo2gjaDuXr+h+k7LbGcNWVlNduzGtHNO0Gh5L0eExiq9mWUvU6eGxaqdmX5evzgaNZLSq7GPa+J4rHKD4HhxBoQtaqy/7Nrwup2m9YeCvF0q9C7ydLB0cprPAejkPpU7En4m08QVoFgNHLXqWxp7szejdzGLDzrh4rfoAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAIiICl0mmwjjHecSeTfzI8kgGpG93otJ9Si3/jaIxsEZPmf+F23q7Vssx+y0fxBebxE74upJ/wDn9Rv63K0n2pPh7Gfu45K/spyWcu1+AV9ZrQ1ocCCXnBlG1pXDF2wDPFcrBq/ZvbroaoaF3ZZaSEbHt1hzBAd/MPJSrXOGMc87B5nYPNVTXkSQH7RaeRY73gLq0ktVXNiGzrO9jR/MfJekhivt4SVTetOrtbzfgi1t2i2V5kJJJzOJUixz6rq0qaEDxp8FGsbA5wBNBtOVBvr8VQaZ3s6GQ2eJ2wFzwetQjJu4cRjyXFw6qpffi9Ha/N8u8qyqfbjtsn37pIGEtYQ+Xac2s4cXcMh6lj7RbTUk1e9xyzLjyXy7rBJKQGjP+68Atjc9wsh6x60m127gNyv4f6fKu9urlHXm+f8AX3ZEKVOdbtTyXz5czNi0ZdKektXWPdj7ree8rrlu6SyGsdZLP6Obo+W8f3xW8dFXkuh9nXZnhqU6f2nFbPDh099fFl5047OzbIyoLJmbwcjtHwKprdZXRnHFpydsPA7itXbbioS+HA7WbHctxUIUcC1zeBaQvM4rBVMG9qPah6dffR8jn18NbPz9zJParfQ69vktqjkJpG7qyfdO3wND4Fdd5XYY+s2ro/Mt57xx896rHMWaNa1pwZQe1TlfevngfogLi9tQRvWf0GvX5RZGFxrIzqP4kAUPi0tPOq0a9VCSlFSW89BCanFSWjPIbRJ0dqLBm2TDhjVvuXqrHggEZEAjxXjemVo1LxkG57T6wfYvXrv+ij+6B5Ye5SJEhERAEREAREQBERAEREAREQBERAEREAREQGf0iZSaF29rh5GvvK+XwK2Sbgwnyx9yn37ZtdgIzacOezzy8QotnAkjcw5OaWnxFF5zGUnDFSvpJX8rMrzj2muJnNHLMJCK9kDKtKnZjsWnksDY2hwzqAcd6w+jN6uiBFAXNJY4Vpi00K0El7vnc2rdSNlSBrVc51KVdTAAAmgxz4Knh3h6dOSn+Wduu7uNNKcdjmWzLQ0PjByq5x4Na0kuJ2AYeYWftt5No+eUhrSa47u60Da6lMF22jWdHJI0E9ZsTaOA1hrB0uew6rGk4mgcuBu5gAlmAkkyYCOq3g1uzic+K3V5WpwhLT82vJdMld+FsmSnJ2sjG3tbbVaq6kbmWcGor1dbcXuOfIYD1qx0c0WkkDXS5bBnTbntxx3LStu8zSRh/YxcRvpTVbTctKyDDDBdH6dQjUh9ySVtyI0cLFvbnm+ZT2noLJC6R3VY2msaEnE0GQqcSFWDTGw/XfwP/pU3TtlLBaTua0+T2lW1joWMw7rdnALtxjtFirV2LczNv0wsP1w/cf8A0rgdLrDsl/8AXJ/SrXTKP/BzUAr83s/8rFo2M4DyRwzMRrbS0MJHpXYnEDpdoH0cm00HdV1b7obJicHDIj37wuGmsrDZ9RpBJlgyywlac/BaJzASoyjbJmyElJGDtNkdGaEeOw8ln7xubN8Q4lnvZuPDJeq2mytcC1wqPZyWZ/VL3y2hsdKRCKg2uLg5zh4DUw4lecx30qVNurhu+Pt7ardwK1bDJrL50KL9HV5dDaujJoycBlDscKltRsPabzIXrK8qtd0GRwLKstAI1TTaDUaw4EDFenWYuLGl4AeQNYA1AdTEA7RWqufSMR92k4/5fruM4ROMXHctDC3vod8rtVpl1gKPa3yijPvWysTaMA3KHck1RO/Y6ebyaej/APhT4Nq6jea+bi0ztREUjIREQBERAEREAREQBERAEREAREQBFHtlujiHXcAdgzJ5AYqrkv8AJ+jjPNxp6h8VVr4yhQdpyz4avwV3+uZGU4rVl1IwOBaRUEUKz7pehkDJDTWPUecGybaVyElK1btoXDaG9wt1pLdcNZqgEnDdz5LpntkkkbhLCyWE0DgcAa0pnXbTxVHE4rDV4JNyW9PZb9M2uPujXKaZgdJG/J7e8f5dpHSsOzWGEg51FfFSoLS6Qss8P08uRzEbe9K/g0eZoF16X6NdJHr2eWTXhq+OGUGVxOFWRzV1jUDJ2sTTMKbohHE2yufHrGWQUlc4UfrV1SwjuhpqNX4qlHBU6n/abTjFXai73tu0T01uk+GtyqqXbb3amjuuzNOoG16KMarNY1JAzc4nNzj1ieKjSz9LISOw3BvLf4qVeU3Q2U0wc6jR45+oFQrpZQBUK85SaUtZdp/pdF+lwJt52L2wxdj7xHm0/wBIVsGKssx60Q2lxOewMd8QrgBem+nJqjZ8f0i1T0KDTSCtgtv7GQ+Qr7lwu+8rOI46zRA6ragyNBBoMDirPSKLWslpG+GX+QqnstoHQQtYBXo2axoMOqMBxXTpJt2RpxOyknI6dJrzgdZ5I2SMe46vZcDk9p2cl3MvhpztEYrhTpWgeVVHvayDoH4CvV2faCuWWdvojyC3W2W7Wfd15lRz2oq11rv6cihvSWKQQsZIxxM0ODXAmgdXIFbIsVFeFnGvZqAfTM2bqlaEhV6jvLMu4aKUMjoc1QLhb17W70p6Dk2KJvta5WhCgaPD5pzvTlnd5zPp6qKBvJ3QN1i/VGsRStMac103pbBDDLKcmMc7mQMB4mgUxZzSmcOMVn2EiST7rTVoPN4H7pWEktAcLsaYoImHtBo1uLji7+IlXVmHVCobO4vkAGz2nJaMBa73qdF5v+epjeERFtMhERAEREAREQBERAEREAREQBZy+tIg0mKE1cMHPzDTuaNp9Q9mglj1gWmoBwNDQ+exRWXRA0UbE1vIkHzGKrYqFacNmlJRfH2/b14LhCak8ouxjopRXWIc9xzJOfiaqfFeNP8AK/j/ACVrarqAx2bHe51M+fmo3yKmBC8pPCV6ErPxsn638StsSidD71BGq6E6u0CU0PMUoRzXP9dQ99jm8dXWA8sfUu02NRprDwUnUxFs7Pql+rB7RLa2GcExua7kcuYzCrLZZHMJc0Vf/uD0TvdQdU8ADhSlfbrpFdYVa8ZOaS1w8QoZ0kns/VtTTND9axvzjOL4x2hxGKU6ybslaTya3Pl8zW4jt/6VidpdbmujsYaatfrSDiA0CtPxhWFzzNwLmlwpgBnXZtXn+kN9xGaFsbw6PWlexwOGrKAXD/UjcafbC1uj0D7QWMeXQxOaDU1a+Zu6Paxu89rcBmt0cNVqVYOnG/G+i6+xiN5VHbkaC7wXywz9xrnRNpk6rH9I8bxrta0fdO9agKNLZgGMawABhZqgCgABAoBuopIXqKVJUoKC3F5KysdF4R60Urd7HjzaVk9Hnj5PCXNeDqNBBjdWoFDsWyLwFwNqYM3LfCbjoa6tKNRJMoLc4Ojc0BxJp3HbwdymttTftfuO+CnG8Yh3wuJvWH6xvrR1GRWHilYgSSB8kGqHYPJPUIA6p2kK6UE3zB9a31rj+u7Pl0rfX8FFu5ujGysTXuoCd2Ki3HGW2eAHPo2V5kAn1ldE95wva5rZAXOBAArmRQbFZCjW7gB7FgyddrtDY2Oe7ICv5DisLPbSXPld2nmvIZNaOQ967dJr+EjtRp6jfWd6jaO2J08geew3LifS5D2rXVqKnG7z4Li9y7/LV5GG7I02jtkLW67u0cfH8svNXK+MYAABkF9SlBxjnrq+vtuXJIxFWQREWwkEREAREQBERAEREAREQBERAEREAUeSHcKjd/SfcpCLXUpRqK0vnzw4pmGrldrNrQmh3OwPhXPwX10SnvYCKEAjcRUeRUN90wnuav3XvYPJhC58/p3+WQcCE+zNrV/YpjgMOKy14uZaJHts0TpcgAymqCMHOfKTqMzyrrYZVwWx/UFlPaha/b85WX/cJXG32mnzbCI2N7TsBT7I3KvWwFKnTvVd89y7XRNvTw43RrlTVszzO9/0ZSRR/KY5WG1tdrmEYRkU7EZNCX54kAGuQXVo/pO0joZg9oBrlSWF3pAHZvGRWzltzGmkMBldvc7UrxyJPiFlNLop7SWx/JY2ThzWseJHawJIAaer1mmowPNSofU4qSiopLRWd+WtreDNcasYZLTvfnobm6tI9XUZOQWuwjmb9G/gT3Hb2lahjwRUGoX5wt9vtlic+z2mN8YdmM2vAODmnJ4yxC01y6cNjbrWeUilNaCSr28ejeOs3k7DiV2U09C2mnoe2IsNd36SLM6jZ2uhdQY0124ioILcfUtNYr9ssv0doidwEja/u1qFkyWaLhrjOooume2RsFXPaBxKAkos1eGnFiir86HkbGYrJ3n+k55qIYw0b3GpQHpVqtDI2l73BrRmSaBed6TaY9LWOElsW12Rdy3D+8Fg740tlneBJI6V/djaK05NGA5q80W0UtFqcJJBqx7u7+I988B4kLXOpGGT13Jav+c3ZEZTUct/A77ksMlqeAAej8tb4N4r1O7rC2JgY3hX8uC43ZdscDNVg5nafy4KYoQpty2567luXu3vfcstcRi73lr6BERbyYREQBERAEREAREQBERAEREAREQBERAEREAREQHGaTVa524ErNGwvfi/AZ0Pt5rSvbUEb1AlsLthB9Sp4rBQxNttuy3e/kQlBS1K9sDGEGoqDUUGts3ALssdnjEnTyOGtiWgmpBIoXOp3qYADAD1fZbvk3etQ5btk3HyKjQ+n0qTus9/K/G3HN5hU0ixvb5HPGYpwyRh2ObWnEHMHiMV5RpR+jGzE69itGqfQkJw+7KMfMHmt1Jdb+KiS3K7irrimZcUzxi2Xdb7OaOaXN3nrD99nvUVt7yd6I/hNfUvZpNHSd6iTaGsdm0HmFi0lo/H+GLSWj8V7HlDL8I7kw/CfcUN8OOUU5/B716l/wBDx+gfNdsehUY7h8yo/wDTl5kGq3FeZ5bHLaXmjIQ375I/hbir+6NBrXaSOlk1GHc4Rt8c3HyXoVm0Z1eyKcgrCG5H7netYcJy/KXhl5u7M7E3+UvBW83dnDRbQGw2YCpZI7b3R4itX+J8Ft4wAABSgyAyHKizUN0yDYVOgu6QbaePwUoU4w/Ff3rx7ycYKOhcoumzxObm6q7lMkEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQHyiUX1EB8olF9RAEREAREQBERAEREAREQBERAEREAREQH//2Q=='),
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
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKrnls03-uxCmh80B4pRZ9gx2c5EucCiMInw&usqp=CAU'),
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
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJHnLH2Yn2lfaAwXrFOdxZ-uDjIYUmk9oUyQ&usqp=CAU'),
                ),),]),),





        ],),
    );
  }



}