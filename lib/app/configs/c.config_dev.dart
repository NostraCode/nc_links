// ignore_for_file: annotate_overrides

part of '_index.dart';

class ConfigDev implements IConfig {
  String get apiHost => 'https://gorest.co.in';
  String get appName => 'DEV_FeMaster';
  String get token =>
      '3fadf85785ef22fc9fda7a03578770d6da459f72b8b5bf7137da7d073bc1e11f';
  // 'zzzzzzzzzzzzzzzzzzzzz';
  IPersistStore get store => StoreFake();
}
