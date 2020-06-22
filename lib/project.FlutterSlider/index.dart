import 'package:flutter/material.dart';

class SliderShow extends StatefulWidget {
  @override
  _SliderShowState createState() => _SliderShowState();
}

class _SliderShowState extends State<SliderShow> {

  double _sliderDiscreteValue = 20;
  RangeValues _rangeSliderDiscreteValues = const RangeValues(40, 80);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Slider Examples'
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: SliderTheme(
                data: SliderThemeData(
                      valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                ),
                child: Slider(

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
