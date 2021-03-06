import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx/app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "앱",
      initialBinding: BindingsBuilder(
        () {
          //Get.put(SplashService());
        },
      ),
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
    );
  }
}
