import 'package:flutter/material.dart';


class Message extends StatelessWidget {
  String name;
  Message({this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: false,
        
        backgroundColor: Color(0xFF075E54),
        leading: BackButton(color: Colors.white70,),
        title: RichText(
          text: TextSpan(
              children: [
                WidgetSpan(child: Icon(Icons.account_circle,color: Colors.white,size: 50,),),
                TextSpan(text: name,style: TextStyle(color: Colors.white, fontSize: 30,))
              ]
          ),
        ),
      actions: <Widget>[
        Container(padding: EdgeInsets.all(5),child: Icon(Icons.videocam , color: Colors.white,),),
        Container(padding: EdgeInsets.all(5),child: Icon(Icons.call , color: Colors.white,),),
        Container(padding: EdgeInsets.all(5),child: Icon(Icons.more_vert , color: Colors.white,)),



      ],
      ),
      body: Stack(
        children: <Widget>[
          Center(

            child: new Image.network(
              'https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),

          new TextFormField(
            decoration: new InputDecoration(
              labelText: "Enter Email",
              fillColor: Colors.white,
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(25.0),
                borderSide: new BorderSide(
                ),
              ),
              //fillColor: Colors.green
            ),

            keyboardType: TextInputType.emailAddress,
            style: new TextStyle(
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(child: Icon(Icons.mic), backgroundColor: Color(0xFF128C7E),),
    );
  }
}
