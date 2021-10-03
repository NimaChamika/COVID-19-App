import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test8_covid19_ui/screen_manager.dart';

class Header extends StatefulWidget {

  final String image;
  final String text;

  Header({this.image,this.text});

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurveClipper(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: ScreenManager.getWidgetWidth(20)),
        height: ScreenManager.getWidgetHeight(430),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF3383CD),
                Color(0xFF11249F),
              ],
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/virus.png'),
              fit: BoxFit.cover
            )
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: ScreenManager.getWidgetWidth(20),
                    top: ScreenManager.getWidgetHeight(50),
                    child: SvgPicture.asset(
                      widget.image,
                      width: ScreenManager.getWidgetWidth(350),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Positioned(
                    left: ScreenManager.getWidgetWidth(250),
                    top: ScreenManager.getWidgetHeight(100),
                    child: Text(
                      widget.text,
                      style: TextStyle(
                          fontSize: ScreenManager.getWidgetHeight(40),
                          color: Colors.white70,
                          fontWeight: FontWeight.bold
                      ),
                      textScaleFactor: 1.0,
                    ),
                  ),
                  Positioned(
                    right: ScreenManager.getWidgetWidth(0),
                    top: ScreenManager.getWidgetHeight(30),
                    child: GestureDetector(
                      onTap: (){},
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - ScreenManager.getWidgetHeight(50));
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - ScreenManager.getWidgetHeight(50));
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
