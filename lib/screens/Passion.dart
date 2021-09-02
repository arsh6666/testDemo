//import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scatter/flutter_scatter.dart';
import 'package:get/get.dart';
import 'package:testproject/controller/PassionController.dart';
import 'package:testproject/routes/AppRouterConstant.dart';
import 'package:testproject/utils/AppApi.dart';

class Passion extends GetView<PassionController> {
  Passion({
    Key? key,
  }) : super(key: key) {
    controller.getPassionMethod();
  }

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
                padding: const EdgeInsets.only(bottom: 10.0),
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
                  color: const Color(0xffffffff)
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
              Obx(() {
                var interestList = controller.interestList.value;
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Scatter(
                      fillGaps: true,
                      delegate: ArchimedeanSpiralScatterDelegate(
                          ratio: 0.2, a: 5, b: 5),
                      children: interestList.map((e) {
                        return Container(
                            width: interestList.indexOf(e).isEven ? 90 : 118,
                            height: interestList.indexOf(e).isEven ? 90 : 118,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Stack(children: [
                              CachedNetworkImage(
                                imageUrl: AppApi.imageBaseURL + e.image!,
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                              Center(
                                  child: Text(
                                e.name!.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ))
                            ]));
                      }).toList(),
                    ),
                  ),
                );
              }),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50, top: 5, right: 50, bottom: 20),
                child: GestureDetector(
                  onTap: () {
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
                        style: TextStyle(color: Colors.white),
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
