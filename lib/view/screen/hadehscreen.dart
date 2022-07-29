import 'package:flutter/material.dart';
import 'package:quran/constant.dart';

class HadehScreen extends StatelessWidget {
  const HadehScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/besm.png',
        ),
        Container(
          height: 3,
          width: double.infinity,
          color: AppTheme.primarycolor,
        ),
        Text(
          'الاحاديث',
          style: TextStyle(fontSize: 30),
        ),
        Container(
          height: 3,
          width: double.infinity,
          color: AppTheme.primarycolor,
        ),
        Flexible(
          child: ListView.builder(

              itemCount: 50,
              itemBuilder: (context, i) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text("${i + 1}الحديث رقم " ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
              ],
            );
          }),
        )
      ],
    );
  }
}
