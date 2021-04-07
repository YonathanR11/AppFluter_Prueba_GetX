import 'package:dio/dio.dart';
import 'package:mi_app/app/data/model/personaje.dart';
import 'package:mi_app/app/util/constants.dart';

class PersonajeAPI {
  final Dio _dio;

  PersonajeAPI(this._dio);

  Future<Personaje> listPersonajes(int page) async {
    final Response response = await _dio.get(
      '/api/character',
      queryParameters: {"page": page},
    );
    print("Response: ${response.data}");
    return Personaje.fromJson(response.data);
  }

  Future<List<Result>> listPersonajesPrincipal(int page) async {
    final Response response = await _dio.get(
      '/api/character',
      queryParameters: {"page": page},
    );
    print("Response: ${response.data}");
    Personaje p = Personaje.fromJson(response.data);
    return p.results;
  }
}
