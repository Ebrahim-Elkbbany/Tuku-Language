import 'package:flutter/material.dart';
import 'package:tuku/components/secondPage_container.dart';

import '../models/secondPage.dart';

class familyMembers extends StatelessWidget {
  const familyMembers({Key? key}) : super(key: key);
  final List<SecondPage> familyMembersList = const [
    SecondPage(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father',
        sound: 'father.wav'
    ),
    SecondPage(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother',
        sound: 'mother.wav'
    ),
    SecondPage(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter',
        sound: 'daughter.wav'
    ),
    SecondPage(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojiisan',
        enName: 'grandfather',
        sound: 'grand father.wav'
    ),
    SecondPage(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grandmother',
        sound: 'grand mother.wav'
    ),
    SecondPage(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Oniisan',
        enName: 'older brother',
        sound: 'older bother.wav'
    ),
    SecondPage(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister',
        sound: 'older sister.wav'
    ),

    SecondPage(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son',
        sound: 'son.wav'
    ),
    SecondPage(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otouto',
        enName: 'younger brother',
        sound: 'younger brohter.wav'
    ),
    SecondPage(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imouto',
        enName: 'younger sister',
        sound: 'younger sister.wav'
    ),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff49332A),
      ),
      body: ListView.builder(
        itemCount: familyMembersList.length,
        itemBuilder: ((context, index) {
          return Item(number: familyMembersList[index],color:  Color(0xff528032),
            soundType: 'family_members'
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