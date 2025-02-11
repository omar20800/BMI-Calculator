// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

String resultMessage({required String status}) {
  String message;
  if (status == "Invalid BMI") {
    message = "Invalid BMI. Please check your input.";
  } else if (status == "Severe Thinness") {
    message = "You are severely underweight. You need to eat more.";
  } else if (status == "Moderate Thinness") {
    message = "You are moderately underweight. You need to eat more.";
  } else if (status == "Mild Thinness") {
    message = "You are mildly underweight. You need to eat more.";
  } else if (status == "Normal") {
    message = "You are healthy. Keep it up!";
  } else {
    message = "You are overweight. You need to exercise more.";
  }

  return message;
}
