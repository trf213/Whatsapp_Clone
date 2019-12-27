import 'package:flutter/material.dart';


class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:ListView(

        children: <Widget>[
          Center(child: Text("Nah Bro watch ya cunt") ,),


        ],
      ) ,

      floatingActionButton: FloatingActionButton(child: Icon(Icons.camera_alt), backgroundColor: Color(0xFF128C7E),),
    );
  }
}
