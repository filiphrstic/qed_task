import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fhrstic_task/data/providers/auth_provider.dart';
import 'package:fhrstic_task/flavor_banner.dart';
import 'package:fhrstic_task/screens/login_screen/widgets/social_login.dart';
import 'package:fhrstic_task/widgets/fp_button.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  static const Key anonymousButtonKey = Key('anonymus');

  @override
  void initState() {
    getInfo();
    super.initState();
  }

  void getInfo() async {
    await FirebaseAnalytics.instance.logEvent(
      name: 'Login Screen seen',
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue>(
      signInProvider,
      (_, state) => log("Error"),
    );
    final state = ref.watch(signInProvider);

    return FlavorBanner(
      child: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FpButton(
              key: anonymousButtonKey,
              title: tr("Skip Login"),
              onPressed: state.isLoading ? null : () => ref.read(signInProvider.notifier).signInAnonymously(),
              isLoading: state.isLoading,
            ),

            SocialLogin()
          ],
        )), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
