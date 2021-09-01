import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BioPaiduser extends StatelessWidget {
  BioPaiduser({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -70.0, end: -64.0),
            Pin(start: 231.0, end: -263.5),
            child:
                // Adobe XD layer: 'background long' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 133.0, middle: 0.5872),
            Pin(size: 133.0, middle: 0.7805),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -0.33),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xff4b6fff), const Color(0xff0226b2)],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 133.0, start: 24.0),
            Pin(size: 133.0, middle: 0.7968),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -0.33),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xff4b6fff), const Color(0xff0226b2)],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 133.0, end: 15.0),
            Pin(size: 133.0, end: 329.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -0.33),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xff4b6fff), const Color(0xff0226b2)],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 36.0, end: 38.0),
            Pin(size: 252.0, middle: 0.2813),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.0),
                color: const Color(0x99495896),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 529.0, start: -6.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff000000),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: -226.0, end: -166.0),
            Pin(size: 537.0, start: -12.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 152.0, start: 37.0),
            Pin(size: 19.0, middle: 0.6262),
            child: Text(
              '100 Instagram Posts',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 16,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 67.0, start: 37.0),
            Pin(size: 19.0, middle: 0.745),
            child: Text(
              'Passions',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 16,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 80.0, middle: 0.2006),
            Pin(size: 241.0, middle: 0.2883),
            child: Text(
              'Name\n\nGender\n\nAge\n\nLocation',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
                height: 1.8235294117647058,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 136.0, middle: 0.741),
            Pin(size: 241.0, middle: 0.2883),
            child: Text(
              'Name\n\nGender\n\nAge\n\nLocation',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                height: 1.8235294117647058,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.right,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 39.0, end: 39.0),
            Pin(size: 2.0, middle: 0.2779),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x5e0a2175),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 39.0, end: 39.0),
            Pin(size: 2.0, middle: 0.3006),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x5e0a2175),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 39.0, end: 39.0),
            Pin(size: 2.0, middle: 0.3233),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x5e0a2175),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 133.0, middle: 0.5018),
            Pin(size: 133.0, middle: 0.8342),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x99495896),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 133.0, end: 5.0),
            Pin(size: 133.0, middle: 0.8217),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x99495896),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 133.0, start: 0.0),
            Pin(size: 133.0, end: 390.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x99495896),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 133.0, middle: 0.452),
            Pin(size: 133.0, end: 297.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x99495896),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 97.0, start: 42.0),
            Pin(size: 37.0, middle: 0.7889),
            child: Text(
              'Interest 1',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
                height: 1.8235294117647058,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 97.0, middle: 0.5016),
            Pin(size: 37.0, end: 479.0),
            child: Text(
              'Interest 1',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
                height: 1.8235294117647058,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 97.0, middle: 0.5804),
            Pin(size: 37.0, middle: 0.7736),
            child: Text(
              'Interest 1',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
                height: 1.8235294117647058,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 97.0, end: 23.0),
            Pin(size: 37.0, end: 512.0),
            child: Text(
              'Interest 1',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
                height: 1.8235294117647058,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 97.0, start: 18.0),
            Pin(size: 37.0, end: 430.0),
            child: Text(
              'Interest 1',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
                height: 1.8235294117647058,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 97.0, middle: 0.4574),
            Pin(size: 37.0, end: 337.0),
            child: Text(
              'Interest 1',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
                height: 1.8235294117647058,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 97.0, end: 33.0),
            Pin(size: 37.0, end: 370.0),
            child: Text(
              'Interest 1',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
                height: 1.8235294117647058,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Container(),
          Pinned.fromPins(
            Pin(size: 138.0, start: 40.0),
            Pin(size: 41.0, middle: 0.2019),
            child:
                // Adobe XD layer: 'Title' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Person Name, Age\n',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 16,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w500,
                      height: 1.375,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 39.0, end: 56.0),
            Pin(size: 55.0, middle: 0.2172),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 14,
                    color: const Color(0xffffffff),
                    height: 1.4285714285714286,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 112.0, middle: 0.5066),
            Pin(size: 7.0, start: 485.0),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 17,
                  runSpacing: 20,
                  children: [{}, {}, {}, {}, {}].map((itemData) {
                    return SizedBox(
                      width: 7.0,
                      height: 7.0,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(start: 0.0, end: 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0x4cffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 7.0, middle: 0.4349),
            Pin(size: 7.0, start: 485.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 107.0, start: 36.0),
            Pin(size: 108.0, middle: 0.6662),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: -20.0, end: -265.0),
                  Pin(start: -19.0, end: -266.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: const Color(0xff939393),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 107.0, start: 36.0),
            Pin(size: 108.0, middle: 0.7107),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: -20.0, end: -265.0),
                  Pin(start: -142.0, end: -143.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: const Color(0xff939393),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 106.0, middle: 0.5),
            Pin(size: 108.0, middle: 0.6662),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: -143.0, end: -144.0),
                  Pin(start: -19.0, end: -266.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: const Color(0xff939393),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 106.0, middle: 0.5),
            Pin(size: 108.0, middle: 0.7107),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: -143.0, end: -144.0),
                  Pin(start: -142.0, end: -143.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: const Color(0xff939393),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 107.0, end: 36.0),
            Pin(size: 108.0, middle: 0.6662),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: -267.0, end: -19.0),
                  Pin(start: -19.0, end: -266.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: const Color(0xff939393),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 107.0, end: 36.0),
            Pin(size: 108.0, middle: 0.7107),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: -271.0, end: -15.0),
                  Pin(start: -142.0, end: -143.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: const Color(0xff939393),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 5.6, end: 43.7),
            Pin(size: 10.5, middle: 0.6696),
            child:
                // Adobe XD layer: 'next' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_obeayr,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 5.8, end: 73.9),
            Pin(size: 10.5, middle: 0.6696),
            child:
                // Adobe XD layer: 'next' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_s,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 49.0, end: 28.0),
            Pin(size: 49.0, start: 284.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xe5042093), const Color(0x4b0032ff)],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 49.0, end: 28.0),
            Pin(size: 49.0, start: 356.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xe5042093), const Color(0x4b0032ff)],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 18.8, end: 42.8),
            Pin(size: 17.0, start: 300.4),
            child:
                // Adobe XD layer: 'heart' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_xe43b6,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 22.0, end: 42.0),
            Pin(size: 22.0, start: 371.0),
            child:
                // Adobe XD layer: 'dislike' (shape)
                SvgPicture.string(
              _svg_x7y078,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 74.0, start: 45.0),
            Pin(size: 19.0, middle: 0.2427),
            child: Text(
              'Basic Info',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 16,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 98.0, start: 46.0),
            Pin(size: 19.0, middle: 0.368),
            child: Text(
              'Personal Info',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 16,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 36.0, end: 38.0),
            Pin(size: 627.0, middle: 0.4914),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.0),
                color: const Color(0x99495896),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 167.0, middle: 0.2713),
            Pin(size: 605.0, middle: 0.4966),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Text(
                  'Looking For\n\nRelationship Status\n\nKids\n\nWork Title\n\nEducation\n\nHair Colour\n\nEye Colour\n\nHeight\n\nEthnicity\n\nReligion\n',
                  style: TextStyle(
                    fontFamily: 'Helvetica Neue',
                    fontSize: 17,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w300,
                    height: 1.8235294117647058,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 136.0, middle: 0.741),
            Pin(size: 613.0, middle: 0.4979),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Text(
                  'Women\n\nSingle\n\nNo\n\nManager\n\nGraduate\n\nBrown\n\nBrown\n\n5 Ft\n\nAsian\n\nChristian\n\n\n',
                  style: TextStyle(
                    fontFamily: 'Helvetica Neue',
                    fontSize: 17,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w500,
                    height: 1.8235294117647058,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 37.0, end: 37.0),
            Pin(size: 2.0, middle: 0.4028),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff0a2175),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 37.0, end: 37.0),
            Pin(size: 2.0, middle: 0.4708),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff0a2175),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 37.0, end: 37.0),
            Pin(size: 2.0, middle: 0.4255),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff0a2175),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 37.0, end: 37.0),
            Pin(size: 2.0, middle: 0.4482),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff0a2175),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 38.0, end: 36.0),
            Pin(size: 2.0, middle: 0.4928),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff0a2175),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 38.0, end: 36.0),
            Pin(size: 2.0, middle: 0.5148),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff0a2175),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 38.0, end: 36.0),
            Pin(size: 2.0, middle: 0.5371),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff0a2175),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 37.0, end: 37.0),
            Pin(size: 2.0, middle: 0.5605),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff0a2175),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 37.0, end: 37.0),
            Pin(size: 2.0, middle: 0.5821),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff0a2175),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_obeayr =
    '<svg viewBox="0.0 0.0 5.6 10.5" ><path transform="translate(-102.3, 0.0)" d="M 107.8245697021484 4.953092575073242 L 102.9850769042969 0.1136034950613976 C 102.8248672485352 -0.04112783446907997 102.5695648193359 -0.03668534010648727 102.4148330688477 0.1235282346606255 C 102.2638854980469 0.2798191905021667 102.2638854980469 0.5275830626487732 102.4148330688477 0.6838503479957581 L 106.9692001342773 5.238215923309326 L 102.4148330688477 9.792583465576172 C 102.2573852539062 9.950055122375488 102.2573852539062 10.20535755157471 102.4148330688477 10.36282920837402 C 102.5723266601562 10.52027797698975 102.8276062011719 10.52027797698975 102.9850769042969 10.36282920837402 L 107.8245697021484 5.52333927154541 C 107.9820251464844 5.365843296051025 107.9820251464844 5.110565185546875 107.8245697021484 4.953092575073242 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s =
    '<svg viewBox="0.0 0.0 5.8 10.5" ><path transform="translate(-102.3, 0.0)" d="M 102.418815612793 4.953092575073242 L 107.4220123291016 0.1136034950613976 C 107.5876388549805 -0.04112783446907997 107.8515777587891 -0.03668534010648727 108.0115432739258 0.1235282346606255 C 108.167594909668 0.2798191905021667 108.167594909668 0.5275830626487732 108.0115432739258 0.6838503479957581 L 103.3031158447266 5.238215923309326 L 108.0115432739258 9.792583465576172 C 108.17431640625 9.950055122375488 108.17431640625 10.20535755157471 108.0115432739258 10.36282920837402 C 107.8487243652344 10.52027797698975 107.5848083496094 10.52027797698975 107.4220123291016 10.36282920837402 L 102.418815612793 5.52333927154541 C 102.2560348510742 5.365843296051025 102.2560348510742 5.110565185546875 102.418815612793 4.953092575073242 Z" fill="#ffffff" fill-opacity="0.35" stroke="none" stroke-width="1" stroke-opacity="0.35" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xe43b6 =
    '<svg viewBox="0.0 0.0 18.8 17.0" ><path transform="translate(0.0, -16.9)" d="M 17.2952880859375 18.49050903320312 C 16.32103157043457 17.47581481933594 14.95585060119629 16.89846611022949 13.52554893493652 16.89632606506348 C 12.09410190582275 16.8979320526123 10.72750186920166 17.47497367858887 9.751748085021973 18.4898624420166 L 9.419198989868164 18.83036041259766 L 9.086649894714355 18.48986053466797 C 7.150484561920166 16.47067260742188 3.891579866409302 16.35471343994141 1.807776808738708 18.23080825805664 C 1.715439558029175 18.31397438049316 1.626257538795471 18.40035057067871 1.540428400039673 18.48986053466797 C -0.5134760141372681 20.63651275634766 -0.5134760141372681 23.95406150817871 1.540428400039673 26.10071182250977 L 8.93049430847168 33.65220642089844 C 9.186165809631348 33.91374588012695 9.612235069274902 33.92494201660156 9.882148742675781 33.67720413208008 C 9.890983581542969 33.66910171508789 9.899581909179688 33.6607666015625 9.907944679260254 33.65220642089844 L 17.29532814025879 26.10071182250977 C 19.34907341003418 23.95429229736328 19.34907341003418 20.63693237304688 17.2952880859375 18.49050903320312 Z M 16.32122802734375 25.2025089263916 L 16.320556640625 25.2025089263916 L 9.419198989868164 32.25565719604492 L 2.517208576202393 25.2025089263916 C 0.9481441974639893 23.56227111816406 0.9481441974639893 21.02765274047852 2.517208576202393 19.38741302490234 C 3.942106962203979 17.89095687866211 6.349228382110596 17.79712677001953 7.893600940704346 19.17781639099121 C 7.968583583831787 19.24485397338867 8.040724754333496 19.31475639343262 8.109909057617188 19.38741302490234 L 8.930493354797363 20.22626113891602 C 9.20091724395752 20.48661231994629 9.637517929077148 20.48661231994629 9.907943725585938 20.22626113891602 L 10.72852802276611 19.38806343078613 C 12.15342617034912 17.8916072845459 14.56054878234863 17.79777717590332 16.10492134094238 19.178466796875 C 16.17990303039551 19.24550247192383 16.25204658508301 19.31540679931641 16.32122993469238 19.38806343078613 C 17.90394020080566 21.0309009552002 17.91553688049316 23.57014465332031 16.32122802734375 25.2025089263916 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x7y078 =
    '<svg viewBox="350.0 371.0 22.0 22.0" ><path transform="translate(350.0, 371.0)" d="M 20.39560699462891 0 L 18.10396385192871 0 C 17.21939086914062 0 16.49981498718262 0.7195757627487183 16.49981498718262 1.60414981842041 L 16.49981498718262 1.939646244049072 C 15.11383152008057 1.23382031917572 11.96603012084961 0 6.846500396728516 0 L 5.379848957061768 0 C 3.254121541976929 0 1.451057195663452 1.519817352294922 1.08989429473877 3.613461971282959 L 0.06323853135108948 9.571731567382812 C -0.1549258530139923 10.84313488006592 0.1961537897586823 12.13562202453613 1.024811744689941 13.12011241912842 C 1.853469610214233 14.10276889801025 3.067123651504517 14.66651248931885 4.353193283081055 14.66651248931885 L 8.511149406433105 14.66651248931885 C 8.251735687255859 15.36317157745361 7.992321491241455 16.37882804870605 7.992321491241455 17.6456470489502 C 7.992321491241455 21.08952713012695 9.941134452819824 21.9997673034668 10.97145652770996 21.9997673034668 C 12.87443733215332 21.9997673034668 13.033935546875 20.22511863708496 13.033935546875 18.56230354309082 C 13.033935546875 16.5328254699707 15.3099946975708 14.84617614746094 16.51173210144043 14.09635257720947 C 16.57314682006836 14.92500972747803 17.25972366333008 15.58316898345947 18.10396385192871 15.58316898345947 L 20.39560699462891 15.58316898345947 C 21.28017997741699 15.58316898345947 21.999755859375 14.86359405517578 21.999755859375 13.97902011871338 L 21.999755859375 1.60414981842041 C 21.999755859375 0.7195757627487183 21.28017997741699 0 20.39560699462891 0 Z M 11.65894985198975 18.56230354309082 C 11.65894985198975 20.62478256225586 11.3097038269043 20.62478256225586 10.97145652770996 20.62478256225586 C 10.32612991333008 20.62478256225586 9.367307662963867 19.83095741271973 9.367307662963867 17.6456470489502 C 9.367307662963867 15.61433601379395 10.16296577453613 14.36951637268066 10.16846466064453 14.36034965515137 C 10.30871391296387 14.1495189666748 10.32246398925781 13.87818813323975 10.2023811340332 13.65452289581299 C 10.08321571350098 13.43085861206055 9.849468231201172 13.29152679443359 9.596470832824707 13.29152679443359 L 4.353192329406738 13.29152679443359 C 3.473201751708984 13.29152679443359 2.643626928329468 12.90653133392334 2.077132940292358 12.23462200164795 C 1.509722352027893 11.56179428100586 1.269558072090149 10.67630386352539 1.418973207473755 9.806396484375 L 2.445629358291626 3.848126173019409 C 2.692209959030151 2.414474487304688 3.926030158996582 1.374985456466675 5.379848480224609 1.374985456466675 L 6.846499919891357 1.374985456466675 C 13.08251857757568 1.374985456466675 16.20648574829102 3.325631856918335 16.49981498718262 3.519046306610107 L 16.49981498718262 12.51145267486572 C 15.73624038696289 12.9166145324707 11.65894985198975 15.23575687408447 11.65894985198975 18.56230354309082 Z M 20.62477111816406 13.97902011871338 C 20.62477111816406 14.10551834106445 20.5221061706543 14.20818424224854 20.39560699462891 14.20818424224854 L 18.10396385192871 14.20818424224854 C 17.97746467590332 14.20818424224854 17.87479972839355 14.10551834106445 17.87479972839355 13.97902011871338 L 17.87479972839355 1.60414981842041 C 17.87479972839355 1.47948431968689 17.97929954528809 1.374985456466675 18.10396385192871 1.374985456466675 L 20.39560699462891 1.374985456466675 C 20.5221061706543 1.374985456466675 20.62477111816406 1.477651000022888 20.62477111816406 1.60414981842041 L 20.62477111816406 13.97902011871338 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
