import 'dart:ffi';
import 'dart:math';

class Claculator {
  Claculator({required this.height, required this.weight});

  final int height;
  final int weight;
  late double _bmi;

  String calulateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'excercise more';
    } else if (_bmi > 18.5) {
      return 'good job';
    } else {
      return 'eat more';
    }
  }
}
