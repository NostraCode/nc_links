part of '_index.dart';

final x1SnakeCtrl = SnakeCtrl();

class SnakeCtrl {
  SnakeData get dt => x1SnakeData.st;

  init() {
    loggerx(SnakeCtrl).v('init...');
    initGrid();
    randFood();
    setSnake();
    setFood();
  }

  initGrid() {
    dt.listx = List.generate(
      dt.width,
      (i) => List.generate(
        dt.width,
        (j) => null.inj<int?>(),
      ),
    );
  }

  cleanGrid() {
    for (var x in dt.listx) {
      for (var y in x) {
        y.st = null;
      }
    }
  }

  setFood() {
    dt.listx[dt.food.st[0]][dt.food.st[1]].st = 0;
  }

  setSnake() {
    for (var i in dt.snake) {
      dt.listx[i[0]][i[1]].st = 1;
    }
  }

  bool isEat() {
    final head = dt.snake[0];
    return head[0] == dt.food.st[0] && head[1] == dt.food.st[1];
  }

  randFood() {
    int x, y;
    do {
      x = Random().nextInt(dt.width);
      y = Random().nextInt(dt.width);
    } while ([x, y] == dt.snake[0]);
    dt.food.st = [x, y];
  }

  moveSnake(String direction) {
    List<List<int>> newSnake = [];
    switch (direction) {
      case 'D':
        newSnake = dt.snake.map((e) => goD(e)).toList();
        break;
      case 'U':
        newSnake = dt.snake.map((e) => goU(e)).toList();
        break;
      case 'L':
        newSnake = dt.snake.map((e) => goL(e)).toList();
        break;
      case 'R':
        newSnake = dt.snake.map((e) => goR(e)).toList();
        break;
    }
    dt.snake = newSnake;
    cleanGrid();
    if (isEat()) randFood();
    setSnake();
    setFood();
  }

  List<int> goD(List<int> e) => [add(e[0]), e[1]];
  List<int> goU(List<int> e) => [min(e[0]), e[1]];
  List<int> goL(List<int> e) => [e[0], min(e[1])];
  List<int> goR(List<int> e) => [e[0], add(e[1])];

  int add(int val) => val == (dt.width - 1) ? (0) : (val + 1);
  int min(int val) => val == (0) ? (dt.width - 1) : (val - 1);
}
