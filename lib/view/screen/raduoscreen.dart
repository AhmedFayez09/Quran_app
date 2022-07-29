import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100,),
        Image.asset('assets/images/eleza3a.png'),
        SizedBox(height: 100,),
        Text('إذاعة القرآن الكريم',style: TextStyle(fontSize: 25),),
        SizedBox(height: 100,),
        Container(
          width: 280,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ImageIcon(AssetImage('assets/images/next_l.png',),size: 50,),
              ImageIcon(AssetImage('assets/images/play.png'),size: 100,),
              ImageIcon(AssetImage('assets/images/next_r.png'),size: 50,),
            ],
          ),
        ),
      ],
    );
  }
}
