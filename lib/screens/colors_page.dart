import 'package:flutter/material.dart';
import 'package:tuku/components/secondPage_container.dart';

import '../models/secondPage.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<SecondPage> colorsItem = const [
    SecondPage(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'black',
        sound: 'black.wav'),
    SecondPage(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown',
        sound: 'brown.wav'),
    SecondPage(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow',
        sound: 'dusty yellow.wav'),
    SecondPage(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gure-',
        enName: 'gray',
        sound: 'gray.wav'),
    SecondPage(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green',
        sound: 'green.wav'),
    SecondPage(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red',
        sound: 'red.wav'),
    SecondPage(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiroi',
        enName: 'white',
        sound: 'white.wav'),
    SecondPage(
        image: 'assets/images/colors/yellow.png',
        jpName: 'kiiro',
        enName: 'yellow',
        sound: 'yellow.wav'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff49332A),
          title: const Text(
            'Colors',
          )),
      body: ListView.builder(
        itemCount: colorsItem.length,
        itemBuilder: (context, index) {
          return Item(
              number: colorsItem[index],
              color: const Color(0xff7D40A2),
              soundType: 'colors');
        },
      ),
    );
  }
}
