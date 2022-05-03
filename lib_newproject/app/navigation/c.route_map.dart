part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    Routes.cobaSatu: (data) => const CobaSatuView(),
    Routes.cobaDua: (data) => const CobaDuaView(),
    Routes.cobaTiga: (data) => const CobaTigaView(),
  };
}
