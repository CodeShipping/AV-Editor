// Copyright 2021 BBK Development. All rights reserved.
// Use of this source code is governed by a GPL-style license that can be found
// in the LICENSE file.

import 'package:aveditor/src/app/app.dart';
import 'package:aveditor/src/components/components.dart';
import 'package:aveditor/src/core/core.dart';
import 'package:aveditor/src/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appController = Get.find<AppController>();

    return Sizer(
      builder: (_, __, ___) => Obx(
        () => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: appController.getAppTheme.data,
          home: const VClipPageView(),
        ),
      ),
    );
  }
}

class VClipPageView extends StatelessWidget {
  const VClipPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationBarController = Get.find<NavigationBarController>();
    final appController = Get.find<AppController>();

    return Scaffold(
      appBar: const CustomAppBar(title: kAppNameText),
      body: SizedBox.expand(
        child: PageView(
          controller: navigationBarController.pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: appController.onPageChanged,
          children: const <Widget>[
            SelectView(),
            EditView(),
            MoreView(),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBarView(),
    );
  }
}
