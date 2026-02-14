// Copyright 2021 BBK Development. All rights reserved.
// Use of this source code is governed by a GPL-style license that can be found
// in the LICENSE file.

import 'package:aveditor/src/components/components.dart';
import 'package:aveditor/src/core/core.dart';
import 'package:aveditor/src/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

part 'widgets/gallery_grid_view_widget.dart';
part 'widgets/request_permission_widget.dart';

class SelectView extends StatelessWidget {
  const SelectView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectViewController = Get.find<SelectViewController>();

    return Obx(
      () {
        return AnimatedBuilder(
          animation: selectViewController.getAnimation,
          builder: (_, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1.2),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(
                  parent: selectViewController.getAnimation,
                  curve: Curves.easeInOutCubic,
                ),
              ),
              child: child,
            );
          },
          child: selectViewController.isMediaReady
              ? const _GalleryGridViewWidget()
              : const _RequestPermissionWidget(),
        );
      },
    );
  }
}
