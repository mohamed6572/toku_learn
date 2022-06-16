import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_learn/models/Item_model.dart';

void navigateTo({context, widget}) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ));


class Item extends StatelessWidget {
  Color? color;
  Item_Model model;
  String itemType;
Item({
  required this.model,
  required this.color,
  required this.itemType
});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
       try{
         AudioCache player =
         AudioCache(prefix: 'assets/sounds/$itemType/');
         player.play(model.sound);
       }catch(error){
         print(error);
       }
      },
      child: Container(
        height: 100,
        color: color,
        child: Row(
          children: [
            Image(
              image: AssetImage('${model.image}'),
              width: 90,
              height: 90,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  model.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  model.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            Spacer(),
            Icon(
                  Icons.arrow_right,
                  size: 40,
                ),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}


class Phrases_Item extends StatelessWidget {
  Color? color;
  pharses_Model model;
  String itemType;
  Phrases_Item({
  required this.model,
  required this.color,
  required this.itemType
});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
       try{
         AudioCache player =
         AudioCache(prefix: 'assets/sounds/$itemType/');
         player.play(model.sound);
       }catch(rr){
         print(rr);
       }
      },
      child: Container(
        height: 100,
        color: color,
        child: Row(
          children: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  model.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  model.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            Spacer(),
            Icon(
                  Icons.arrow_right,
                  size: 40,
                ),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
