import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
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
              "Meu Status",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          subtitle: Text("Toque para atualizar seu status"),
          onTap: () {},
        ),
        Container(
          color: Colors.grey[200],
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            "Atualizações recentes",
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
