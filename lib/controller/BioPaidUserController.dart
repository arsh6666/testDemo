import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testproject/controller/BaseController.dart';
import 'package:testproject/models/response/profile_response.dart';
import 'package:testproject/repository/IPassionRepository.dart';
import 'package:testproject/repository/PassionRepository.dart';
import 'package:testproject/utils/videoWidget.dart';
import 'package:video_player/video_player.dart';

class BioPaidUserController extends BaseController {
  IPassionRepository _iPassionRepository = PassionRepository();

  Rx<Profile> profile = Profile().obs;

  List<Media> mediaList = [];

  var currentIndex = 0.obs;

  List<Widget> imageSlider = [];
  List<Widget> personInfo = [];

  void getProfileDetail() async {
    try {
      var response = await _iPassionRepository.getProfile();
      if (response.status != null && response.status == "success") {
        createSlider(response.data!.profile!.media!);
        createPersonalInfo(response.data!.profile!.basicInfo!);
        profile.value = response.data!.profile!;
      }
    } catch (ex) {
      print(ex);
    }
  }

  void createSlider(List<Media> _media) {
    mediaList = _media;

    _media.forEach((item) {
      this.imageSlider.add(Container(
            child: Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      item.isVideo == false
                          ? Image.network(item.filename!,
                              fit: BoxFit.fill, width: 1000.0, height: 500)
                          : Container(
                              height: 500,
                              child: VideoViewPlayer(mediaId: item.video)),
                    ],
                  )),
            ),
          ));
    });
  }

  void createPersonalInfo(List<Basic_info> _basicInfo) {
    _basicInfo.forEach((element) {
      var myWidget = Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      left: 20, bottom: 15.0, top: 15, right: 5.0),
                  child: Text(
                    element.key!.name!,
                    softWrap: true,
                    maxLines: 2,
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                    ),
                  )),
              Flexible(
                child: new Container(
                  padding: new EdgeInsets.only(right: 13.0),
                  child: new Text(
                    element.value!,
                    softWrap: true,
                    maxLines: 2,
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(color: Colors.black)
        ],
      );

      personInfo.add(myWidget);
    });
  }
}
