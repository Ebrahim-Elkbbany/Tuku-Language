import 'package:flutter/material.dart';
import 'package:tuku/components/category_item.dart';
import 'package:tuku/screens/colors_page.dart';
import 'package:tuku/screens/familyMembers_page.dart';
import 'package:tuku/screens/phrases_page.dart';

import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        title: const Text('Toku'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const NumbersPage();
                }),
              );
            },
            color: const Color(0xffF99531),
            text: 'Numbers',
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const familyMembers();
              },),);
            },
            text: ' Family Members',
            color: const Color(0xff528032),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              },));
            },
            text: 'Colors',
            color: const Color(0xff7D40A2),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              },));
            },
            text: 'Phrases',
            color: const Color(0xff47A5CB),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: SizedBox(

              width: 10,
              height: 200,

              child: Image.asset('assets/images/logo_transparent.png'),
            ),
          )

        ],
      ),
    );
  }
}
