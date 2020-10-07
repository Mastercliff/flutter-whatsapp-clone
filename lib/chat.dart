import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Widget listObj({int messageCount}) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            child: ClipOval(
              child: Image.network(
                'https://images.ctfassets.net/hrltx12pl8hq/4f6DfV5DbqaQUSw0uo0mWi/ff068ff5fc855601751499d694c0111a/shutterstock_376532611.jpg?fit=fill&w=800&h=300',
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
      title: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          "Nome da Pessoa",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      subtitle: Text("Safe meu querido"),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("12:20", style: TextStyle(fontSize: 11)),
          Padding(padding: EdgeInsets.only(top: 4)),
          messageCount == null
              ? Text("")
              : CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.greenAccent[700],
                  child: Text(
                    "$messageCount",
                    style: TextStyle(color: Colors.white, fontSize: 9),
                  ),
                )
        ],
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        listObj(),
        Padding(
          padding: EdgeInsets.only(left: 60, right: 10),
          child: Divider(),
        ),
        listObj(messageCount: 1),
        Padding(
          padding: EdgeInsets.only(left: 60, right: 10),
          child: Divider(),
        ),
        listObj(messageCount: 1),
        Padding(
          padding: EdgeInsets.only(left: 60, right: 10),
          child: Divider(),
        ),
      ],
    );
  }
}
