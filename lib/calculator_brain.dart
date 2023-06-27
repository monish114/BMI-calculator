import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(
      {required this.height, required this.weight, required this.bmi});

  final int? height;
  final int? weight;
  double bmi;
  String calculateBMI() {
    double bmi = weight! / pow(height! / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to excersice more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good job!!';
    } else {
      return 'You have a lower than normal body weight. Try to eat a bit more.';
    }
  }
}
