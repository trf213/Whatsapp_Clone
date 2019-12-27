import 'package:flutter/material.dart';


class CallPage extends StatefulWidget {
  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: <Widget>[
          Container(
            height: 80,
            child:ListTile(
              title: Text("Tabari Rudder-Fields",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              subtitle: RichText(text: TextSpan(children: [WidgetSpan(child: Icon(Icons.call_made,color: Colors.green,size: 20,),), TextSpan(text: "26 December 2019",style: TextStyle(color: Colors.grey, fontSize: 15))]),),
              trailing:Icon(Icons.phone, color: Color(0xFF128C7E),),
              leading: Icon(
                Icons.account_circle,
                color: Colors.grey,
                size: 60,
              ),
            ),),
          Container(
            height: 80,
            child:ListTile(
              title: Text("Tabari Rudder-Fields",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              subtitle: RichText(text: TextSpan(children: [WidgetSpan(child: Icon(Icons.call_made,color: Colors.green,size: 20,),), TextSpan(text: "26 December 2019",style: TextStyle(color: Colors.grey, fontSize: 15))]),),
              trailing: Icon(Icons.videocam, color: Color(0xFF128C7E),),
              leading: Icon(
                Icons.account_circle,
                color: Colors.grey,
                size: 60,
              ),
            ),),
          Container(
            height: 80,
            child:ListTile(
              title: Text("Tabari Rudder-Fields",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              subtitle: RichText(text: TextSpan(children: [WidgetSpan(child: Icon(Icons.call_received,color: Colors.red,size: 20,),), TextSpan(text: "26 December 2019",style: TextStyle(color: Colors.grey, fontSize: 15))]),),
              trailing:Icon(Icons.phone,color:Color(0xFF128C7E)),
              leading: Icon(
                Icons.account_circle,
                color: Colors.grey,
                size: 60,
              ),
            ),),

        ],
      ) ,
      floatingActionButton: FloatingActionButton(child: Icon(Icons.phone), backgroundColor: Color(0xFF128C7E),),
    );
  }
}
