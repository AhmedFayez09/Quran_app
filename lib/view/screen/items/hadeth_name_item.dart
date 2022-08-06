import 'package:flutter/material.dart';
import 'package:quran/routes/app_page.dart';

import '../hadehscreen.dart';

class HadethNameItem extends StatelessWidget {
  String name;
  HadethModel hadehModel;

  HadethNameItem(this.name, this.hadehModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.hadehdetails,
              arguments: hadehModel);
        },
        child: Text(
          '$name',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
