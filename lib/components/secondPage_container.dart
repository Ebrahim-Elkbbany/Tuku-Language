
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tuku/models/phrasesSecondPage.dart';

import '../models/secondPage.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number,required this.color, required this.soundType}) ;
  final SecondPage number;
  final Color color;
  final String soundType;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xfffff6DC),
            child: Image.asset(number.image ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          IconButton(
            onPressed: (){
              try{
              AudioCache player= AudioCache(prefix: 'assets/sounds/$soundType/');
                player.play(number.sound);
              }
              catch(ex){
                if (kDebugMode) {
                  print(ex);
                }
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ) ,
          ),
        ],
      ),
    )
    ;
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key,  required this.number, required this.color, required this.soundType});
  final Phrases number;
  final Color color;
  final String soundType;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          IconButton(
            onPressed: (){
              try{
                AudioCache player= AudioCache(prefix: 'assets/sounds/$soundType/');
                player.play(number.sound);
              }
              catch(ex){
                if (kDebugMode) {
                  print(ex);
                }
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ) ,
          ),
        ],
      ),
    )
    ;
  }
}

