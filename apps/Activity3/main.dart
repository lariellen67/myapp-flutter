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
  String message = "Render";
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
           setState(() {
                this.message = "Burger Menu";
              });
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                this.message = "Search Icon";
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              setState(() {
                this.message = "Vertical Menu";
              });
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
        
                Divider(),
                const TextWidget(),
                Divider(
                 color: Colors.lightGreen,
                 height: 20,
                 thickness:1,
                 indent: 50,
                 endIndent: 50,
                ),
                const RowWidget00(),
                const Divider(
                 color: Colors.lightGreen,
                 height: 20,
                 thickness: 0.5,
                 indent: 50,
                 endIndent: 50,
                
                ),
                const RowWidget01(),
                const Divider(
                color: Colors.lightGreen,
                 height: 20,
                 thickness: 0.5,
                 indent: 50,
                 endIndent: 50,
                ),
                const RowWidget02(),
                const Divider( 
                color: Colors.lightGreen,
                 height: 20,
                 thickness: 0.5,
                 indent: 50,
                 endIndent: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class TextWidget extends StatelessWidget {
  const TextWidget({
    Key key,
  }) : super(key: key);
   @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          'Título da Larissa',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 32,
            color: Colors.lightGreen,
          ),
        ),
      ],
    );
  }
}

class RowWidget00 extends StatelessWidget {
  const RowWidget00({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('Texto 1'),
            Padding(padding: EdgeInsets.all(16.0),),
            RaisedButton(
              child: Text(
                "Button",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightGreen,
              onPressed: (){},
            ),
          ],
        ),
      ],
    );
  }
}
class RowWidget01 extends StatelessWidget {
  const RowWidget01({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('Texto 2'),
            Padding(padding: EdgeInsets.all(16.0),),
            RaisedButton(
              child: Text(
                "Button",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightGreen,
              onPressed: (){},
            ),
          ],
        ),
      ],
    );
  }
}
class RowWidget02 extends StatelessWidget {
  const RowWidget02({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('Texto 3'),
            Padding(padding: EdgeInsets.all(16.0),),
            RaisedButton(
              child: Text(
                "Button",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightGreen,
              onPressed: (){},
            ),
          ],
        ),
      ],
    );
  }
}