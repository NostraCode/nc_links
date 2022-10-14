part of '_index.dart';

abstract class IConfig {
  String get appName;
  String get apiHost;
  String get token;
  IPersistStore get store;
}
