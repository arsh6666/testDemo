import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:testproject/routes/AppRouterConstant.dart';

class Passion extends StatelessWidget {
  Passion({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('lib/assets/images/background.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                child: Text(
                  'PASSIONS',
                  style: TextStyle(
                    fontFamily: 'Helvetica Neue',
                    fontSize: 15,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'What are you into?',
                  style: TextStyle(
                    fontFamily: 'Helvetica Neue',
                    fontSize: 32,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                'Pick at least 5',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 14,
                  color: const Color(0xffffffff),
                  height: 1.7142857142857142,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.only(left: 50,top: 20,right: 50,bottom: 50),
                child: GestureDetector(
                  onTap: (){
Get.toNamed(AppRouterConstant.Profile);
                  },
                  child: Container(
                    height: 50,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                        gradient: new LinearGradient(
                          colors: [
                            Color.fromRGBO(75, 111, 255, 1),
                            Color.fromRGBO(2, 38, 178, 1),
                          ],
                        )),
                    padding: const EdgeInsets.all(5.0),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

const String _svg_g83iq0 =
    '<svg viewBox="46.5 599.5 321.0 1.0" ><path transform="translate(46.5, 599.5)" d="M 0 0 L 321 0" fill="none" fill-opacity="0.25" stroke="#e3e3e3" stroke-width="1" stroke-opacity="0.25" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ah78d =
    '<svg viewBox="64.5 599.5 69.0 1.0" ><path transform="translate(64.5, 599.5)" d="M 0 0 L 69 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
