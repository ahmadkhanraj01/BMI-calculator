import 'dart:math';

class CalculatorBrain {
  final int? height;
  final int? weight;
  double? _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    if (height == null || weight == null) {
      return 'Invalid input';
    }
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi == null) {
      return 'BMI not calculated';
    }

    if (_bmi! >= 30) {
      return 'Moty Bhensy';
    } else if (_bmi! > 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else if (_bmi! > 15) {
      return 'Underweight';
    } else {
      return 'Apki kuri underweight ha';
    }
  }

  String getInterpretation() {
    if (_bmi == null) {
      return 'BMI not calculated';
    }

    if (_bmi! >= 30) {
      return 'Kam kha moty, dharti pr boj.';
    } else if (_bmi! > 25) {
      return 'You have a higher than normal weight. Try to exercise more.';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight.\n Good job!';
    } else if (_bmi! > 15) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else {
      return 'Isko kuch khilao pilao, Hata kata bna kr lana.';
    }
  }
}
