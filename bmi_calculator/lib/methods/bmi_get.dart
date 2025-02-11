double bmi_get(double height, int weight) {
  height = height / 100;
  double bmi = weight / (height * height);
  return bmi;
}
