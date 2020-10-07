import 'package:flutter/material.dart';
import 'package:whatsapp/main.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  Widget listObj(String name, String date) {
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
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      subtitle: Text(date),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.call), color: colorGreenDark, onPressed: () {})
        ],
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[listObj("Nome da Pessoa", "20 de setembro 4:58")],
    );
  }
}
