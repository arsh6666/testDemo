import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:testproject/models/response/passion_response.dart';
import 'package:testproject/models/response/profile_response.dart';
import 'package:testproject/repository/IPassionRepository.dart';
import 'package:testproject/utils/AppApi.dart';

class PassionRepository extends IPassionRepository{

  Dio apiClient = Get.find();

  @override
  Future<PassionResponse> getInterests() async {
    var response = await apiClient.get(AppApi.getInterestsURL) ;
    return PassionResponse.fromJson(response.data);
  }

  @override
  Future<ProfileResponse> getProfile() async {

    apiClient.options.headers["Authorization"] = "Bearer ${AppApi.appToken}";
    var response = await apiClient.get(AppApi.getProfileURL);
    return ProfileResponse.fromJson(response.data);

  }

}