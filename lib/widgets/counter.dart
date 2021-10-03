import 'package:flutter/material.dart';

class Counter extends StatelessWidget {

  final int number;
  final Color color;
  final String title;

  Counter({this.number,this.color,this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(4),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(0.26),
          ),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(
                    color: color,
                    width: 2
                )
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$number',
          style: TextStyle(
            fontSize: 35.0,
            color: color,
          ),
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.grey
          ),
        )
      ],
    );
  }
}
