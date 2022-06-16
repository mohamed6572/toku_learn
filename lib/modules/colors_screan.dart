import 'package:flutter/material.dart';
import 'package:toku_learn/components/components.dart';
import 'package:toku_learn/models/Item_model.dart';

class colors_screan extends StatelessWidget{
   List<Item_Model> colors =  [
    Item_Model(
      sound: 'black.wav',
      jpName: 'Burakku',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    Item_Model(
      sound: 'brown.wav',
      jpName: 'Chairo',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    Item_Model(
      sound: 'dusty yellow.wav',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    Item_Model(
      sound: 'gray.wav',
      jpName: 'Gurē',
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    Item_Model(
      sound: 'green.wav',
      jpName: 'Midori',
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    Item_Model(
      sound: 'red.wav',
      jpName: 'Aka',
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xff46322B),
    title: Text('Colors'),
    ),
    body: ListView.builder(
    itemCount: colors.length,
    itemBuilder: (context, index) => Item(
    color: Color(0xffEF9235),
    model: colors[index],
    itemType:  'colors'
    ),
    ));
  }
}
