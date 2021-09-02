import 'package:get/get.dart';
import 'package:testproject/controller/BaseController.dart';
import 'package:testproject/models/response/passion_response.dart';
import 'package:testproject/repository/IPassionRepository.dart';
import 'package:testproject/repository/PassionRepository.dart';

class PassionController extends BaseController {
  RxList<Interests> interestList = <Interests>[].obs;

  IPassionRepository _passionRepository = PassionRepository();

  void getPassionMethod() async {
    try {
      var response = await _passionRepository.getInterests();
      if (response.status != null && response.status == "success") {
        interestList.value = response.data!.interests!;
      }
    } catch (e) {
      print(e);
    }
  }
}
