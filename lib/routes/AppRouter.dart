import 'package:get/get.dart';
import 'package:testproject/controller/BioPaidUserController.dart';
import 'package:testproject/controller/PassionController.dart';
import 'package:testproject/routes/AppRouterConstant.dart';
import 'package:testproject/screens/BioPaidUser.dart';
import 'package:testproject/screens/Passion.dart';

class AppRouter {
  static var generateRoutePages = [
    GetPage(
        name: '/',
        page: () => Passion(),
        binding: BindingsBuilder(
                () => {Get.lazyPut<PassionController>(() => PassionController())})),
    GetPage(
        name: AppRouterConstant.Passion,
        page: () => Passion(),
        binding: BindingsBuilder(
                () => {Get.lazyPut<PassionController>(() => PassionController())})),
    GetPage(
        name: AppRouterConstant.Profile,
        page: () => BioPaidUser(),
        binding: BindingsBuilder(
                () => {Get.lazyPut<BioPaidUserController>(() => BioPaidUserController())})),


  ];
}