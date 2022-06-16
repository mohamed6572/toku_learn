import 'package:flutter/material.dart';
import 'package:toku_learn/components/components.dart';
import 'package:toku_learn/models/Item_model.dart';


class Pharses_Screan extends StatelessWidget{


   List<pharses_Model> phrases =  [
    pharses_Model(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'dont forget to subscribe',
    ),
    pharses_Model(
      sound: 'i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu daisukidesu',
      enName: 'i love  programming',
    ),
    pharses_Model(
      sound: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu ',
      enName: 'programming is easy',
    ),
    pharses_Model(
      sound: 'where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
    ),
    pharses_Model(
      sound: 'what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name ?',
    ),
    pharses_Model(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    pharses_Model(
      sound: 'how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling?',
    ),
    pharses_Model(
      sound: 'are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'are you coming?',
    ),
    pharses_Model(
      sound: 'yes_im_coming.wav',
      jpName: 'Hai watashi wa kite imasu',
      enName: 'yes i am coming',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46322B),
          title: Text('Phrases'),
        ),
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) => Phrases_Item(
              color: Color(0xff50ADC7),
              model: phrases[index],
              itemType:  'phrases'
          ),
        ));
  }
}
