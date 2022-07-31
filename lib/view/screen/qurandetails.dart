import 'package:flutter/material.dart';

import '../../core/constant.dart';
import '../../models/model.dart';
import '../../models/model2.dart';

class QuranDetailsScreen extends StatelessWidget {
  QuranDetailsScreen({Key? key, required this.nameSora}) : super(key: key);
  String nameSora;

  @override
  Widget build(BuildContext context) {
    double wightscreen = MediaQuery.of(context).size.width;
    double heightscreen = MediaQuery.of(context).size.height;

    int? lengthlist() {
      suradetails.forEach((key, value) {
        return value.length;
      });
    }

    return Stack(
      children: [
        Container(
          child: Image.asset(
            'assets/images/bg3.png',
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(
                "إسلامي",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Center(
              child: Container(
                width: wightscreen * 0.8,
                height: heightscreen * 0.7,
                color: Color(0xffF8F8F8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          'سورة ${nameSora} ',
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Image.asset('assets/images/suraicon.png'),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      height: 2,
                      width: double.infinity,
                      color: AppTheme.primarycolor.withOpacity(0.5),
                    ),
                    Flexible(
                      child: ListView.builder(
                          itemCount:
                              // suradetails.values.elementAt(i),
                              lengthlist(),
                          itemBuilder: (context, i) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 5),
                              child: Text(
                                suradetails["${i + 1}"][i]["text"],
                                textDirection: TextDirection.rtl,
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
