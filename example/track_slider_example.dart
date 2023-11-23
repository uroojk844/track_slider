import 'package:flutter/material.dart';
import 'package:track_slider/track_slider.dart';

class TrackSliderExample extends StatefulWidget {
  const TrackSliderExample({super.key});

  @override
  State<TrackSliderExample> createState() => _TrackSliderExampleState();
}

int trackValue = 0;

class _TrackSliderExampleState extends State<TrackSliderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(trackValue.toString()),
          const SizedBox(height: 24),
          TrackSlider(onChange: (value) {
            setState(() {
              trackValue = value;
            });
          }),
        ],
      ),
    );
  }
}
