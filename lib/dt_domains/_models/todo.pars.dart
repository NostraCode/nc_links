part of '_index.dart';

class TodoPars {
  TodoPars._private();
  static final TodoPars instance = TodoPars._private();

  int start = 0;
  int limit = 3;
}
