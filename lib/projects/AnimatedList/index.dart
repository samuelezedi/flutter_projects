import 'package:flutter/material.dart';

class AnimatedListView extends StatefulWidget {
  @override
  _AnimatedListViewState createState() => _AnimatedListViewState();
}

class _AnimatedListViewState extends State<AnimatedListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List Example'),
      ),
      body: Container(
        child: AnimatedList(
          itemBuilder: (context, index, animation){
            return Container();
          },
        ),
      ),
    );
  }
}
