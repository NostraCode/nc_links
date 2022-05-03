part of '_index.dart';

enum Flavor { dev, stage, prod }

final config = RM.injectFlavor(
  {
    Flavor.dev: () => ConfigDev(),
    Flavor.stage: () => ConfigStage(),
    Flavor.prod: () => ConfigProd(),
  },
);
