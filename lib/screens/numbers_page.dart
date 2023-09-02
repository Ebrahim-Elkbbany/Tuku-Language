import 'package:flutter/material.dart';
import 'package:tuku/components/secondPage_container.dart';

import '../models/secondPage.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<SecondPage> numberList = const [
    SecondPage(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'one',
        sound: 'number_one_sound.mp3'
    ),
    SecondPage(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two',
        sound: 'number_two_sound.mp3'
    ),
    SecondPage(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three',
        sound: 'number_three_sound.mp3'
    ),
    SecondPage(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'four',
        sound: 'number_four_sound.mp3'
    ),
    SecondPage(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five',
     sound: 'number_five_sound.mp3'
    ),
    SecondPage(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six',
      sound: 'number_six_sound.mp3'
    ),
    SecondPage(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven',
      sound: 'number_seven_sound.mp3'
    ),
    SecondPage(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'eight',
    sound: 'number_eight_sound.mp3'
    ),
    SecondPage(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyuu',
        enName: 'nine',
    sound: 'number_nine_sound.mp3'
    ),
    SecondPage(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Juu',
        enName: 'ten',
    sound: 'number_ten_sound.mp3'
    ),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff49332A),
      ),
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: ((context, index) {
          return Item(number: numberList[index],color:  const Color(0xffF99531),
          soundType: 'numbers'
            ,);
        }),
      ),
     /* body: ListView(
         children:
          getList(numberList),

      ),*/
    );
  }
}
                    //important loop

// List <Widget> getList (List<Number> numberList){
//   List <Widget> loopList=[];
//   for(int i=0;i<numberList.length;i++){
//     loopList.add(item(number: numberList[i]));
//
//   }
//   return loopList;
// }


/* body: ListView(
         children:
          getList(numberList),

      ),*/
