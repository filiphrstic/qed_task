import 'package:fhrstic_task/data/models/unicorn_model.dart';
import 'package:fhrstic_task/data/providers/api_provider.dart';
import 'package:fhrstic_task/widgets/fp_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetUnicornsButton extends ConsumerWidget {
  const GetUnicornsButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FpButton(
      title: "Get unicorns",
      onPressed: () => ref.refresh(unicornFutureProvider),
    );
  }
}

class DeleteUnicornButton extends ConsumerWidget {
  const DeleteUnicornButton({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FpButton(
        title: "Delete",
        onPressed: () async {
          await ref.read(unicornProvider).deleteUnicorn(id);
          ref.refresh(unicornFutureProvider);
        });
  }
}

class UpdateUnicornButton extends ConsumerWidget {
  const UpdateUnicornButton({super.key, required this.unicorn});
  final Unicorn unicorn;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FpButton(
        title: "Update",
        onPressed: () async {
          FocusManager.instance.primaryFocus?.unfocus();
          await ref.read(unicornProvider).updateUnicorn(unicorn);
          ref.refresh(unicornFutureProvider);
        });
  }
}

class CreateUnicornButton extends ConsumerWidget {
  const CreateUnicornButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FpButton(
        title: "Spawn a random unicorn",
        onPressed: () async {
          await ref.read(unicornProvider).createUnicorn();
          ref.refresh(unicornFutureProvider);
        });
  }
}
