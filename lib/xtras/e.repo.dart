part of '_index.dart';

abstract class Repo {
  static Injected<ConnRepo> get conn => _connRepo;
  static Injected<DummyRepo> get dummy => _dummyRepo;
  static Injected<ProductRepo> get product => _productRepo;
  static Injected<UserxRepo> get userx => _userxRepo;
  static Injected<ChatRepo> get chat => _chatRepo;

  static Injected<TodoRepo> get todo => _todoRepo;
}

final _connRepo = RM3.inj(ConnRepo());
final _dummyRepo = RM3.inj(DummyRepo());
final _productRepo = RM3.inj(ProductRepo());
final _userxRepo = RM3.inj(UserxRepo());
final _chatRepo = RM3.inj(ChatRepo());

final _todoRepo = RM3.inj(TodoRepo());
