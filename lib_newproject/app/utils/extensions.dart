part of '_index.dart';

extension RMState<T> on ReactiveModel<T> {
  T get st => state;
  set st(T value) => state = value;
}
