import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:word_generator/word_generator.dart';

part 'unicorn_model.freezed.dart';
part 'unicorn_model.g.dart';

@unfreezed
class Unicorn with _$Unicorn {
  factory Unicorn({
    String? id,
    String? name,
    int? age,
    String? colour,
  }) = _Unicorn;

  factory Unicorn.fromJson(Map<String, dynamic> json) =>
      _$UnicornFromJson(json);
}

class UnicornResponse {
  List<Unicorn> unicorns = [];

  UnicornResponse.fromJson(dynamic jsonResponse) {
    try {
      if (jsonResponse.isNotEmpty) {
        jsonResponse.forEach((element) {
          unicorns.add(Unicorn.fromJson(element));
        });
      }
    } catch (error) {
      print("Error: $error");
    }
  }
}

Unicorn randomUnicorn() {
  final wordGenerator = WordGenerator();
  String randomName = wordGenerator.randomName();
  int randomColorIndex = Random().nextInt(Colors.primaries.length);
  Unicorn randomUnicorn = Unicorn(
      name: randomName,
      age: Random().nextInt(100),
      colour: randomColorIndex.toString());
  return randomUnicorn;
}
