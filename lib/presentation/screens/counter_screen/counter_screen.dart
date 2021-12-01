import 'package:counter_app/presentation/screens/counter_screen/widgets/animated_circles.dart';
import 'package:counter_app/presentation/screens/counter_screen/widgets/counter_slider.dart';
import 'package:counter_app/presentation/screens/counter_screen/widgets/counter_value.dart';
import 'package:counter_app/presentation/screens/counter_screen/widgets/plasma_background.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/strings.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            PlasmaBackground(),
            Positioned(
              top: 48,
              child: Stack(
                alignment: Alignment.center,
                children: [AnimatedCircles(), CounterValue()],
              ),
            ),
            Positioned(
              child: CounterSlider(),
              bottom: 48,
            ),
          ],
        ),
      ),
    );
  }
}
