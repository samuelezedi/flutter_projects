import 'package:flutter/material.dart';
import 'package:flutterarticles/project.FlutterSlider/index.dart';
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
//        '/' : (context) => MyHomePage(),
        'animated_list' : (context) => AnimatedListView(),
        'slider' : (context) => SliderShow()
      },
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'All my work'),
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
                Navigator.pushNamed(context, 'animated_list');
              },
              title: Text('Animated List'),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, 'slider');
              },
              title: Text('Sliders'),
            )
          ],
        ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
