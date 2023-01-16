import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(title: "Atividade 1", home: MainActivity()));

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State {
  String msg = 'Hello!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Atividade 1 - DDMA6'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                msg,
                style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    color: Colors.pink),
              ),
              RaisedButton(
                child: Text("Clique aqui"),
                onPressed: _changeText,
                color: Colors.pink,
                textColor: Colors.black,
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                splashColor: Colors.pink,
              )
            ],
          ),
        ),
      ),
    );
  }

  _changeText() {
    setState(() {
      if (msg.startsWith('F')) {
        msg = 'Larissa Ellen Gomes Marques :)';
      } else {
        msg = 'Larissa Ellen Gomes Marques :)';
      }
    });
  }
}