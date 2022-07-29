import 'package:flutter/material.dart';
import 'package:quran/view/screen/qurandetails.dart';

import '../../models/model.dart';

class QuranSceen extends StatelessWidget {
  const QuranSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset('assets/images/logo3.png'),
        ),
        Table(
          border: TableBorder.all(
            width: 2.5,
            color: Color(0xffB7935F),
          ),
          // Allows to add a border decoration around your table
          children: [
            TableRow(
              children: [
                Container(
                    height: 40,
                    child: Center(
                      child: Text(
                        'عدد الايات',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    )),
                Container(
                    height: 40,
                    child: Center(
                      child: Text(
                        'أسم السورة',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ),
        Flexible(
          child: ListView.builder(
            itemCount: QuranDetails.length,
            itemBuilder: (context, i) {
              return InkWell(
                onTap: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  QuranDetailsScreen(nameSora: QuranDetails[i]['name'],)),
                  );
                },
                child: Table(
                  border: TableBorder.all(
                    width: 0,
                    color: Color(0xffB7935F),
                  ),
                  // Allows to add a border decoration around your table
                  children: [
                    TableRow(
                      children: [
                        Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                QuranDetails[i]['id'].toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            )),
                        Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                QuranDetails[i]['name'],
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
/*TableRow(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,

                        physics: ClampingScrollPhysics(),
                        itemCount: details.length,
                        itemBuilder: (context,i){
                      return Container(
                          height: 40,
                          child: Center(
                            child: Text(
                              details[i]['num'],
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ));
                    }),

                    ListView.builder(
                      shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                      itemCount: details.length,
                        itemBuilder: (context,i){
                      return Container(
                          height: 40,
                          child: Center(
                            child: Text(
                              details[i]['name'],
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ));
                    }),

              ]),*/

// TableRow(
//     children: [
//
//   Text('عدد الايات'),
//   Text('أسم الصورة'),
// ],),
