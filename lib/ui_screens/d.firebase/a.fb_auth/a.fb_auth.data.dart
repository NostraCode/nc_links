part of '_index.dart';

class FbAuthData {
  final title = 'FbAuth';

  final rxCounterStream = Prov.auth.st.rxEventCounter;

  final rxUserApp = Prov.auth.st.rxUserApp;
}
