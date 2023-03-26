import 'dart:math';

import 'package:dio/dio.dart';
import 'package:fhrstic_task/data/models/unicorn_model.dart';
import 'package:flutter/material.dart';
import 'package:word_generator/word_generator.dart';

class ApiService {
  String endpoint =
      "https://crudcrud.com/api/d87fd8d817144cf1a23802b7d38aeed9/unicorns";

  Future<List<Unicorn>> getUnicorns() async {
    Dio dio = Dio();
    try {
      Response response = await dio.get(endpoint);
      return UnicornResponse.fromJson(response.data).unicorns;
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<void> deleteUnicorn(String id) async {
    Dio dio = Dio();
    Response response = await dio.delete('$endpoint/$id');
    if (response.statusCode != 200) {
      throw Exception(response.statusMessage);
    }
  }

  Future<void> updateUnicorn(
    Unicorn unicorn,
  ) async {
    Dio dio = Dio();
    Response response =
        await dio.put('$endpoint/${unicorn.id!}', data: unicorn.toJson());
    if (response.statusCode != 200) {
      throw Exception(response.statusMessage);
    }
  }

  Future<void> createUnicorn() async {
    Unicorn newUnicorn = randomUnicorn();
    // Unicorn newUnicorn = Unicorn(name: 'ime', age: 9, colour: 'green');
    Dio dio = Dio();
    Response response = await dio.post(endpoint, data: newUnicorn.toJson());
    if (response.statusCode != 201) {
      throw Exception(response.statusMessage);
    }
  }

  Unicorn randomUnicorn() {
    final wordGenerator = WordGenerator();
    String randomName = wordGenerator.randomName();
    int randomColorIndex = Random().nextInt(Colors.primaries.length);
    // print(randomColorIndex);
    Unicorn randomUnicorn = Unicorn(
        name: randomName,
        age: Random().nextInt(100),
        colour: randomColorIndex.toString());
    return randomUnicorn;
  }
}
