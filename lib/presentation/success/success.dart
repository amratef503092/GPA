


import 'package:calculate_gpa/presentation/calculate_gpa/calculate_gpa.dart';
import 'package:calculate_gpa/presentation/convert_to_number/convert.dart';
import 'package:calculate_gpa/presentation/resources/assets_manager.dart';
import 'package:calculate_gpa/presentation/resources/color_manager.dart';
import 'package:calculate_gpa/presentation/resources/route_manager.dart';
import 'package:calculate_gpa/presentation/resources/string_manager.dart';
import 'package:calculate_gpa/presentation/resources/style_manager.dart';
import 'package:calculate_gpa/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';



class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  _SuccessState createState() => _SuccessState();
}
double progress = 0;

double? GPA;
class _SuccessState extends State<Success> {
@override
  void initState() {
    // TODO: implement initState
  GPA = (sum/x!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height*0.05,
            ),

            CircularPercentIndicator(
              radius: 130.0,
              animation: true,
              animationDuration: 1200,
              lineWidth: 15.0,
              percent:  GPA! /4,
              progressColor: ( GPA! <2)? ColorManager.error : Colors.green,
              center:  Text(
                GPA!.toStringAsFixed(2),style: getBoldStyle(color: ( GPA! <2)? ColorManager.error : Colors.green , fontSize: AppSize.s28),
              )),
            SizedBox(
              height: height*.04,
            ),
            Text(AppString.yourGradeIs +" : ${convertDegree(number: (GPA! /4)*100)}" ,style: getBoldStyle(color: ( GPA! <2)? ColorManager.error : Colors.green , fontSize: AppSize.s28) ,),

            Expanded(child: image((GPA! /4)*100)),
            ElevatedButton(onPressed: (){
              sum = 0;
              GPA=0;
              print(GPA);
              print(   sum );
              print(   x );
              Navigator.pushReplacementNamed(context, Routes.splashRoute);

            }, child: Text(AppString.back , style: getMediumStyle(color: ColorManager.white),),)


          ],
        )
      ),
    );
  }
}
Widget image(double grade){
  if(grade >=80){
    return  Image(image: AssetImage(
        ImageAssets.aLogo
    ));
  }
  else if(grade >=60){
    return  Image(image: AssetImage(
        ImageAssets.dLogo
    ));
  }else{

      return  Image(image: AssetImage(
          ImageAssets.fLogo
      ));
  }
}

