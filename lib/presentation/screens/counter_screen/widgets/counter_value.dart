import 'package:counter_app/logic/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animate_do/animate_do.dart';

class CounterValue extends StatefulWidget {
  const CounterValue({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterValue> createState() => _CounterValueState();
}

class _CounterValueState extends State<CounterValue> {
  AnimationController? animationController;
  @override
  void dispose() {
    // TODO: implement dispose
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    animationController?.forward(from: 0.0);
    return ZoomIn(
      duration: Duration(milliseconds: 500),
      manualTrigger: true,
      controller: (controller) => animationController = controller,
      child: Text(
        context
            .select(
                (CounterCubit counterCubit) => counterCubit.state.counterValue)
            .toString(),
        style: Theme.of(context)
            .textTheme
            .headline1!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 120),
      ),
    );
  }
}
