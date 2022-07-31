import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../logic/app_provider.dart';

class SebahScreen extends StatelessWidget {
  SebahScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double wightscreen = MediaQuery.of(context).size.width;
    double heightscreen = MediaQuery.of(context).size.height;
    var provider = Provider.of<App_Provider>(context);
    return Center(
      child: Container(
        width: wightscreen * 0.8,
        height: heightscreen * 0.7,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                provider.sabeh_Counter();
              },
              child: Image.asset('assets/images/sebhabady.png'),
            ),
            SizedBox(
              height: heightscreen * .03,
            ),
            Text(
              "عدد التسبيحات",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: heightscreen * .02,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffB7935F).withOpacity(0.5),
              ),
              height: 70,
              width: 50,
              child: Center(
                child: Text(
                  "${provider.index}",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: heightscreen * .03,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xffB7935F),
              ),
              height: 50,
              width: 120,
              child: Center(
                child: Text(
                  "${provider.title}",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
