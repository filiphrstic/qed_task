import 'package:fhrstic_task/data/models/unicorn_model.dart';
import 'package:fhrstic_task/services/api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final unicornProvider = Provider<ApiService>((ref) => ApiService());

final unicornFutureProvider = FutureProvider<List<Unicorn>>((ref) async {
  return ref.watch(unicornProvider).getUnicorns();
});
