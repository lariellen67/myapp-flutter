import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app dahora',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(title: 'App Dahora Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String msg = 'Texto legal!';
  Choice _selectedChoice = choices[0];

  void _select(Choice choice) {
    setState(() {
      _selectedChoice = choice;
    });
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: _changeMenu
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: _changeSearch
          ),
          PopupMenuButton<Choice>(
              onSelected: _select,
              itemBuilder: (BuildContext context) {
                return choices.map((Choice choice) {
                  return PopupMenuItem<Choice>(
                    value: choice,
                    child: new ListTile(
                      trailing: Icon(choice.icon),
                      title: Text(choice.title),
                    ),
                  );
                }).toList();
              },
            ),
        ],
        flexibleSpace: SafeArea(
          child: Icon(
            Icons.photo_camera,
            size: 75.0,
            color: Colors.white70,
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.lightGreen.shade100,
            height: 75.0,
            width: double.infinity,
            child: Center(
              child: Text('Bottom'),
            ),
          ),
          preferredSize: Size.fromHeight(75.0),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text.rich(
                  TextSpan(
                    text: msg,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  _changeSearch() {
    setState(() {
      if (msg.startsWith('F')) {
        msg = 'Você clicou no botão de busca :)';
      } else {
        msg = 'Você clicou no botão de busca :)';
      }
    });
  }
  _changeMenu() {
    setState(() {
      if (msg.startsWith('F')) {
        msg = 'Você clicou no botão de menu :)';
      } else {
        msg = 'Você clicou no botão de menu :)';
      }
    });
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Add', icon: Icons.add),
  const Choice(title: 'Attachment', icon: Icons.attachment_rounded),
  const Choice(title: 'Backup', icon: Icons.backup_rounded),
];