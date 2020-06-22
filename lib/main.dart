import 'package:flutter/material.dart';
import 'package:flutterarticles/projects/AnimatedList/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/animaged_list' : (context) => AnimatedListView()
      },
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Column(
          children: <Widget>[
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, routeName)
              },
              title: Text('Animated List'),
            ),
            ListTile(
              onTap: (){

              },
              title: Text('Sliders'),
            )
          ],
        ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
