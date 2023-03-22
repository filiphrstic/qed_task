// import 'package:fhrstic_task/firebase_options_prod.dart';
import 'package:fhrstic_task/flavor_config.dart';
import 'package:fhrstic_task/main_common.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.prod,
    env: "prod",
    name: "fhrstic_task",
    values: FlavorValues(
        bundleID: 'com.fhrstic.task',
        appID: '',
        baseUrl: '',
        apiUrl: '',
        sentryUrl: '',
        dynamicLinkUrl: ''),
  );

  // mainCommon(DefaultFirebaseOptions.currentPlatform);
}
