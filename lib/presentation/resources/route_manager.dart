
import 'package:calculate_gpa/presentation/fail/fail.dart';
import 'package:calculate_gpa/presentation/success/success.dart';
import 'package:flutter/material.dart';
import 'package:calculate_gpa/presentation/NumberOfSubject/number_of_subject.dart';
import 'package:calculate_gpa/presentation/calculate_gpa/calculate_gpa.dart';
import 'package:calculate_gpa/presentation/resources/string_manager.dart';
import 'package:calculate_gpa/presentation/splash_screen/splash_screen.dart';
class Routes{
  static const String splashRoute = "/"; //initial route
  static const String numberOfSubjectRoute = "/numberOfSubject";
  static const String calculateGpaRoute = "/calculateGpa";
  static const String resultRoute = "/result";


}
class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
   switch(routeSettings.name){
     case Routes.splashRoute:
       return MaterialPageRoute(
         builder: (context) => SplashScreen(),);
     case Routes.numberOfSubjectRoute:
       return MaterialPageRoute(
         builder: (context) => NumberOfSubject(),);
     case Routes.calculateGpaRoute:
       return MaterialPageRoute(
         builder: (context) => CalculateGpa(),);
     case Routes.resultRoute:
       return MaterialPageRoute(
         builder: (context) => Success(),);


       default:
         return unDefinedRoute();

   }
  }

  static Route unDefinedRoute() =>MaterialPageRoute(
    builder: (context) => Scaffold(
      appBar: AppBar(
        title: const Text(AppString.undefinedRoute),
      ),
      body: const Center(
        child:Text(AppString.undefinedRoute),
      ),
    )) ;
}
