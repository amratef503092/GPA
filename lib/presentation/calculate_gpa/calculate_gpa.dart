import 'package:calculate_gpa/presentation/NumberOfSubject/number_of_subject.dart';
import 'package:calculate_gpa/presentation/convert_to_number/convert.dart';
import 'package:calculate_gpa/presentation/resources/color_manager.dart';
import 'package:calculate_gpa/presentation/resources/list_string.dart';
import 'package:calculate_gpa/presentation/resources/route_manager.dart';
import 'package:calculate_gpa/presentation/resources/string_manager.dart';
import 'package:calculate_gpa/presentation/resources/style_manager.dart';
import 'package:calculate_gpa/presentation/resources/value_manager.dart';
import 'package:calculate_gpa/presentation/success/success.dart';
import 'package:flutter/material.dart';
class CalculateGpa extends StatefulWidget {
  const CalculateGpa({Key? key}) : super(key: key);

  @override
  CalculateGpaState createState() => CalculateGpaState();




}
 int? x;
 double sum =0;

List<String> value = ["A+","A+","A+","A+","A+","A+","A+","A+","A+","A+"];

class CalculateGpaState extends State<CalculateGpa> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    x = convertItem(number:NumberOfSubjectState.value.toString());
  }
  @override

  Widget build(BuildContext context) {


var size = MediaQuery.of(context).size;
var height = size.height;
var width = size.width;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height*0.1,
            ),
            Padding(
              padding:  const EdgeInsets.all(AppMargin.m18),
              child: SizedBox(
                height:height*3/4,
                child: ListView.builder(itemBuilder: (context, index) {
                  return DropdownButton<String>(
                    isExpanded: true,
                    value: value[index],
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
                        value[index] = newValue!;
                      });


                    },
                    items: ListString.grade
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  );
                },itemCount: x,),
              )
            ),
            ElevatedButton(onPressed: (){
              for(int i = 0 ; x!>i;i++){

                setState(() {
                  sum += convertDegree1( number: value[i]);

                });

              }

              print(   sum );
              Navigator.pushReplacementNamed(context, Routes.resultRoute);

            }, child: Text(AppString.calculate , style: getMediumStyle(color: ColorManager.white),),)
          ],
        ),
        ),

    );
  }
}
