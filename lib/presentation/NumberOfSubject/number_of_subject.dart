import 'package:calculate_gpa/presentation/resources/color_manager.dart';
import 'package:calculate_gpa/presentation/resources/constant/constant.dart';
import 'package:calculate_gpa/presentation/resources/list_string.dart';
import 'package:calculate_gpa/presentation/resources/route_manager.dart';
import 'package:calculate_gpa/presentation/resources/string_manager.dart';
import 'package:calculate_gpa/presentation/resources/style_manager.dart';
import 'package:calculate_gpa/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';

class NumberOfSubject extends StatefulWidget {
  const NumberOfSubject({Key? key}) : super(key: key);

  @override
  NumberOfSubjectState createState() => NumberOfSubjectState();
}

class NumberOfSubjectState extends State<NumberOfSubject> {
  static String ?value ="one";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SizedBox(
        child:
            Column(
              children: [
                Spacer(), // <-- Spacer

                Text(
                  AppString.choiceNumberOfSubject,
                  style: getBoldStyle(
                      color: ColorManager.darkGrey, fontSize: AppSize.s20),
                ),
                Padding(
                  padding:  EdgeInsets.all(AppMargin.m18),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: value,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: getSemiBoldStyle(color: ColorManager.darkGrey,fontSize: AppSize.s18),
                    underline: Container(
                      height: 4,
                      width: double.infinity,
                      color: ColorManager.darkGrey,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        value = newValue;
                      });

                    },
                    items: ListString.numberSubject
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(onPressed: (){
                      Navigator.pushReplacementNamed(context , Routes.calculateGpaRoute,
                      );

                      }, child: Text(
                      AppString.next,
                      style: getBoldStyle(color: ColorManager.primary,fontSize: AppSize.s20),
                    )),
                  ),
                )


              ],
            ),
            


      ),
    );
  }
}

