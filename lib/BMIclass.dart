import 'package:question_1/page2.dart';

import 'main.dart';

class BMIclass {
  int height = 1;
  int weight = 1;
  int age = 1;
  double b = 1.2444;
  String simpStatus="";
  String status="";
  BMIclass(this.height, this.weight);

  
  // void Print() {
    
  //   print(weight);
  //   print(height);
  //   //print(age);
  //   print(b);
  //   print(status);
  // }

  // int GetBmiValue() {
  //   return b;
  // }

  void x() {
    b = ((weight / (height * height))*10000);
    
    if (b > 0 && b < 18.5) {
      simpStatus="UNDER-WEIGHT";
      status= "You Are Under-Weight";
    //  status = "";
    } else if (b > 18.5 && b < 24.9) {
      
      simpStatus="NORMAL";
      status= "You Are Normal";
    } else if (b > 25 && b < 29.9) {
      
      simpStatus="OVER-WEIGHT";
      status= "You Are Over-Weight";
    } else if (b > 30) {
      
      simpStatus="OBESE";
      status= "You Are Obese";
    }
  }
}
