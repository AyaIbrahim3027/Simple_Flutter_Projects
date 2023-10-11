import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  // final Number one = const Number(
  //     image: 'assets/images/numbers/number_one.png',
  //     jpName: 'ichi',
  //     enName: 'one');

  final List<ItemModel> numbers = const [
    ItemModel(
        sound:'sounds/family_members/father.wav' ,
        image: 'assets/images/family_members/family_father.png',
        jpName: 'father',
        enName: 'father'),
    ItemModel(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'mother',
        enName: 'mother'),
    ItemModel(
        sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'grand father',
        enName: 'grand father'),
    ItemModel(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'grand mother',
        enName: 'grand mother'),
    ItemModel(
        sound: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'family_older_brother',
        enName: 'family_older_brother'),
    ItemModel(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'family_older_sister',
        enName: 'family_older_sister'),
    ItemModel(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'family_son',
        enName: 'family_son'),
    ItemModel(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'family_daughter',
        enName: 'family_daughter'),
    ItemModel(
        sound: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'family_younger_brother',
        enName: 'family_younger_brother'),
    ItemModel(
        sound: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'family_younger_sister',
        enName: 'family_younger_sister'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Family Members'),
      ),
      body: ListView.builder( // best solution
        itemCount: numbers.length,
        itemBuilder: (context , index ){
          return Item(
            color: Color(0xff558B37),
              item: numbers[index],);
        },

        //  or:

        // ListView(
        //   children: getList(numbers),

        //    or:

        // [
        //   Item(number: numbers[0]),
        //   Item(number: numbers[1]),
        //   Item(number: numbers[2]),
        //   Item(number: numbers[3]),
        //   Item(number: numbers[4]),
        //   Item(number: numbers[5]),
        //   Item(number: numbers[6]),
        //   Item(number: numbers[7]),
        //   Item(number: numbers[8]),
        //   Item(number: numbers[9]),
        // ],
      ),
    );
  }

// use this with ListView:
// List<Widget> getList(List<Number> numbers){   //widget or Item
//   List<Item> itemsList = []; //widget or Item
//   for(int i = 0 ; i < numbers.length ; i++){
//     itemsList.add(Item(number: numbers[i]));
//   }
//   return itemsList;
// }
}
