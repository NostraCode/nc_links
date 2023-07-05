part of '_index.dart';

class SnakeCtrl {
  init() {
    logxx.i(SnakeCtrl, '...');
    initGrid();
    randFood();
    setSnake();
    setFood();
  }

  initGrid() {
    _dt.listx = List.generate(
      _dt.width,
      (i) => List.generate(
        _dt.width,
        (j) => null.inj<int?>(),
      ),
    );
  }

  cleanGrid() {
    for (var x in _dt.listx) {
      for (var y in x) {
        y.st = null;
      }
    }
  }

  setFood() {
    _dt.listx[_dt.food.st[0]][_dt.food.st[1]].st = 0;
  }

  setSnake() {
    for (var i in _dt.snake) {
      _dt.listx[i[0]][i[1]].st = 1;
    }
  }

  bool isEat() {
    final head = _dt.snake[0];
    return head[0] == _dt.food.st[0] && head[1] == _dt.food.st[1];
  }

  randFood() {
    int x, y;
    do {
      x = Random().nextInt(_dt.width);
      y = Random().nextInt(_dt.width);
    } while ([x, y] == _dt.snake[0]);
    _dt.food.st = [x, y];
  }

  moveSnake(String direction) {
    List<List<int>> newSnake = [];
    switch (direction) {
      case 'D':
        newSnake = _dt.snake.map((e) => goD(e)).toList();
        break;
      case 'U':
        newSnake = _dt.snake.map((e) => goU(e)).toList();
        break;
      case 'L':
        newSnake = _dt.snake.map((e) => goL(e)).toList();
        break;
      case 'R':
        newSnake = _dt.snake.map((e) => goR(e)).toList();
        break;
    }
    _dt.snake = newSnake;
    cleanGrid();
    if (isEat()) randFood();
    setSnake();
    setFood();
  }

  List<int> goD(List<int> e) => [add(e[0]), e[1]];
  List<int> goU(List<int> e) => [min(e[0]), e[1]];
  List<int> goL(List<int> e) => [e[0], min(e[1])];
  List<int> goR(List<int> e) => [e[0], add(e[1])];

  int add(int val) => val == (_dt.width - 1) ? (0) : (val + 1);
  int min(int val) => val == (0) ? (_dt.width - 1) : (val - 1);
}
