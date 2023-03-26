import 'package:dio/dio.dart';
import 'package:fhrstic_task/data/models/unicorn_model.dart';

class ApiService {
  String endpoint =
      "https://crudcrud.com/api/4a4be7de8dda4a14bb371535a27bd879/unicorns";

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
    Dio dio = Dio();
    Response response = await dio.post(endpoint, data: newUnicorn.toJson());
    if (response.statusCode != 201) {
      throw Exception(response.statusMessage);
    }
  }
}
