part of 'counter_cubit.dart';

@immutable
class CounterState {
  final int counterValue;
  CounterState({
    required this.counterValue,
  });

  Map<String, dynamic> toMap() {
    return {
      'counterValue': counterValue,
    };
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(
      counterValue: map['counterValue'],
    );
  }

  @override
  String toString() => 'CounterState(counterValue: $counterValue)';
}
