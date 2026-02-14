import 'dart:developer';

import 'package:in_app_review/in_app_review.dart';

/// An exception thrown when the launch review fails.
class LaunchReviewException implements Exception {}

/// {@template launch_review_service}
/// A service that provides review functionality by launching the related store.
///
/// This service uses the `in_app_review` package.
///
/// ```dart
/// final launchReviewService = LaunchReviewService();
/// ```
/// {@endtemplate}
class LaunchReviewService {
  /// {@macro launch_review_service}
  const LaunchReviewService({
    String? androidAppId,
    String? iOSAppId,
  }) : _iOSAppId = iOSAppId;

  final String? _iOSAppId;

  /// Launches the app store page for this app.
  ///
  /// Throws a [LaunchReviewException] if the launch review fails.
  Future<void> launch() async {
    try {
      final inAppReview = InAppReview.instance;
      if (await inAppReview.isAvailable()) {
        await inAppReview.requestReview();
      } else {
        await inAppReview.openStoreListing(
          appStoreId: _iOSAppId,
        );
      }
    } catch (_) {
      log('Failed to launch review!', name: 'LaunchReviewService');
      throw LaunchReviewException();
    }
  }
}
