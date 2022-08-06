import 'package:flutter/material.dart';

import '../widget/show_lang_bottom_sheet.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Language",
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xffB7935F),
                  )),
              child: Text(
                "English",
                style: TextStyle(fontSize: 23),
              ),
            ),
          ),
        ],
      ),
    );
  }
 void showLanguageBottomSheet(context){
    showModalBottomSheet(context: context, builder: (context){
      return ShowLanguageBottomSheet();
    });
  }
}
