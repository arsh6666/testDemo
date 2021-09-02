import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scatter/flutter_scatter.dart';
import 'package:get/get.dart';
import 'package:testproject/controller/BioPaidUserController.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:testproject/utils/AppApi.dart';

class BioPaidUser extends GetView<BioPaidUserController> {
  final CarouselController _controller = CarouselController();

  BioPaidUser({Key? key}) : super(key: key) {
    controller.getProfileDetail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('lib/assets/images/background.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SafeArea(child: Obx(() {
          return controller.profile.value.name == null
              ? Container()
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children: [
                        CarouselSlider(
                          items: controller.imageSlider,
                          carouselController: _controller,
                          options: CarouselOptions(
                              height: 500,
                              autoPlay: false,
                              viewportFraction: 1.0,
                              enlargeCenterPage: false,
                              aspectRatio: 1.0,
                              onPageChanged: (index, reason) {
                                controller.currentIndex.value = index;
                              }),
                        ),
                        Positioned.fill(
                          top: 180,
                          right: 20,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(4, 32, 147, 0.6),
                                        shape: BoxShape.circle),
                                    child: Image.asset(
                                        "lib/assets/images/heart.png"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(4, 32, 147, 0.6),
                                        shape: BoxShape.circle),
                                    child: Image.asset(
                                        "lib/assets/images/dislike.png"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: controller.mediaList
                                    .asMap()
                                    .entries
                                    .map((entry) {
                                  return GestureDetector(
                                    onTap: () =>
                                        _controller.animateToPage(entry.key),
                                    child: Container(
                                      width: 10.0,
                                      height: 10.0,
                                      margin: EdgeInsets.symmetric(
                                          vertical: 8.0, horizontal: 4.0),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              (Theme.of(context).brightness ==
                                                          Brightness.light
                                                      ? Colors.white
                                                      : Colors.grey)
                                                  .withOpacity(controller
                                                              .currentIndex
                                                              .value ==
                                                          entry.key
                                                      ? 0.9
                                                      : 0.4)),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(
                                controller.profile.value.name! +
                                    ", " +
                                    controller.profile.value.age!.toString(),
                                style: TextStyle(
                                  fontFamily: 'Helvetica Neue',
                                  fontSize: 20,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w300,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20, bottom: 20.0),
                              child: Text(
                                controller.profile.value.bio!,
                                style: TextStyle(
                                  fontFamily: 'Helvetica Neue',
                                  fontSize: 15,
                                  color: const Color(0xffffffff),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
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
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              bottom: 15.0,
                                              top: 15,
                                              right: 20.0),
                                          child: Text(
                                            "Name",
                                            style: TextStyle(
                                              fontFamily: 'Helvetica Neue',
                                              fontSize: 15,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              bottom: 15.0,
                                              top: 15,
                                              right: 20.0),
                                          child: Text(
                                            controller.profile.value.name!,
                                            style: TextStyle(
                                              fontFamily: 'Helvetica Neue',
                                              fontSize: 15,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(color: Colors.black),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              bottom: 15.0,
                                              top: 15,
                                              right: 20.0),
                                          child: Text(
                                            "Gender",
                                            style: TextStyle(
                                              fontFamily: 'Helvetica Neue',
                                              fontSize: 15,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              bottom: 15.0,
                                              top: 15,
                                              right: 20.0),
                                          child: Text(
                                            controller.profile.value.gender!,
                                            style: TextStyle(
                                              fontFamily: 'Helvetica Neue',
                                              fontSize: 15,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(color: Colors.black),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              bottom: 15.0,
                                              top: 15,
                                              right: 20.0),
                                          child: Text(
                                            "Age",
                                            style: TextStyle(
                                              fontFamily: 'Helvetica Neue',
                                              fontSize: 15,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              bottom: 15.0,
                                              top: 15,
                                              right: 20.0),
                                          child: Text(
                                            controller.profile.value.age!
                                                .toString(),
                                            style: TextStyle(
                                              fontFamily: 'Helvetica Neue',
                                              fontSize: 15,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(color: Colors.black),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              bottom: 15.0,
                                              top: 15,
                                              right: 20.0),
                                          child: Text(
                                            "Location",
                                            style: TextStyle(
                                              fontFamily: 'Helvetica Neue',
                                              fontSize: 15,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20,
                                              bottom: 15.0,
                                              top: 15,
                                              right: 20.0),
                                          child: Text(
                                            "Location",
                                            style: TextStyle(
                                              fontFamily: 'Helvetica Neue',
                                              fontSize: 15,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 30),
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
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: controller.personInfo,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 30),
                              child: Text(
                                '${controller.profile.value.instagram!.length} Instagram Posts',
                                style: TextStyle(
                                  fontFamily: 'Helvetica Neue',
                                  fontSize: 16,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 20),
                              child: Container(
                                height:
                                    controller.profile.value.instagram!.length >
                                            0
                                        ? 250
                                        : 0,
                                child: GridView.count(
                                    crossAxisCount: 3,
                                    children: List.generate(
                                        controller.profile.value.instagram!
                                            .length, (index) {
                                      var imageName = controller.profile.value
                                          .instagram![index].mediaUrl!;
                                      return Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          color: Colors.red,
                                          child: CachedNetworkImage(
                                            imageUrl: imageName,
                                            imageBuilder:
                                                (context, imageProvider) =>
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
                                            errorWidget:
                                                (context, url, error) =>
                                                    Icon(Icons.error),
                                          ),
                                        ),
                                      );
                                    })),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 30),
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
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 20, bottom: 50),
                              child: SingleChildScrollView(
                                child: FittedBox(
                                  child: Scatter(
                                    fillGaps: true,
                                    delegate: EllipseScatterDelegate(
                                      a: 185.0,
                                      b: 185.0,
                                      step: 1.0 /
                                          controller
                                              .profile.value.interests!.length,
                                    ),
                                    children: controller
                                        .profile.value.interests!
                                        .map((e) {
                                      return Container(
                                          width: 175,
                                          height: 175,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Stack(children: [
                                            CachedNetworkImage(
                                              imageUrl: AppApi.imageBaseURL +
                                                  e.image!,
                                              imageBuilder:
                                                  (context, imageProvider) =>
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
                                              errorWidget:
                                                  (context, url, error) =>
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
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50, top: 5, right: 50),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 50,
                                  decoration: new BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Color.fromRGBO(8, 28, 113, 1)),
                                  padding: const EdgeInsets.all(5.0),
                                  child: Center(
                                    child: Text(
                                      "Report".toUpperCase(),
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50, top: 5, right: 50),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 50,
                                  decoration: new BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color:
                                          Color.fromRGBO(38, 153, 251, 0.35)),
                                  padding: const EdgeInsets.all(5.0),
                                  child: Center(
                                    child: Text(
                                      "Unpair".toUpperCase(),
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50, top: 5, right: 50, bottom: 25),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 50,
                                  decoration: new BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color:
                                          Color.fromRGBO(222, 222, 222, 0.35)),
                                  padding: const EdgeInsets.all(5.0),
                                  child: Center(
                                    child: Text(
                                      "Block".toUpperCase(),
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
        }))
      ],
    ));
  }
}
