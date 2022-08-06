import 'package:flutter/material.dart';

class ShowLanguageBottomSheet extends StatelessWidget {
  const ShowLanguageBottomSheet({Key? key}) : super(key: key);
  static Color prColor = Color(0xffB7935F);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: (){


            },
            child: SelectedLanguage("English", true),
          ),
          InkWell(
            onTap: (){



            },
            child: SelectedLanguage("العربية ", false),
          ),
        ],
      ),
    );
  }

  Widget SelectedLanguage(String text, bool selected) {
    if (selected) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 25, color: prColor),
          ),
          Icon(Icons.check, size: 30, color: prColor),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 25),
          ),
          Icon(
            Icons.check,
            size: 30,
          ),
        ],
      );
    }
  }
}
