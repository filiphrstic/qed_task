import 'package:fhrstic_task/data/providers/api_provider.dart';
import 'package:fhrstic_task/widgets/unicorn/get_unicorn_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UnicornsList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(unicornFutureProvider);
    return data.when(
        loading: () => const Center(child: CircularProgressIndicator()),
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
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Image.asset(
                                "assets/images/test.png",
                                scale: 50,
                                color: Colors
                                    .primaries[int.parse(unicorn.colour!)],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: TextField(
                                    controller: controller,
                                    onTapOutside: (event) {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    onChanged: (value) {
                                      unicorn.name = controller.text;
                                    },
                                  ),
                                ),
                                Text("age: ${unicorn.age}"),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                UpdateUnicornButton(
                                  unicorn: unicorn,
                                ),
                                DeleteUnicornButton(
                                  id: unicorn.id!,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            );
          }
        });
  }
}
