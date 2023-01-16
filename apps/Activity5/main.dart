import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app dahora',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: MyHomePage(title: 'Texto legal!'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  SnackBarPage createState() => SnackBarPage();
}

class SnackBarPage extends State<MyHomePage> {
  String one = "Você clicou no botão 1";
  String two = "Você clicou no botão 2";
  String three = "Você clicou no botão 3";
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      body: new Center(
        child: new ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(
              child: Text(
                "Botão 01",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.green,
              padding: const EdgeInsets.all(15.0),
              onPressed: (){
                _showSnackbar(context, one);
              },
            ),
            RaisedButton(
              child: Text(
                "Botão 02",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.green,
              padding: const EdgeInsets.all(15.0),
              onPressed: (){
                _showSnackbar(context, two);
              },
            ),
             RaisedButton(
              child: Text(
                "Button 03",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.green,
              padding: const EdgeInsets.all(15.0),
              onPressed: (){
                _showSnackbar(context, three);
              },
            ),
          ],
        ),
      ),
    );
  }
}

_showSnackbar(BuildContext context, String msg){
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
   SnackBar(
    content: Text('$msg'),
    action: SnackBarAction(
      label: "Desfazer", onPressed: scaffold.hideCurrentSnackBar
    ),
   ),
  );
}