part of '_index.dart';

final x1UserxRepo = RM.inject<UserxRepo>(() => UserxRepo());

class UserxRepo {
  Future<List<Userx>?> readUsers(int page) async {
    try {
      List<Userx> userList = [];
      final result = await x1HttpDio.get(ReqX(
        path: '/public/v2/users?page=$page',
      ));
      for (var item in result.data) {
        userList.add(Userx.fromMap(item));
      }
      return userList;
    } catch (e) {
      logx.e('this is from read users');
      rethrow;
    }
  }

  Future<Userx> readUser() async {
    try {
      final id = x1UserxData.st.rxSelectedId.st;
      final result = await x1HttpDio.get(ReqX(
        path: '/public/v2/users/$id',
      ));
      return Userx.fromMap(result.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> createUser(Userx user) async {
    try {
      await x1HttpDio.post(ReqX(
        path: '/public/v2/users',
        params: user.toMap(),
      ));
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> updateUser(Userx user) async {
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

  Future<dynamic> upload(FormData formData) async {
    try {
      await x1HttpDio.upload(ReqX(
        path: '/public/v2/images',
        data: formData,
      ));
    } catch (e) {
      rethrow;
    }
  }
}
