import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:aquos_services/Card.dart';
import 'package:aquos_services/Categories.dart';
import 'package:aquos_services/main.dart';



class Paint extends StatelessWidget {
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
         title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Painting Page',
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
                  children: [Text("Name:- Soham Kolhe",style: TextStyle(fontSize: 21,
                    fontWeight: FontWeight.bold,),),
                    SizedBox(height: 7),
                    Text("Field:- Painter",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(height: 7),
                    Text("Address:- Available in all distinct",style: TextStyle(fontSize: 12,
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
              backgroundImage: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBhUSBxEWFhUTEiAYFhgVGBkcHhUfFR0iGRUWHSAfHTQgGx4mHR0XIjEiJyorMi4uFyA3ODUwQygtLisBCgoKDg0OGxAQGjUgICUrLzUzNS02LTctNS8tLS0tLy4tLzcvKysuNSstNTctKy0tLy43LS0tLTAtLysxNzItLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABgIEBQcIAwH/xAA+EAACAQMCAwYDBQUGBwAAAAAAAQIDBBEFBhIhMQcTIkFRYXGBkRQjMlKhQkNTcrEVYoKSweEzY3OTorLR/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAMEBQEC/8QAKhEBAAIBAwIDCAMAAAAAAAAAAAECAwQREiExQWFxExRRgaHB0fCx4fH/2gAMAwEAAhEDEQA/AN4gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABb317bWFtKpezjCEVlyk8JDuLgGq9w9rtOnNw2/R4/+ZVyl8odWvi18CG3XaLuq5nn7Twe0IQSX6Z/Uu00GW0bz09Ve2qxx5uhgc723aFuq3nlXTl7TjBr/ANSX7f7Xm6ijr9BJfxKOeXxg/L4P5C+gy1jeOvo5XVY58m2QWmm6lZ6paKrp9SM4S6Si/qvZ+zLspzG3SVkABwAAAAAAAAAAAAAAAAAAAAAAAAAABZ6vqVrpGnTr30uGFNZb/ol6tvkkc97w3Xfbpv8AirtxpRf3dJPlH3f5pP198IlPa5rVxq2vQsLDMlTksxj1nVmvCvfCaXxkyR7S2VabaoqdzCNe+ceKMHJYp88Zjnok2szw31wvJ6eCKaekZL9bT2/fup5OWW3CvaO7Xuidn24tXgpKkqUGs8dZ8P0j+L9EZSXZ3p9F4vNXtoy9Ek/61F/Q2BfbNu9wPO5b2o1/Bt8U6S9nlOU/i8fLoWNz2SbenSxbzrU36qcX+kov/Q777vPW23pH5/BGmiPDf1lCrjsw1CdBz0W5oXKXlCSi3+rj9WiG6hp95ply6eoU5U5r9mSx815Ne6JfuLYmtbUk7jTpudOPN1KWYzgvWSTzj3Tfvg99N3ha67aq03vFTg+ULhJKdF9FJv8A1S+KfMs0zX25RPOPqithr27T9EZ2vuXUNs3/AHljLMW/HTbfDUXv6P0l1X6HQe3dcs9waXGvYPMZcmn1hJfijL3X69Uc+7q25dbb1Hu7hqUJc6U10qR/MvhnD9/isy/s2vq+m3VOvH/gXM1b10ukKvSjUwunFlL4yfsR6vFTLT2le/8AP7/TunvaluEtzgLoDGaAAAAAAAAAAAAAAAAAAAAAAAAAUznGEW5dEsv5FRb38HUspqPV05JfNMQNRbG4aNne65qceJwVSVKL85NcUmvqoL4yL7s/12tqnabcO7ll1NNoSj6YVOnOSX+KrJ/Mxn2uEOzyztqckqd9a16PPklccSlS4n5eKMof4kQnZO5Vpm77KtccuCKt6rfLwNuEZP8Ali4J/wDTNDJHO15+Uekf4gxxxrEOoAfE8o+menfGs9TRvajtSnoOoKtYRxQrvGF0pzxlxXs0m0vaXsbzI12i2EL/AGZcKSy6dN1Y+zpeL+ia+ZY0uWaZI+Eo8teVWtdnVIbp0Gppl613lKDq2c3+y11h8E2uXo3+VHpsO2lC+uLSrHhdzRU4J5ahOlKWM/yVouJFtoXs9P3TbVKb/fwi/hUkoS/STN6z29b0dapV7ZNOMqnEl0ffPvG/lNP/ALjL2ov7OZr4T1+avSvLafgy9hcfarKE8Y44KWPTKy18i4KacI044gsL/wC82VGTK4AAAAAAAAAAAAAAAAAAAAAAAAAADm3dXDp323Srp8PcXTurR/zLMqK9M058S/vQfqRjbuhX259VdCw51JQlPxdHjrl+WW8Z9WjoLcuxLPWN0xu7pU5U5UHRuIVF1jhuNWEv2ZxfCs8uXPPLD13re7dn7Hvqi2TQhWuXOTVV86dvxRUZQg+tSOVnhzhNvn5Fz3iIr5/dHwba2MtTt9sUKevNd9Gnh5/E1Hl4vVro5JtPCfmSE5S0LdOt3251ct3Fxe8cfs6hLwpcX31OUMfglDK5YS6s6msbhXdnCcf2op4TTxnqsrk8PllcipM7zuke5H9/XkLLZ11KfnRlBe7qLgivqyQGpe2fWHXrU7ShzUWpzx+aSxThjz5OTx7ol09OeSIeMltqygG17Wd7uW2p0+ruYP5RkpSf+VNnTCNS9kW23HVJ3N0n9yuCKfTjmsz+cY4T95SXkbbJ9dki14iPBHgrtXcABSTgAAAAAAAAAAAAAAAAAAAAAAAAAAw+7tEhuPbla1nNw72GFJZ8LXOLeOqylleayc06ntONhfznuCP2ChDEVT4u9q1nTSjU7mL5yUpJvjliC41zeDq483QpOo5cMctYbwsv2bA5c27qdLU9ft7DRqf2e1rV4wq4eatxDKclVqJc8rPgjiK4ujOpKNKnRpKNFJRikklySS5JL2wav7XtlWsNLepaDTjSurSSqt00lxqDTcmujlHHFn0T9iS9nG97Teej8ccRr00lWp+jx+OP9x88fQCT3tSVK3k4ZzjlhZbfkks8/qjX+lbRuf7Wde+Sdw5cUcviVDPWrN4SqVPTom0sKMYo2OCSmSaRMR4vM1ie6z0rT7fTLCNK0WIx9esm3mUm/OTbbb9WXgBHM79XoAAAAAAAAAAAAAAAAAAAAAAAAAAAHn31JdZL6orTygKas+7hnDePJc2WFTVeD91P5rBf97Bz4U1n0zzPspxh+JpfFgYW51WFxRlCtSzGUXGSb6qSw109DW2i2NfQr+2o6ZYOFS3uZcV1FxVOtbz4m4TeeKU2nBcLXKUE0bicocWHjPofJOnFrixz9cAYha7L8i/zf7FS1xv93/5f7GU46CfNx/QKpSa5NcvdAWNPV+L91P5cy/oVe9hnha9pLDPrqQSy2ufTn1PrmorxcviBUD5lcOUedO4o1ZNUpxbXVJp4A9QAAAAAAAAAAAAAAAAAAAAAAAc46HouztW3Lqb3fcKi4Xs+6+9UG05z42k14sYiTnsT1itDa93K+rTnbW1eXdVamc8EY8UuvNJLDx5cTPTaXZpR/tu/q7rtaVRVrp1KDk1LEZSm3yXTOY8mZvtF0DU7zZ32HaNKnBVJKMknGnGnTXOSSXq8LCXRsDU+n6lqdhrVLcd48Urq+lSqQ6tUmuGLfm0lGSSx1pL1Jz2+yjPQbJweU76DT9cxkVX3Yhtp6XNWXeqt3bUJyqcuPHhk1jpnqi11naG69Y2DY2t1Tg69pcpzfeRxKnBSUJZ83hxXyAwnatDV32rW8tvZ7+lYqrBJ833TqylH3zFNcPnnHmVbp3Vabwr6HcW2FJX6jVh/Dmp0sx+Hmn6MnV9tnVK3a1bX8Ix7ilaOnJ8SypNVPLq/xRI5ujssuHv+3vtvRgqTuYVa8G1HgcJqU5R9VJZePXPryDEdtmxNG0fSJ31n3nfVrvM+KWY/e8UpYWOXMz2s7F0bafZ5fVNJ7zirWiU+OSkuTTWOXLm2SDtd25qW6dqqhpEYyn38Z4lJRWIqWeb+KMrvHSbvVdj1razSdWpQ4IpvCzy8wNQbzo1bjso0WFu8TlUjGLzjDlFqLz5c8HvuLdtxq3Zbd2Wv+G+s504VVLrUUasUqi9X0zjrlPzJNq+yNcutnaVb0YRdSzrQlWXGsJR64fme/a72bT3Wo3GiqKuY+GSbSVWPll/mj5PzWV6AYHcd/qGrQ0fRrCtKjC5sqU6048nKPByin6YhN4820eOpaP2b7K3LTjK6uqNe3cZSUO8feJrKTlGPLPLOGvNYJNuXYOp6ho2n1tIqxpX9hQpxWX4ZcMYqUW0vJp4fR5afXKwuubb7RN8UVb69Qs7empqUqsOcpcKwuk5N9enhA3JCSnBOPRrP1KiilDu6aXosfQrAAAAAAAAAAAAAAAAAAAAAAAAAx2qVb2jUgrNRaqPgeU/A3zVT3SSkuHzbjzXMx0tT1Din3OJTSqruuB5p92n3Um881JqPLz4+XR5kR8wjsSI9d6teThnT05x40s04Jt4pSnNLikot8SiuvnjqXdetfz0yjOlJRnN01PhjxL7zCk1nmkstrPzMtg+jcR+pq96qlXgpPhUX3TcHh921GbeHmXVySWG1F+pVaavJVYqvLwcc4upJRSnwqMoOLi2mnlr4xaxyM7hDA3j4CPX+q6lbQcqVNSjGNdySjJy+7mo0pLHXlzcerXNdMO40++ua+sVIV2lGP4Y+FZXDF568XVy59ORmcI+4G/kCABwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH//Z'),
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
                  children: [Text("Name:- Kirtesh Patel",style: TextStyle(fontSize: 21,
                    fontWeight: FontWeight.bold,),),
                    SizedBox(height: 7),
                    Text("Field:- Painter ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(height: 7),
                    Text("Address:- Available all over Distinct",style: TextStyle(fontSize: 12,
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
              backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
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
                  children: [Text("Name:- Ganesh Zope",style: TextStyle(fontSize: 21,
                    fontWeight: FontWeight.bold,),),
                    SizedBox(height: 7),
                    Text("Field:- Official Painter",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
              backgroundImage: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRUVFRUZGBgYGhkZGRkZGR0YHBocGRoaHhwcHRgcIS4lHB4tHxoYJjgpKy8xOjU3ISRIQDszPzA0NTQBDAwMEA8QHxESHjErISQ0PzQ2NDE/NDE/NDExNTQ0MTE2NDQ0MTQ0MTE9MTQ0PTY0MTY0MTE0NDE0MTY3NDE9NP/AABEIANMA7wMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABwIDBAUGCAH/xABGEAACAQIDBAUIBggGAgMBAAABAgADEQQhMQUGEkEHIjJCURNSYXGBkaHwFCNzsbLBMzVDU2KS0eEkJWNygrPC8TSDohX/xAAZAQEBAAMBAAAAAAAAAAAAAAAAAQIDBAX/xAAmEQEAAgICAQQBBQEAAAAAAAAAAQIDESExBBJBUbEiFDJhkaET/9oADAMBAAIRAxEAPwCX4iICIiAiIgIiICIiAiJbrVVRWdmCqoLMzEAKoFySToAIFyJFu2ul+mjlMLQ8qoy8o7FA3pVApa3pNvVLu7/S3SqOqYqj5DiNhUV+NAT54IBUekX9NhnAk2J8UggEG4OYIzBE+wEREBERAREQEREBERAREQEREBERAREQEREBETkt6N/sLgKgouKlSpYFkpgHgBzHGWYAEjO2ZtbkRA62JwuxulLBYiqlIrVpFyFVqgXhLE2ALKx4STzIt6RO5JtrlbWB8dwoLMQAASSTYADUknQSCukjfo4xjh8OxGGU9ZhkazA5E/wA6DnqeVsnpJ38+klsLhW/w4NncftiOQP7sH+b1WvHSISQqgkkgAAXJJyAAGpJ5QPkSaNy+jGkiLVxyCpVYXFIk8FMHkwBs7eN8hyva8xd+ujJOBsRgFKsou+HFyHA1NO+Yb+HQ8rHWo1XRtv99HK4TFN9QcqdRj+iJ0Rz+78D3f8Ab2ZrnkqSl0Zb++T4MFin6mS0arHschTY+Z5p5aHK1oqY4iICIiAiIgIiICIiAiIgIiICIiAiIgIiICebukE/5ljftP8AwSekZ5t6QP1ljftP/BIHOPofUZJfSVv6a/FhMK31Qyq1FP6U80U+Z4nvf7e1Gs+EyoqA5DMnIAZkk6ADmZNnRruH9GAxWJX69hdEP7EHmf8AUI/l01vLHRnuF5HhxmKT6050qbD9GDo7jzzyHd9enebd2zRwlFq9duFF0AzLMdFUc2PzkDIqneLblHBUWr1msBkqjtOx0VRzJ9wFychL2x9q0sVRWvQbiRh6ipGqsO6wORE8571byVsfXNWqbKLinTButNfAeLHIs3M+AAAydzN7Kuz63Et2pNYVad+0POXkHHI89D6A73pM3B4+PG4ROvm1ako7fM1EA7/nL3tRnfih/WeqdlbSpYmklaiwdHF1YfEEahgciDoZF/SbuD2sbhE8Wr0lHtNRQPeyj1jnA+9GW/3YwWLfwWjVY+wU3J9yt7DyktTyXrJh6M9/uPhwWLfr5LRqse34U3J7/mse1oetbiCU4iICIiAiIgIiICIiAiIgIiICIiAiIgJ5r38qq20cYykMPKkXBuLhVBzHgQR7JIXSbv8AeT4sHhG+s7Naqp/RjmiEd/xPd0HW7MO6QPhMmDoz3B4eHGYtOvk1Gkw7PMVHB73NVOmpztw2OjLcK/BjcWmWTUKTDXmKjA8uaqfWeUlHam0aeHpPWrMEpoLsx+AA1JJsABmSYFO19qUsLSevXbgRBmdSTyVR3mJyAnnffDeirj63G/VprcUqd7hFPM+LHK59gyEu7673VNoVeI3SihPkqd9B57WyLn4aDmTpMLgatQE06VRwDYlEdgD4EqDYwMaJl4jZtemvE9Cqi5Diemyrc6DiZQJ9o7KxDqHTD1nU6MlJ2U8smC2Od5Ubvcne+ps+rfN6DkeVp/DjS+jgexhkeRHoTZ2Op16a1qTBqbjiVhoR+RBuCDmCDPLeKwVSnbylN04r8PGjJe1r24gL2uNPETp9wd8nwFThe7YaoeugzKHTjQed4jvD02kV0fSbuF5PjxuFTqZtWpKOxzNRR5vNhy1GV7RbPV+DxSVUWpTYMjqGVlzDAyGukncH6OWxeFX6g51Kaj9ETq6D934ju/7eyHQdGm/vlwuExTfXDKlUb9qB3WP7wePe9eslzyYpIIIJBBuCMiCNCCNDJw6N9/BiguGxLAYhR1GOQrAD/sA1HPUc7BIcREBERAREQEREBERAREQEREBI26St/fo4bCYV/ryLVKg/ZAjsqf3hH8vrtbI6SN+xhQ2Gw7A4lh1mGYoqR+MjQchmeQMGsxJJJJJJJJNyScySTqbwPkk7oy3C8rwYzFJ9WLNRpsP0ng7g9zmo72uluKx0bbhfSSuKxS/UA3p0yP0xHeYfux4d71azRisSlJGd2VERSzMxsqqOZgUY/GJRpvVqsFRAWZm0AH3nlbnPPe/O+FTaFXK6YdD9VTOt9ON7asR/KMhqSb+/2+j4+pwJdMMh6iHIuR33Hj4DkPTechKhJm6Df/jYr7Zf+tZDM6/crA7VqJUOz6hRA4DgOiXbhFsmGfVtAk7pgP8Alr/aUfxiZvRif8rwn+1/+2pIv3s2dtlMOxx1VmocSAg1EfrFur1VF9Ze3b2Ztx8NSbCVmWgQ3k1FVFsONg3VYXHW4pFbjp17WB9WJ++hInnU77YPaVM0P/6LlywqeSu6va3Bx9kZapr4TlpUdp0f77vgX8nUu2Gc9ZRmaZPfUeHnLz1Ges90aqVEVkZXR1BVhZlZWGRB0IInlCdx0db8tgXFGuS2Fc+s0WJzZf4D3l9ozuGisvpJ3EOFLYnDL/h2N3QfsSTqP9Mn+XTS0j1HKkMpKspBBBIIINwQRmCDneerwUdLjhdHX0Mrqw9zKQfbIQ386PKuHqeUwdN6tGocqaKzvSY58NlBJTWx5aHkSHa9HG/QxijD1yBiUGTZAVlGrAcnA7S89RlcL308r4jB4jDMjvTrUGDAo7o1MhlzBVmAzFr5Scej3fhcavkqxC4lB1hoKqjvqPHzl5ajLQO3iIgIlFSoqqzMQqqCzMTYAAXJJOgAkVY3e7aG0qz0dlLwUaZ61YgAtrZmZgQgPJQOIjM2zACWIkX7kbyY5Me+zcc3lGs3C2RKsqBx11A4kZLnMXBtppJQgIiICIiAnB9I+/IwSmhQIOJdddRRU95hoWI7Kn1nKwPeTzt0g7ExNLHYhnR2SrUZ0qBWZWVzdVDAEXUWW2vV8CIHLO5YlmJZmJZmYkliTckk5kk53nf9G24pxbDE4hSMMp6iHWsQf+sHU89NLz5uL0d1cQ61cXTanh1z4GBV6p5LwnNU8WNr8tbicAEpp3URF9CqiqPcqgD2QPlWolNGZiqIikkmyqiqMyToAAJAvSFvw2OfyVIlcMhuo0NVho7DkPNXlqc8he6Rt+DjXOHoEjDIddDWYHJiPMB7I56nlbhICIiVCTL0HsBh8VcgfXLqf9NZDU+MgOoECfOl5wdmvYg/WUef8Ymb0ZVANl4S5HZfmP3rzzsEA5D3QUHgPdAlfp0YFsDYg5YjQ350JFMKoGgtEBESROjTcX6Uy4rEr/h1PUQ/tmB1I/dg/wAxy0vcOs6HsPjFwxNY2w7WOHRr8Vj2mXzaZ5A65kWB60iSzisSlJGd2VUVSzMxsqqJGW0t4E2ylTDYWtUw9emzPRQvwLilAzBIsVbUhScsib58MVKNWmrKUdQykWKsAQR4EHIyO94ujNC4xGzn+jV0PGFuRTLDmpzNM+q68rCR5sbfPH4CoabO7BG4XoVyzWI1AJPEh9Rt6DJf3X38wmNCqGFKsdaVQgEn+BtHGumfiBAy91dq16yFMVQejiKdg4Kngfwem4urA8wCbH0Wm/n20j3f7pDp4ZXoYZlfEkEFlsy0fEsdGfwXl3vAhpOl7e25OAotpY4hhz5rSv7mb/iPOExd0+kDCYDZ6UlpO2IBdnWwVXZmJDtU83h4BoSLAW5yPMDga2JqinSV6tVyTYZsSTdmZjoM7lifXJq3L6NqOF4a2I4a1cWIFr06ZHmg9ph5x9gGsDH6ON3q7Vqu08YCKtYNwKRYhWtdypzUcICquoW99RJHiICIiAiIgIBiICcV0uORsyrYkXekpsbXBcXB8R6J2s4jpg/Vj/aUfxiBAUREqEREBERAREQEROj3K3UqbQrcC3WkljVqAdkHRVvkXPLw1OliGf0e7lnH1PKVAVwyHrEXBqMP2an8RGg0zNxPNWpSw9IsxWnSpprkqqqiwHoAFgBKdnYCnh6S0qShUReFVFzYD4sTmSdSSZC29e8GJ2tXbD0FNPD0izMKh4FUU78Vaux7AWxsp08CZFYG/wDvs+OfgS6YZDdEORqEaO4+5eXr05GlUZGV0YqykMrKbMrDMEEaES7jfJhytIlkXIOws1Q83K9wHkvIWvc3Mx5USHTentqmFYpT2nTXqtkq4pVGh5BwPdy6twvAYnDujtTqKUdCVZWFipGoIlNKoyMroxVlIZWU2ZWBuCCNCDJBp1Ke2qYRylPaVNOq2Sri1UaHkHA92o6twocMdpV+Dg8vV4LW4PKPw28OHitaY9GkzsqIvEzsqIo1LMQFA9ZIErxOHem7o6FHQlWVhYqRqCJttyaqptDBM3Z8sg9rHhU+xipgTruVupTwFAKAGrOAatTmzeaDyQaAe3UzpIiRSIiAiIgIiICIiAnEdMH6sf7Sj+MTt5xHTB+rH+0o/jECAoiJUIiICIiAiJnbF2TWxVZaFBOJ28clVRqzHuqOZ9QFyQIGTuzsCtjq60KQtzdyLqi82bx9A5n2keitgbEpYOglCitlXMk9p2PaZjzY/DICwAEx90926WAoClT6zHrVKhFmqNbU+AGgXkPaTlbSxdrquveP5TVly1x13LOtZtOoK20LNYZqMj6fSD83nN7/AG7r4rCVPofCrO4qVUUBTieAWCs2vELAgHIkZ+MzS0vYPGFD4rzH5j0zz8PmTF/y6n/G62Ljh5ySg7PwBG47leCx4ri9wQdCLG99LG8tSfN9d1xiKFetg0QYmqqio1rNUprfiRTeys2QJ7wXhJtpB+z9lV69TyNGk71MwUAsVsbHjLWCAHIlrWnqRMTG4c8ww5VSqMjK6MVZSGVlJDKwNwQRmCDM3aeFp0j5NKgq1AfrHT9EpHdQ6vY6vkOQB7RwJUSHTqU9tUwrlKe0qa9R8lXFqo0PIOB7tR1bheBxFB6bsjqyOjWZT1WVh9xGsopVGVlZWKspDKykqykZggjMEHnJBpVKe2qYRylPaVNOo2Spi1UdluQcD3ajq3ChJu4u8Yx+FSoSPKpZKy+DgDrAeawsw9ZHIzpJ5/6Odo1MFtJKLqyeVb6PVRsiGJ6hI8Q9hfwY+M9ASKREQEREBERAREQE4jpg/Vj/AGlH8YnbziOmD9WP9pR/GIEBRESoREQERMzZOzauJqpRoKXdzkBoBzZj3VHMwPmytnVcTVSjRQu7mwHL0sx7qgZkz0NuXupS2fR4Fs1VrGrUtmxHdHgozsPaczKNyt0aWz6VhZ6zgeUqW1/hXzUHIc9T6N9isSFFh2vu9M13vWlfVPTKtZmdQt47F8I4V7R+H95pnMvOSSSfX7ZZaeLnzWy23PXs66UisLJlBlZlJE0Ni/gcaaZ8VOq/mPTMbfXYtXE4SqMCyo9Vg1UKFRsQoWxQ1MrGwGutrEgEwwmRgca1M31U9pfzHpnb43kzSfTbr6asmPfMdoI2zsUYUlKlem9YGzUqN3CW1D1TZVYZ9VeI+NprsNhnqNwopYgFjbQKNWZjkqjmxIA8ZOu9e4NDH1ExCOaTEjyrIvF5RQPN5VBYANn6QbCRJtvaatfCYWi9GgHC8BBNas6tYNWOrPxaJop0F9PXidxuHJpoXFiRcG3MaH1X5T7TqFSGVirKQyspKlSMwwYZgg53mdtnZjYZ1pVCPKhQ1RBmKZYXVGbm/DYm2Q4gM85IXRt0f8fBjMYnUyajRYdvmHcHu8wp11OVgajqN0tmHGphcfjaHBiqV+CoOr5ZOGyVHp2yOZI9VxYEAd1ESKREQEREBERAT45yPqM+ymr2W9RmNv2ysdvoM4npf/Vj/aUfxidnh3uo905XpRwLVtm4gKLlOCqR4rTYM/uXiPsitvVWJ+SY1OnnmIiZsSInW7nbiYjHFXINLD3zqsM2HhTU9o/xdkeJItA0uwNhV8bVFHDrxNqzHJUXzmbkPieQM9Abn7qUdn0uFOtUa3lKpFmcjkB3VHJffc3MzthbDoYOkKOHTgUZk6s55szas33crDKZGKxfD1VzPM8h/ea75IpG5ZVrMzqFeJxIXIa/d65rHfmczKGqczLTtPHz5rZJ56+HTWsVfWMtsYZpaYzRpthUZSRKbxeTShEptKiYtAv4HFtTbxU9ofmPTLuL2RQDVNoUMMlTFim3BnbiYKbZE8IY5KW1tleYYS83eysI6XLGwPc/M+E9Dw8l9+nW4+mjNWut+6NtwNw3q1Pp20FJLOaiUqgszsTc1KinQXzC+/KwMtxE9NzEREBERAREQEREBPji4I9Bn2JJjcaGvwNbMqTrp6x8/CZ7AEWIuDkQdDOfrnhcjSxNvEAaW8OU2WE2krZMQrenIH26Tj8fNFfwt7Nt6+8Ig3s6L8TTqs+DQVaLElVDqr0758NnIDKNAQb21GVzq8B0ZbSqGzUkojzqlRfwoWb4T0FKXcKLsQB4k2++du2pwO7fRZhcOQ+IP0lxnZl4aQ/+u54/+RI9AnfMwUZ2AA9QAmvxG11XJOsfcPfbP2TUYjGMxuxy5DkPy9HjObJ5Na8V5lsrjme20xW0b5LkPHmf6Ca/j+fnSYzP8mDU8Z5172vO7N9axHEL7PKS8seU+fH4S2z/ADl7/hNemS+7ygvLLPKePwkmFX+KVAzHV/n/ANzIw1NmPCoJPzqeURWZnUG1SzKwuDd9BYecdP7zYYTZKrm/WPgNP7zZATtxeHM83/ppvm9qsfC4NU0zPnHX+0yYiehSlaRqscNEzM8yRETJCIiAiIgIiICIiAiIgaTblKxD8myNvEafD7ppjU+dNJ1+JoK6lW0Pw8DONxtB6bFWGfI8iPETzfKxTW3qjqft0YrbjT6MQQOqxHqJH/uUPUv6fjMY1JSX9XpnNtt0yuP0/PzaA/z4/GYnFKg/zykGT5SOP55/dMcVJ8LwL/lDy+fn55S3x/NpbZ5k4TAVanYQkeccl9519ksVm06iEnjtaLyujTZzworMfAZ+88pv8Hu2ozqNxfwrkvtOp+E3dGiqDhVQo8ALTqp4k25tw12yxHTRYHYGhqt/xX82/p75vaVJUHCqhR4CVxO2mKlOoaZtM9kRE2MSIiAiIgIiICIiAiIgIiICIiAljF4RKi8LrccvEHxB5GX4kmImNSROnKY3duotzTYOPA9Vv6H4TUVcDVTtU3H/ABJHvGUkKJy28Ss9cNsZrR2jfgbzW9xl2nhajdmm59SN/SSHeJj+jj5Zf9v4cRR2HiG7nD6WYD4a/CbLD7snvv7EF/8A9N/SdLE2V8Wkd8sJy2lgYbY9FNEBPi3WPxyHsEz4ib61rWNRGmEzM9kREyQiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgf//Z'),
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
                  children: [Text("Name:- Nilesh Bari",style: TextStyle(fontSize: 21,
                    fontWeight: FontWeight.bold,),),
                    SizedBox(height: 7),
                    Text("Field:- Painter",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCBm7OZDbdLb4mVdsaZLsYe6Id-ie8snUoUg&usqp=CAU'),
            ),),]),),]),
    );
  }

  void setState(Null Function() param0) {}
}