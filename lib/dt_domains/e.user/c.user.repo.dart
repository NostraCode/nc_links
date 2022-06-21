part of '_index.dart';

final x1UserRepo = RM.inject<UserRepo>(() => UserRepo());

class UserRepo {
  Future<List<User>?> readUsers(int page) async {
    try {
      List<User> userList = [];
      final result = await x1HttpDio.get(ReqX(
        path: '/public/v2/users?page=$page',
      ));
      for (var item in result.data) {
        userList.add(User.fromMap(item));
      }
      return userList;
    } catch (e) {
      logx.e('this is from read users');
      rethrow;
    }
  }

  Future<User> readUser() async {
    try {
      final id = x1UserData.st.rxSelectedId.st;
      final result = await x1HttpDio.get(ReqX(
        path: '/public/v2/users/$id',
      ));
      return User.fromMap(result.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> createUser(User user) async {
    try {
      await x1HttpDio.post(ReqX(
        path: '/public/v2/users',
        params: user.toMap(),
      ));
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> updateUser(User user) async {
    try {
      await x1HttpDio.put(ReqX(
        path: '/public/v2/users/${user.id}',
        params: user.toMap(),
      ));
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> deleteUser(int id) async {
    try {
      await x1HttpDio.delete(ReqX(
        path: '/public/v2/users/$id',
      ));
    } catch (e) {
      rethrow;
    }
  }
}
