import 'package:fhrstic_task/data/models/unicorn_model.dart';
import 'package:fhrstic_task/widgets/unicorn/unicorn_buttons.dart';
import 'package:flutter/material.dart';

class UnicornCard extends StatelessWidget {
  const UnicornCard(this.unicorn, this.controller, {super.key});
  final Unicorn unicorn;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                "assets/images/unicorn.png",
                scale: 50,
                color: Colors.primaries[int.parse(unicorn.colour!)],
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
                      FocusManager.instance.primaryFocus?.unfocus();
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
  }
}
