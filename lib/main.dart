import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testproject/controller/PassionController.dart';
import 'package:testproject/routes/AppRouter.dart';
import 'package:testproject/screens/Passion.dart';

import 'controller/BaseController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(BaseController());
    var dio = Dio();
    Get.put(dio,permanent: true);
    Get.lazyPut<PassionController>(() => PassionController());

    return GetMaterialApp(
      initialBinding: BindingsBuilder((){


      }),
      home: Passion(),
      initialRoute: "/",
      getPages: AppRouter.generateRoutePages,
    );
  }
}
