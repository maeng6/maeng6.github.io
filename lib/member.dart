import 'package:flutter/material.dart';


class Member{

  String? name;
  String? position;
  String? email;

  Member(this.name, this.position, this.email);

  Widget teamMember(){

    return Builder(
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$name',
                textScaleFactor: 1.0,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    fontFamily: "Volte",
                    color: Color(0xffFFFFFF)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.003,
              ),
              Text(
                '$position',
                textScaleFactor: 1.0,
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 14,
                    fontFamily: "Volte",
                    color: Color(0xffFFFFFF)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.003,
              ),
              Text(
                '$email',
                textScaleFactor: 1.0,
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 14,
                    fontFamily: "Volte",
                    color: Color(0xffFFFFFF)),
              ),
            ],
          );
        }
    );

  }


}

