import 'package:testproject/models/response/passion_response.dart';
import 'package:testproject/models/response/profile_response.dart';

abstract class IPassionRepository {
  Future<PassionResponse> getInterests();
  Future<ProfileResponse> getProfile();
}