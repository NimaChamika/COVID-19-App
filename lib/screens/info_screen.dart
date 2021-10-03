import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test8_covid19_ui/widgets/header.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Header(image: 'assets/icons/coronadr.svg',text: 'Get to know \n About Covid-19',),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Symptoms',
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: screenWidth * 0.3,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SymptomCard(image:'assets/images/caugh.png',title: 'Cough',),
                      SymptomCard(image: 'assets/images/fever.png',title: 'Fever',),
                      SymptomCard(image: 'assets/images/headache.png',title: 'Headache',),
                      SymptomCard(image:'assets/images/caugh.png',title:'Pain'),
                      SymptomCard(image:'assets/images/caugh.png',title:'Strain'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              color: Colors.blueAccent,
              height: screenHeight,
              child: ListView(
                children: [
                  Text(
                    'HI'
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SymptomCard extends StatelessWidget {

  final String image;
  final String title;

  SymptomCard({this.image,this.title});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.25,
      height: screenWidth * 0.25,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 30,
            color: Color(0xFFB7B7B7).withOpacity(.16),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image,
              height: screenWidth*0.2,
            ),
            Text(
                title
            )
          ],
        ),
      ),
    );
  }
}

