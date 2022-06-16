import 'package:flutter/material.dart';
import 'package:toku_learn/components/components.dart';
import 'package:toku_learn/models/Item_model.dart';

class Numbers_Screan extends StatelessWidget {
  List<Item_Model> numbers = [
    Item_Model(
      sound: 'number_one_sound.mp3',
      jpName: 'ichi',
      enName: 'one',
      image: 'assets/images/numbers/number_one.png',
    ),
    Item_Model(
      sound: 'number_two_sound.mp3',
      jpName: 'Ni',
      enName: 'two',
      image: 'assets/images/numbers/number_two.png',
    ),
    Item_Model(
      sound: 'number_three_sound.mp3',
      jpName: 'San',
      enName: 'three',
      image: 'assets/images/numbers/number_three.png',
    ),
    Item_Model(
      sound: 'number_four_sound.mp3',
      jpName: 'Shi',
      enName: 'four',
      image: 'assets/images/numbers/number_four.png',
    ),
    Item_Model(
      sound: 'number_five_sound.mp3',
      jpName: 'Go',
      enName: 'five',
      image: 'assets/images/numbers/number_five.png',
    ),
    Item_Model(
      sound: 'number_six_sound.mp3',
      jpName: 'Roku',
      enName: 'six',
      image: 'assets/images/numbers/number_six.png',
    ),
    Item_Model(
      sound: 'number_seven_sound.mp3',
      jpName: 'Sebun',
      enName: 'seven',
      image: 'assets/images/numbers/number_seven.png',
    ),
    Item_Model(
      sound: 'number_eight_sound.mp3',
      jpName: 'hachi',
      enName: 'eight',
      image: 'assets/images/numbers/number_eight.png',
    ),
    Item_Model(
      sound: 'number_nine_sound.mp3',
      jpName: 'Kyū',
      enName: 'nine',
      image: 'assets/images/numbers/number_nine.png',
    ),
    Item_Model(
      sound: 'number_ten_sound.mp3',
      jpName: 'Jū',
      enName: 'ten',
      image: 'assets/images/numbers/number_ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46322B),
          title: Text('Numbers'),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) => Item(
            color: Color(0xffEF9235),
            model: numbers[index],
            itemType: 'numbers'
          ),
        ));
  }
}
