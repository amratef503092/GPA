import 'package:flutter/material.dart';

int convertItem( {required String number}){
  switch(number){
    case "one":
      return 1;
    case "Two":
      return 2;
    case "Three":
      return 3;
    case "Four":
      return 4;
    case "Five":
      return 5;
    case "Six":
      return 6;
    case "Seven":
      return 7;
    case "Eight":
      return 8;

    default:
      return 0;
  }
}
double convertDegree1( {required String number}){
switch(number){
  case "A+":
    return 4;
  case "A":
    return 3.7;
  case "B+":
    return 3.3;
  case "B":
    return 3;
  case "C+":
    return 2.7;
  case "C":
    return 2.4;
  case "D+":
    return 2.2;
  case "D":
    return 2;
  case "F":
    return 0;
  default:
    return 0;
}
}
String convertDegree( {required double number}){
  if(number>=90){
    return "A+";
  }else if(number >=85){
    return "A";
  }else if(number >=80){
    return "B+";
  }else if(number >=75){
    return "B";
  }else if(number >=70){
    return "C+";
  }else if(number >=65){
    return "C";
  }else if(number >=60){
    return "D+";
  }else if(number >=55){
    return "D";
  }else if(50>number){
    return "F";
  }else{
    return "error";
  }
}