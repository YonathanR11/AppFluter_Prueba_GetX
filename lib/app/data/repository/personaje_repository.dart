import 'package:mi_app/app/data/model/personaje.dart';
import 'package:mi_app/app/data/provider/personaje_api.dart';

class PersonajeRepository {
  final PersonajeAPI _api;

  PersonajeRepository(this._api);

  Future<Personaje> listPersonajes(int page) => _api.listPersonajes(page);
  Future<List<Result>> listPersonajesPrincipal(int page) =>
      _api.listPersonajesPrincipal(page);
}
