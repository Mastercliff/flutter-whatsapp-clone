import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/chat.dart';
import 'package:whatsapp/status.dart';

void main() {
  runApp(MaterialApp(title: "WhatsApp App", home: HomeScreen()));
}

var colorGreenDark = Color(0xFF075e54);
var colorTealGreen = Color(0xFF128c7e);

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List floatButtons = [
  null,
  FloatingActionButton(
      backgroundColor: Colors.greenAccent[700],
      child: Icon(Icons.chat),
      onPressed: () {}),
  FloatingActionButton(
      backgroundColor: Colors.greenAccent[700],
      child: Icon(Icons.camera_alt),
      onPressed: () {}),
  FloatingActionButton(
      backgroundColor: Colors.greenAccent[700],
      child: Icon(Icons.call),
      onPressed: () {}),
];

class _HomeScreenState extends State<HomeScreen> {
  int tabIndex = 1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: tabIndex,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: colorGreenDark,
            title: Text("WhatsApp"),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ],
            bottom: TabBar(
                onTap: (value) {
                  tabIndex = value;
                  setState(() {});
                },
                indicatorColor: Colors.white,
                labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                tabs: [
                  Container(
                    width: 30,
                    height: 50,
                    child: Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  Tab(
                    text: "CONVERSAS",
                  ),
                  Tab(
                    text: "STATUS",
                  ),
                  Tab(
                    text: "CHAMADAS",
                  )
                ]),
          ),
          body: TabBarView(children: [
            Center(
              child: Text(
                "O modo de camera não está diponível",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            ChatScreen(),
            StatusScreen(),
            CallsScreen()
          ]),
          floatingActionButton: floatButtons[tabIndex],
        ));
  }
}
