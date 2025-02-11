String bmiCheck({required double bmi,}) {
  String status;
  if (bmi > 1) {
    if (bmi < 16) {
      status = "Severe Thinness";
    } else if (bmi >= 16 && bmi < 17) {
      status = "Moderate Thinness";
    } else if (bmi >= 17 && bmi < 18.5) {
      status = "Mild Thinness";
    } else if (bmi >= 18.5 && bmi < 25) {
      status = "Normal";
    } else if (bmi >= 25 && bmi < 30) {
      status = "Overweight";
    } else if (bmi >= 30 && bmi < 35) {
      status = "Obese Class 1";
    } else if (bmi >= 35 && bmi < 40) {
      status = "Obese Class 2";
    } else {
      status = "Obese Class 3";
    }
  } else {
    status = "Invalid BMI";
  }
  return status;
}
