class BmiCalc {
  final double height;
  final double weight;

  BmiCalc({required this.height, required this.weight});

  double getBmi() {
    double heightInMeters = height / 100;
    return weight / (heightInMeters * heightInMeters);
  }

  String getResult() {
    double bmi = getBmi();
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "Normal Weight";
    } else if (bmi >= 25 && bmi < 29.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  String getInterpretation() {
    double bmi = getBmi();
    if (bmi < 18.5) {
      return "You have a lower than normal body weight. You can eat a bit more.";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "You have a normal body weight. Good job!";
    } else if (bmi >= 25 && bmi < 29.9) {
      return "You have a higher than normal body weight. Try to exercise more.";
    } else {
      return "You have an obese body weight. Try to follow a healthier lifestyle.";
    }
  }
}
