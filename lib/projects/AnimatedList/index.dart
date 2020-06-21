import 'package:flutter/material.dart';

class AnimatedListView extends StatefulWidget {
  @override
  _AnimatedListViewState createState() => _AnimatedListViewState();
}

class _AnimatedListViewState extends State<AnimatedListView> {

  /// Will used to access the Animated list
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  /// This holds the items
  List<int> _items = [];
  /// This holds the item count
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List Example'),
      ),
      body: Container(
        child: AnimatedList(
          key: listKey,
          initialItemCount: _items.length,
          itemBuilder: (context, index, animation){
            return slideIn(context, index, animation);
          },
        ),
      ),
    );
  }

  Widget slideIn(BuildContext context, int index, animation) {
    int item = _items[index];
    TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset(0, 0),
      ).animate(CurvedAnimation(
          parent: animation,
          curve: Curves.bounceIn,
          reverseCurve: Curves.bounceOut)),
      child: SizedBox( // Actual widget to display
        height: 128.0,
        child: Card(
          color: Colors.primaries[item % Colors.primaries.length],
          child: Center(
            child: Text('Item $item', style: textStyle),
          ),
        ),
      ),
    );
  }

  void addItem() {
    listKey.currentState.insertItem(0,
        duration: const Duration(milliseconds: 500));
    _items = []
      ..add(counter++)
      ..addAll(_items);
  }

  void removeItem() {
    listKey.currentState.removeItem(
        0, (_, animation) => slideIn(context, 0, animation),
        duration: const Duration(milliseconds: 500));
    _items.removeAt(0);
  }

  Widget sizeIt(BuildContext context, int index, animation) {
    int item = _items[index];
    TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return SizeTransition(
      axis: Axis.vertical,
      sizeFactor: animation,
      child: SizedBox(
        height: 128.0,
        child: Card(
          color: Colors.primaries[item % Colors.primaries.length],
          child: Center(
            child: Text('Item $item', style: textStyle),
          ),
        ),
      ),
    );
  }

  Widget rotateIt(BuildContext context, int index, animation) {
    int item = _items[index];
    TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return RotationTransition(
      turns: animation,
      child: SizedBox(
        height: 128.0,
        child: Card(
          color: Colors.primaries[item % Colors.primaries.length],
          child: Center(
            child: Text('Item $item', style: textStyle),
          ),
        ),
      ),
    );
  }

  Widget resizeRotateAndSlide(BuildContext context, int index, animation) {
    int item = _items[index];
    TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset(0, 0),
      ).animate(animation),
      child: RotationTransition(
        turns: animation,
        child: SizeTransition(
          axis: Axis.vertical,
          sizeFactor: animation,
          child: SizedBox(
            height: 128.0,
            child: Card(
              color: Colors.primaries[item % Colors.primaries.length],
              child: Center(
                child: Text('Item $item', style: textStyle),
              ),
            ),
          ),
        ),
      ),
    );
  }


}
