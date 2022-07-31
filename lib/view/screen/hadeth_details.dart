import 'package:flutter/material.dart';
import 'package:quran/view/screen/hadehscreen.dart';

import '../../core/constant.dart';
import 'items/hadeth_details_item.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double wightscreen = MediaQuery.of(context).size.width;
    double heightscreen = MediaQuery.of(context).size.height;
    HadethModel model =
        ModalRoute.of(context)!.settings.arguments as HadethModel;
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
              "Hadeth Details ",
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
                        width: 70,
                      ),
                      Text(
                        ' ${model.title} ',
                        style: TextStyle(fontSize: 35),
                      ),
                      SizedBox(
                        width: 5,
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
                    child: ListView.separated(
                      itemBuilder: (_, i) {
                        return Hadeth_Details_item(model.contant[i].toString());
                      },
                      separatorBuilder: (_, i) {
                        return Container(
                          height: 1,
                          width: double.infinity,
                          color: AppTheme.primarycolor.withOpacity(0.5),
                        );
                      },
                      itemCount: model.contant.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
