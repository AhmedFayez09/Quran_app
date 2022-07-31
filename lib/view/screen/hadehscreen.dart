import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran/core/constant.dart';
import 'package:quran/view/screen/items/hadeth_name_item.dart';

class HadehScreen extends StatefulWidget {
  HadehScreen({Key? key}) : super(key: key);

  @override
  State<HadehScreen> createState() => _HadehScreenState();
}

class _HadehScreenState extends State<HadehScreen> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }

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
          child: allAhadeth.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.separated(
                  separatorBuilder: (_, i) {
                    return Container(
                      height: 1,
                      width: double.infinity,
                      color: AppTheme.primarycolor.withOpacity(0.5),
                    );
                  },
                  itemCount: allAhadeth.length,
                  itemBuilder: (context, i) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: HadethNameItem("${allAhadeth[i].title}", allAhadeth[i]),


                        ),
                      ],
                    );
                  },
                ),
        ),
      ],
    );
  }

  void loadHadethFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth .txt');

    List<String> ahadeth = content.trim().split('#\r\n');
    for (int i = 0; i < ahadeth.length; i++) {
      String AllAhadthcontant = ahadeth[i];
      List<String> lines = AllAhadthcontant.split('\n');
      String title = lines[0];
      lines.removeAt(0);

      HadethModel hadethModel = HadethModel(title, lines);
      allAhadeth.add(hadethModel);
    }
    setState(() {});
  }
}

class HadethModel {
  String title;
  List<String> contant;

  HadethModel(this.title, this.contant);
}
