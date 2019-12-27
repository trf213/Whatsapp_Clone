import 'package:flutter/material.dart';
import 'ChatsPage.dart';
import 'package:whatsapp_clone_app/StatusPage.dart';
import 'CallPage.dart';
void main() => runApp(MainPage());


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp", style: TextStyle(fontSize: 25),),
            centerTitle: false,
            backgroundColor: Color(0xFF075E54),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search, color: Colors.white,),),
              IconButton(icon: Icon(Icons.more_vert, color: Colors.white,),)
            ],
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              labelPadding: EdgeInsets.symmetric(horizontal: 2.0),
              labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),

              tabs: <Widget>[

                Container( width: 30, child:Tab(child: Icon(Icons.camera_alt, color:  Colors.white, size: 20,)),),
                Container( width: 100, child:Tab(child: Text("CHAT",style: TextStyle(fontSize: 15),),),),
                Container( width: 100, child:Tab(child: Text("STATUS",style: TextStyle(fontSize: 15),)),),
                Container( width: 100, child:Tab(child: Text("CALL",style: TextStyle(fontSize: 15),)),),
              ],
            ),
          ),
          body: TabBarView(

            children: <Widget>[


              Icon(Icons.camera_alt),
              ChatsPage(),
              StatusPage(),
              CallPage(),
            ],
          ),

        ),
      ),
    );
  }
}
