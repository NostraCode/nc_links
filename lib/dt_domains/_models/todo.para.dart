part of '_index.dart';

class TodoPara {
  TodoPara._private();
  static final TodoPara instance = TodoPara._private();

  final int limit = 3;

  int start = 0;
}
