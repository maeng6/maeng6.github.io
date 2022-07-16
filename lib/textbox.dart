import 'package:flutter/material.dart';


class TextBox134{

  String? text1;
  String? text2;
  String? text3;

  TextBox134(this.text1, this.text2, this.text3);

  Widget textBox(){

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$text1',
            textScaleFactor: 2.2,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Volte",
                color: Color(0xffFFFFFF)),
          ),
          Text(
            '$text2',
            textScaleFactor: 2.2,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Volte",
                color: Color(0xffFFFFFF)),
          ),
          Text(
            '$text3',
            textScaleFactor: 2.2,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Volte",
                color: Color(0xffFFFFFF)),
          ),
        ],
      ),
    );
  }

}