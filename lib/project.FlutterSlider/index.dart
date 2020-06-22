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
                    value: _sliderDiscreteValue,
                    min: 0,
                  max: 100,
                  divisions: 5,
                  label: _sliderDiscreteValue.round().toString(),
                  onChanged: (value) {
                      setState(() {
                        _sliderDiscreteValue=value;
                      });
                  },
                ),
              ),
            ),
            Expanded(
              child: SliderTheme(
                data: SliderThemeData(
                  rangeValueIndicatorShape: PaddleRangeSliderValueIndicatorShape(),
                ),
                child: RangeSlider(
                  values: _rangeSliderDiscreteValues,
                  max: 100,
                  min: 0,
                  divisions: 5,
                  labels: RangeLabels(
                    _rangeSliderDiscreteValues.start.round().toString(),
                    _rangeSliderDiscreteValues.end.round().toString()
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
