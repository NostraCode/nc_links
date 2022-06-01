// ignore_for_file: annotate_overrides

part of '_index.dart';

class ConfigStage implements IConfig {
  String get apiHost => 'stg.example.com';
  String get appName => 'STG_FeMaster';
  IPersistStore get store => StoreHive();
}
