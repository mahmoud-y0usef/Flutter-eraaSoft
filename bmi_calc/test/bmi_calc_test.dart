import 'package:bmi_calc/core/BMIcalc.dart';

void main() {

    BmiCalc bmiCalc = BmiCalc(height: 120, weight: 60);
    print(bmiCalc.getBmi().toStringAsFixed(2));
    print(bmiCalc.getResult());
    print(bmiCalc.getInterpretation());
}
