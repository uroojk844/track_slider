
import 'package:flutter/material.dart';

class TrackSlider extends StatefulWidget {
  final ValueChanged<int> onChange;

  const TrackSlider({
    super.key,
    this.selectedTrackColor = Colors.blue,
    this.unselectedTrackColor = const Color.fromRGBO(224, 224, 224, 1),
    this.steps = 100,
    required this.onChange,
    this.defaultValue = 0,
    this.marginLeft = 0,
  });
  final int defaultValue;

  final double marginLeft;
  final Color? selectedTrackColor;
  final Color? unselectedTrackColor;

  final int steps;

  @override
  State<TrackSlider> createState() => _TrackSliderState();
}

class _TrackSliderState extends State<TrackSlider> {
  late ScrollController scrollController;

  setPosition(ScrollPosition position) {
    position.animateTo(
      widget.defaultValue * 10,
      duration: const Duration(milliseconds: 250),
      curve: Curves.linear,
    );
  }

  int scaleValue = 0;

  @override
  void initState() {
    scrollController = ScrollController(
      onAttach: setPosition,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    scrollController.addListener(() {
      int pixel = (scrollController.offset ~/ 10).toInt();
      setState(() {
        Future.delayed(const Duration(seconds: 1));
        if (pixel <= 100) {
          scaleValue = pixel;
        }
      });
      widget.onChange(scaleValue);
    });

    return SizedBox(
      height: 80,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: scrollController,
        child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: width / 2 - widget.marginLeft),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(
              widget.steps + 1,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: 2,
                height: index == scaleValue
                    ? 80
                    : index % 4 == 0
                        ? 40
                        : 20,
                color: index == scaleValue
                    ? widget.selectedTrackColor
                    : widget.unselectedTrackColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
