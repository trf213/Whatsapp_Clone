import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/Message.dart';


class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:ListView(
        children: <Widget>[

         myChat(),
          myChat()

        ],
      ) ,
      floatingActionButton: FloatingActionButton(child: Icon(Icons.mode_comment), backgroundColor: Color(0xFF128C7E),),
    );
  }
}

class  myChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Container(
       alignment: Alignment.centerLeft,
        width: double.infinity,
    height: 80,
    child:FlatButton(
      padding: EdgeInsets.all(0),
      child: ListTile(
        title: Text("Tabari Rudder-Fields",
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
        subtitle: RichText(
          text: TextSpan(
              children: [
                WidgetSpan(child: Icon(Icons.done_all,color: Colors.grey,size: 20,),),
                TextSpan(text: "Left on seen motherfucker",style: TextStyle(color: Colors.grey, fontSize: 15))
              ]
          ),
        ),
        trailing: Text("11:52 AM"),
        leading: Icon(
          Icons.account_circle,
          color: Colors.grey,
          size: 60,
        ),
      ),
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Message(name: "tabs",)),
        );
      },
    )
    );
  }
}
