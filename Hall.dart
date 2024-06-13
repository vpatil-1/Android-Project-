import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:aquos_services/About.dart';

import 'package:aquos_services/Contact.dart';

import 'package:aquos_services/Use.dart';
import 'package:aquos_services/Emergency.dart';
import 'package:aquos_services/Categories.dart';



class Hal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: AnimatedTextKit(animatedTexts: [WavyAnimatedText('Hall Booking Services',
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
                      children: [Text("Name:- Vinay Bole",style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.bold,),),
                        SizedBox(height: 7),
                        Text("Field:- Resault",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 7),
                        Text("Address:- Bhusawal",style: TextStyle(fontSize: 12,
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
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj9iAlyIUFlZdZ_Zg1TBaU7kZHVLVG7_hW6g&usqp=CAU'),
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
                      children: [Text("Name:- Sushil Patil",style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.bold,),),
                        SizedBox(height: 7),
                        Text("Field:- Swastik Resault",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 7),
                        Text("Address:- Talwel,Dist Jalgaon",style: TextStyle(fontSize: 12,
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
                  backgroundImage: NetworkImage('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABgFBMVEX////sAIwIoc3sAIrrAIcAnszSSXnzabfWQ3fPTHzZPnXKUn/tAI/LUH0Aos7dN3PGV4H1h8PgMHLBXIP3ns/95PL81+x4hKiJfKC9YIbtG5RiirAAnNDkJ3D6xuS4Y4izaIyua46pbpCkcJP4pdTyXa/+6/f/+f2adpmEf6J9gqVqh61Rjrc4kbwUlMKfc5WSeZz2k8rvPqDv7++goqTn9vrk5OWLjZAAndP0drz5t9z+6vaZm53Oz9DA5fGq3OyP0ebV7vb70Oi3uLqDzeRrwt4wrtS6p73wX5jv2eJMt9j0fL+04O7vNZ/6wuLg8/itr7HX5O1arM6OmLaipsC9vM+tka3VxdOyfZzct8fKhqN8qsiRi6rTz9zq5ezXb5TtsMTFk6zYp7t1mrzpytXsb53SiqXTeZrnAGj3rMivXYqCcqByeae9TIGiW5FPf7PLMny7QYnwVJH2osH0jbXgZpHTrcCxv9Kcr8jgWK26Mpt4X7HXCZGgSqVsbrZXeLsZFRLlAAARJElEQVR4nO2djX8SRxrHd7NLUEMxGKBmjUQtsGpNWnYJEUIIgYDNC0nU1ndTtal6Z++8866t13vxX7+ZnbdnYXclplmGfvb3UQO7s2S+zDzzPPOqokSKFClSpEiRIkWKFClSpEiRIkWK9EfQXmNto4O0NOqMnIiWGhtbyRhRZ/DubUe2PYKc/V5qILwJpqa4vrS+1rlzZ2Hhxo0LF7788vO733739GBUeTymmgJwYmKdXtzpTMQWFxcXOOHn169dO3/r/nhCdgRirLuHLjQ6c3Nzi4sO4Q1OeP3a+fNfX7133xx1fo+upS2A2EF8N+e8CK85hFe/GkfG9SSop92bN70Jr1PCL648GD/GNYj4MUKEePnB5qizfFRtgNYm5kN4DRBeuvRw1Fk+oswtF+JHy/DSpdlH49WsrtzuQkRAuOBThvOzr8aqppq5HWiKgPDx48fv39+9O0g4PzMzVoi7GZfjx4SxOxs7PFC1D55++8RNODszczjKLB9RKyVly4UY22j0x+H20yduwunpcSrFVGvJZYoxz1QHt5A/FIRTn40RYquKYnBQiItN73Sb9yDh6e+LoebyODILWWUNFuLEnk/K+7AMJ78PNZfHUrrqisEnYht+KTcfCMLTp56FmMfjKZPIKC5T7Pr2+A8eCMLJyfExRQMV4l5ymEJUzOfznPDMzyHm8XiqGkV3DJ5s+KY1H3HCU2eehZfH46mm1RRXDE66w946uDTLCb8Zl75UK1HAP2B3eMs/9SYKaSjhuWch5fC4yhiJFfRjvQtMsemf/IUg/HlMCrFo6Xn8cwf4/diab3LzFSM8Oy6FaBb0uPPzB9DadNd90x9ywos/hpbJ4ymuW04M9stCEpiir1c0X/IyvDgmsVtVT7Twz83LiwBxcBycaXOKEb5+FlYej6eqrjqGqMxfnQAV1d8UZ3gZ/jOsPB5PVV2vOi+ez1yDsY2vKb7ghGfHo5pWdc1yXhzOztwA9dQ3QN2cZoQXs+Fl8xiKa5rhvNicn55dGMIUzVeM8PWfwsvmp8ssaGrC8d3I1U39GZiir+N/dpoRjoUhFi1N1TLOy5cz05NvYI/fJwZ/yAm/CTGjn6ysoao6sacX09NTkz9BU/RubTY54btxCNxyCUSYc14+xISnYWvjHYObU4zw4jgQ5jVOeIgIT5/6C3T8nt1hc5oTroSa109TXOeEm5hw8uxfYx9x/Ob3nDATbmY/SYYow008UDh55twbaIoe3eHxImyhIlR1JzBVDgjh2ddvgx3/eBGWHELSljLCi39bCDTFsbJDE3lDREgyygjPvf479IrNgYdEWyp/YIp9hUpjGkB4zjUB3u8VhT88J7+3wC2pSuNSQPjOtRalvzt8KDx++Dk+orJOEWoF8o54C0K4FDD4JuJS+ccxUtgKVX2bvDvkhN/0rUVpwofMV5zwH+Fn+WgiRaiqNfL2ISfEZbMGCF0x+MoM7z21RpHro8ixQlU1aEZfcEKnV+QaBwetzUPexz8nu7OokSLULNrmP+eETs/WzxRfccIfJW9KiwnHClU6TKOYj3hbSgp1D8y6CccPxtok7+Kb26SOqjo1w4N5FtOwYAyuRUmyGPwFHy99LXnMlicliPw9raSHs4zwHQtVwFqUWJKY4qYY85a8h58zKKEWp1decEJhX1sDjv/luMxbFHusCDVaSZVHnFC4uQFTPORzT2ffSR2UmgWdAfZogR3MMsLXYBgUOv5Y0zV/KHc7U1KZ9BK9dMgJXaMvTeD3k7cfiTngU1IXYY6VIIq6WYP4fJ4SnnNHm3AtysJlTnj2Wei5PoKy3AhFER5c4oTPXImh40/emOVrMWT29sIIhatQfuGEZ/qWyqyDQkz+RO3wjNQLFKsCUEvTawdXOOHAii7QHU5OXJ121kRJ3czUVAHIQlLl/mVG6GFgIAZPLlzChFLX0ZahCcJdetF8wAhPTXpkHpriAopLp2Re82X2AOA2u/rwMif06tVCx5/8aeq01Ea4DYywx+rowYMrnNCzeMBalGTsC6m79iUAaPAu+r0vGOHkV95TvyAGTw4MvsmkXEI0M2SlENbBV4zws6mFHe8n4Xpw/7UoI1cGtjKsT6HY9zjh6Td+q9pcMbj/WpQRC7p6vcDjSrxOnRJOx3zrYCNwHFwSpUAJJngH4unXnHDqTdJ/+t5zT6ZcqokS5COIyAi/5oTTl1Ez4r/MJGgcXAploRGm2FX7iSAk62l8Fwm7Bt+a4WT6KDItaIQ8cPn2PCecOe+Ymv9Kb7gePClfPa2CEjT4UO531zjh7BUyvR3r+n7G2hALikamvABUE9wIb18XhPNsFUbM38bgnkzJCnEXunrWZVLszwXh/AVWQDEfp48lTFGyQiy6XL0wQkD4covn3X/LBRyZClhIHL7MOGhleLyt/PqlIHxQ5Pufghbrg3oa9EWErhIwQiPHrj51dsFSwk0QtPjvDEIuQyzq92+RQteuZ7xtXwCED3HkOZQnEKFNzH93Tchyufoqu2r/AAhv4Su8FQlqapQlXtTSVFNXvM0HZpT3NwThPeeYFh6VBQcsIpksoZvL1fN4+9cbgJBssuf1L7hwhL0m/XdIhSkYbwNXvwAI75NrojENdHWirQmszaEJGqHOR56W7gDCW/RiYyh3MXRtDklmDxihcPXkFCFCeI9dXB+SsDlcWYekEjRCPivdXBSET/hJF3u89gV7umHLOhRlgScUnd6dRUD4lCcWnaNgwmHThSIYrXFPuD4BCL8TiYfN+dJQwU84aoEiTPA6urUoCO+C1EOXjQh+Ru4ugK/X2ESh0lkUhHfhiWzrQ9qhRIRFYITc1+/EAOFtmHzYtlQiwjT0FOxick4Q/upKPnQbKQ0h3tLExfpMzTlB+N6dfsiYRqKWJmMIK2Td3qWkIPyh71jEIeNSibxFzSNea94UhLf70otozH8DKZY8Hj8FzJD1e7tznPDXvuRgwDe4aytP1AbMkO6oUBo3OeH7/uR7wzYg0kTecD6b7jdQNjjh44H0w43TuHpPIx7GKIKGhu43ULqcsN8Ih6988vSAXU0pubR3kxF6fPvdISufPKMYWUBId1Q0GGFzMPnSxHCVT6KRKA/CJiW845EcHIgVWDQSjSZmBgk3CKHngV6d4bzcnkQjwiuAkJwpoHQIodcAkghUgs1QplF94C1YW0oIm16pRc4DR7wbUs3MWAP+cAsTelZCcaJZcCWVa3YNrLLUSQcfl6G3OxftTGBQKtkMKYy8ySgUJvTOmFgPlAxoSZuSzXKDgTadrL1AbWnTM+nOUJWvIQpQjpUKoAdMl8qu3fTOPzhXMOBAOrhfb9RBNxVYiEhOSmr4xNQi7wHtDNwbPPKAjSoDmhqnC7zkEyqDVXl+ky1LcFdCwAlEIQtUUyNgNyRoSP2KsAHPx5Ro5R6Y3tbyvqnA1LxPqLnXSbpKUIZ2lCoONsf47uIB9c/TThudmKsAZQJUcqqwxJJPGrhwNNntPwx6r7nlKj95WhkqMFZjeO+8XnJbWCzW3WquNdaRGjvNTnfCXX7SAcK5Gb4Pz62NPoIJhymJhV4N3JwY9QjigOL9HqNfjeQghb9iG3KVoOJevK6nvFK4PV0wX1KKtQl9SsO1z2mvFEvNIYsxtiWLo3cLDJuCWUSX1jseBjfA122Gm/GhBbdyqWrce9fZztZEMGOsK58FcrnqqV7wcRo7XVSOSR+8WHJDzgpKtQ0LUde2fULU9Y1uDPuIQbzOmrzl5wguoHUcY8kzgjNz//rt32/niC/Ewu4w2e2sjXouewjB5YkYUTe2c/32mElbmq7r2n9++++///fhw9u3Hz50NtZ2pK6cQKYFKypi1NRePN/KFE2k4kq2lrIMTaO3dPwqoRq1j3+uRCq6S9EpSD1hWAUkq5dAVP231fECVHBz0w/hFJgjjxs+cbrUKiU8SHykF8bjiOA+tXr9NdVHmpqSeTd6gIqpoYpRs3Y//lmyqmUNNCn9eHqiNKYFSJUrJALqquYXDYyTzFbc8Gw+EV7Cykt+utWQytTiBg5fwApp7B2tUmu866dLxVapavWMhCOjZxVStZU/EB6Vmcm2cru5XCubGXvbixQpUqRIkT5N2BtmM5/u5Z3nR+JHdwtxoWpplwaaRXqBvM3kCz1DxdFMIZ01lXx8UEoWfFA13XLBmLU4CojUhGGlsqGHQmndJdVIOXnLqM5bcixNHoWldNwJXYoXq/qAEkrO/TlWWqDULI0/n4iHHayn+ztHujPkkiETiXhzkBl3dRI1I7M92KFKgOMjKUuPjmwU3c+z/xFrdISoz266CEvurpNehSvgfAn5tpS+8WV8XpHnlNZJE+LRXfZV67uQcIWdAU1TaC38v1qBLqMz/CYIxR2yhZF/HeBG7mO5+v0JtUI+n08XaAbSkJBu7jaqKEHVSuDTeFI9C4muuDUsR4wwgV73WMFmxdmnmlGIW/TLEucvhkdIZrSLZKjbTUi20tAtpWYujqzILGKV6Hez4ryjKJqVLRYzKfpV5Xkd1eOoETV3DVpjwjRFSJghhKgeDhCqRrrfm+UpIX3LCHEquggQfSpd8MhOe8uQ+Ve2zDoU0VpqpVKpbYt83QVXS5Pn1cyKp+G4BSM03YTOXFyVFTx9mm/YpGZvhOgyBlsaC/92QZjhg6Y4TS/F8+ZDiMuQVfcUPVmSJ+KrA0Nsawa8heGM7wJvkYZ3NY3PMXkSqr1aLlejU1daja5eEQtXTLpgJ8RB5EF/aKTdhErKNdWksTN5vAnJ10BTZmQj1Gi7V3ITKplqTxWDiWxXlD8hFd7FmOqrpVnqU0KcqmL+MIe0W6UIGTehoqzkSgWDGSRdyf8xQqf9rPUR0XXIQctXT4aQVSO6mKbmIqT9BLO1TQlzwxAaTuhN9xqxU/ta7G14gG7CFequ0pCwaPTSpM9TJMEK/V/JfAgT1NJIMZk0aNMKraJZzLO1OmFOGDN/WEJKsTYwDwnzGurzWNVSukSjOq0YQNir1QgGjYJazJ0mrEKP2rI+gqiN+EPWZCKrEYRkPxTwl6yK+fpDtjWFhGb8FFQeeWtqqDPGg97COXoHRN598058yt43pjHjpK6ThdRmf19LS4TbQRwg1JwDdQVhwT1JqicCPb4TtdElnOyQopTq8khGyFPGrlEMVI+MQt5pA/koRiaFukzMh+uJOK9hefKMIHTUww1MjTzNzpTMFRLkA1BFNfwWkZ2YcimodI3G1kXyvoSzs5JLIWeYQK2klQKhd2vbScKqXIa8dea8zXxKvMHvc6ke/gCjkJZ4StUsHnOU7NgfEClSpEiRQlfF+deu2OQ1+mlXKuycpIpz17bJa5u8rNCHyE2eAP2Df9rgMvmcivOyQj65wlNU+CMs4QlpGf+6Sr1cX1Vs9Br9aS/vt8m9/Tq6ipKU0T/t+j56XUZ/l9t2HWWtXK7TZEp5Gf2zumy30YVyvVwm+cUfir+NZXS1Ul4uV1AS/MntZZyiUsePVPAjq+iRkyYst9GvQUTt1TJmaa86t1brNv6KV52M7tdXbUq43EaEKH1lmaLgrwdlt4zzj1KUCfn+vmI7P+o4DU67uow/ub2Pv0pCiB+x0dMV78z9PoSrhLBdx9nAvO36KvmFlXoFE5br9X1Uk1bxF03KcNkhtBkhSlDG30cblxb6KErYLmNCe7mMf4VNCFcx4TKuFA5heX/ZIbSXT5KwXq7QWorzqpBvltxzainiRDQov/U2JXTe22VShXFeV1EalF0HDdXSfQKOU6A6v1/BFYMS4nvtffy8Q7hv10ktrZ8goU3bEZu8IVdsfpP+5ffIX/AIvWCz6+JhkgI8RW/i9oVfpC3NCQJGihQpUqRIkSJFihQpUqRIkSJFihTJV/8Hz7q+2tSUFMUAAAAASUVORK5CYII='),
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
                      children: [Text("Name:- Kisan Badhe",style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.bold,),),
                        SizedBox(height: 7),
                        Text("Field:- Radhe Krushna Lawn",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 7),
                        Text("Address:- Mumbai",style: TextStyle(fontSize: 12,
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
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKUZnXYE7vofKCVyYkR0Dsj6FP2tp6OJxe2Q&usqp=CAU'),
                ),),]),),
        ],
      )
    );
  }
}