import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

class GetxAppScreen extends StatelessWidget {
  const GetxAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('???');
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
