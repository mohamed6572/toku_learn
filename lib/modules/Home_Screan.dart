import 'package:flutter/material.dart';
import 'package:toku_learn/components/category.dart';
import 'package:toku_learn/components/components.dart';
import 'package:toku_learn/modules/colors_screan.dart';
import 'package:toku_learn/modules/family.dart';
import 'package:toku_learn/modules/numbers_screan.dart';
import 'package:toku_learn/modules/pharses_screan.dart';

class Home_Screan extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB) ,
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            color:Color(0xffef9234) ,
            text: 'Numbers',
            onTap: (){
              navigateTo(context: context,widget: Numbers_Screan());
            },
          ),
          Category(
            text:'FamilyMembers',
          color: Color(0xff558B37),
            onTap: (){
              navigateTo(context: context,widget: FamilyMembers());
            },
          ),
          Category(
            text: 'Colors',
            color: Color(0xff79359F),
            onTap: (){
              navigateTo(context: context,widget: colors_screan());

            },
          ),
          Category(
            text: 'Phrases',
            color: Color(0xff50ADC7),
            onTap: (){
              navigateTo(context: context,widget: Pharses_Screan());

            },
          ),

        ],
      ),
    );
  }
}
