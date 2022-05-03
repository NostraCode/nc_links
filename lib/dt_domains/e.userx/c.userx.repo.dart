part of '_index.dart';

final x1UserRepo = RM.inject<XuserRepo>(() => XuserRepo());

class XuserRepo {
  Future<List<Userx>> readUsers(int page) async {
    final result = await x1HttpDio.request(
      path: '/public/v2/users?page=$page',
      method: ReqMethod.get,
      token: x1XuserData.st.token,
    );
    List<Userx> userList = [];
    for (var item in result.data) {
      userList.add(Userx.fromMap(item));
    }
    return userList;
  }

  Future<Userx> readUser() async {
    final id = x1XuserData.st.rmSelectedId.st;
    final result = await x1HttpDio.request(
      path: '/public/v2/users/$id',
      method: ReqMethod.get,
      token: x1XuserData.st.token,
    );
    return Userx.fromMap(result.data);
  }

  Future<void> createUser(Userx user) async {
    await x1HttpDio.request(
      path: '/public/v2/users',
      method: ReqMethod.post,
      token: x1XuserData.st.token,
      params: user.toMap(),
    );
  }

  Future<void> updateUser(Userx user) async {
    await x1HttpDio.request(
      path: '/public/v2/users/${user.id}',
      method: ReqMethod.put,
      token: x1XuserData.st.token,
      params: user.toMap(),
    );
  }

  Future<void> deleteUser(int id) async {
    await x1HttpDio.request(
      path: '/public/v2/users/$id',
      method: ReqMethod.delete,
      token: x1XuserData.st.token,
    );
  }
}
