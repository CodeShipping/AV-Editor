// Copyright 2021 BBK Development. All rights reserved.
// Use of this source code is governed by a GPL-style license that can be found
// in the LICENSE file.

import 'package:aveditor/src/core/core.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_player/video_player.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  final videoPlayerOptions = VideoPlayerOptions(mixWithOthers: true);

  //! Src - Core
  sl
    ..registerSingleton<AudioPlayerService>(AudioPlayerService())
    ..registerSingleton<FFmpegKitService>(const FFmpegKitService())
    ..registerSingleton<UrlLauncherService>(const UrlLauncherService())
    ..registerSingleton<PhotoManagerService>(PhotoManagerService())
    ..registerSingleton<LaunchReviewService>(
      const LaunchReviewService(),
    )
    ..registerSingleton<SharedPreferencesService>(
      SharedPreferencesService(sharedPreferences: sharedPreferences),
    )
    ..registerSingleton<VideoPlayerService>(
      VideoPlayerService(options: videoPlayerOptions),
    )
    ..registerSingleton<WakelockService>(const WakelockService());
}
