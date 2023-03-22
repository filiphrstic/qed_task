

import 'package:fhrstic_task/flavor_config.dart';
import 'package:fhrstic_task/main_common.dart';
import 'firebase_options_dev.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.dev,
    env: "dev",
    name: "DEV fhrstic_task",
    values: FlavorValues(
      bundleID: 'com.fhrstic.task.dev',
      appID: '',
      baseUrl: '',
      apiUrl: '',
      sentryUrl: '',
      dynamicLinkUrl: ''
    ),
  );

  mainCommon(DefaultFirebaseOptions.currentPlatform);
}
