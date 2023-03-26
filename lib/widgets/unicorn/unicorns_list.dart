import 'package:fhrstic_task/data/providers/api_provider.dart';
import 'package:fhrstic_task/widgets/unicorn/unicorn_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UnicornsList extends ConsumerWidget {
  const UnicornsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(unicornFutureProvider);
    return data.when(
        loading: () => const Center(
                child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: CircularProgressIndicator(),
            )),
        error: (error, stackTrace) => Text(error.toString()),
        data: (unicorns) {
          if (unicorns.isEmpty) {
            return const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Center(
                child: Text("Try to spawn a random unicorn"),
              ),
            );
          } else {
            return Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: unicorns.length,
                  itemBuilder: (BuildContext context, index) {
                    final unicorn = unicorns[index];
                    final controller =
                        TextEditingController(text: unicorn.name);
                    return UnicornCard(unicorn, controller);
                  }),
            );
          }
        });
  }
}
