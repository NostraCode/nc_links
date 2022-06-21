// ignore_for_file: annotate_overrides

part of '_index.dart';

class ConfigStage implements IConfig {
  String get apiHost => 'stg.example.com';
  String get appName => 'STG_FeMaster';
  String get token =>
      '3fadf85785ef22fc9fda7a03578770d6da459f72b8b5bf7137da7d073bc1e11f';
  IPersistStore get store => StoreHive();
}
