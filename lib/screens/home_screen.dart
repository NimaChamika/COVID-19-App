import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test8_covid19_ui/screen_manager.dart';
import 'package:test8_covid19_ui/widgets/counter.dart';
import 'package:test8_covid19_ui/widgets/header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    Size _size = MediaQuery.of(context).size;
    EdgeInsets _padding = MediaQuery.of(context).padding;

    ScreenManager.initScreenData(_size, _padding);

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [ 
              Header(image: "assets/icons/Drcorona.svg",text: "All you need\nis stay at home.",),
              Container(
                padding: EdgeInsets.symmetric(horizontal: ScreenManager.getWidgetWidth(20),vertical: ScreenManager.getWidgetHeight(30)),
                height: ScreenManager.getWidgetHeight(180),
                child: Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(ScreenManager.getWidgetHeight(80)),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black//Color(0xFFE5E5E5)
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: ScreenManager.getWidgetWidth(50),
                      ),
                      SvgPicture.asset(
                        'assets/icons/maps-and-flags.svg',
                        width: ScreenManager.getWidgetHeight(50),
                      ),
                      SizedBox(
                        width: ScreenManager.getWidgetWidth(50)
                      ),
                      Expanded(
                        child: DropdownButton(
                          isExpanded: true,
                          underline: SizedBox(),
                          value: 'Sri Lanka',
                          items: [
                            'Sri Lanka',
                            'India',
                            'Pakistan',
                            'Nepal',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value){
                            
                          },
                        ),
                      ),
                      SizedBox(
                        width: ScreenManager.getWidgetWidth(20)
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                //color: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: ScreenManager.getWidgetWidth(20),vertical: ScreenManager.getWidgetHeight(10)),
                height: ScreenManager.getWidgetHeight(120),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: ScreenManager.getWidgetHeight(70),
                          width: ScreenManager.getWidgetWidth(500),
                          alignment: Alignment.centerLeft,
                          //color: Colors.greenAccent,
                          child: Text(
                            'Case Update',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: ScreenManager.getWidgetHeight(40),
                            ),
                            textScaleFactor: 1.0,
                          ),
                        ),
                        Container(
                          height: ScreenManager.getWidgetHeight(30),
                          width: ScreenManager.getWidgetWidth(500),
                          alignment: Alignment.centerLeft,
                          //color: Colors.blueAccent,
                          child: Text(
                            'Newest update on March 28',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: ScreenManager.getWidgetHeight(25),
                            ),
                            textScaleFactor: 1.0,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      //color: Colors.red,
                      height: ScreenManager.getWidgetHeight(100),
                      width: ScreenManager.getWidgetWidth(180),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'See details',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: ScreenManager.getWidgetHeight(30),
                        )
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.red,
                height: ScreenManager.getWidgetHeight(270)
              ),
              Container(
                color: Colors.green,
                height: ScreenManager.getWidgetHeight(120)
              ),
              Container(
                color: Colors.red,
                height: ScreenManager.getWidgetHeight(400)
              ),
            ],
          ),
        )
      ),
    );
  }
}


