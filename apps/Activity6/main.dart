import 'package:flutter/material.dart';

void main() {
  runApp(AppTabBar());
}

class AppTabBar extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State {
  Color buttonColor = Color.fromARGB(255, 70, 130, 180);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.auto_awesome), text: "Aba 1",),
                Tab(icon: Icon(Icons.ballot_rounded), text: "Aba 2"),
              ],
            ),
            title: Text('Feliz 2021!'),
            backgroundColor: Colors.amber,
          ),
          body: TabBarView(
            children: [
              Center(child: RaisedButton(
                child: Text("Feliz Ano Novo!"),
                onPressed: _changeButtonColor,
                color: buttonColor,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                splashColor: Colors.white,
              )),
              Center(child: Card(
                child:  Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                  leading: Icon(Icons.celebration),
                  title: Text('2021'),
                  subtitle: Text('Feliz Ano Novo!')),
                ],
              ),
            ))
           ],
          ),
        ),
       )
     );
  }
   _changeButtonColor() {
     setState(() {
        buttonColor = Color.fromARGB(255, 18, 32, 47);
    });
  }
}