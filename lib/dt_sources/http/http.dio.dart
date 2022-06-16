part of '_index.dart';

final x1HttpDio = HttpDio()..init();

enum ReqMethod { post, get, put, delete, patch }

class HttpDio {
  late Dio dio;

  void init() {
    dio = Dio(BaseOptions(baseUrl: config.st.apiHost));
    dio.interceptors.add(DioLogInterceptor());
    logxx.wtf(HttpDio, 'success init for dio and add interceptors.');
  }

  Options setOptionsHeader(String token) {
    if (token.isEmpty) {
      return Options(
        headers: {
          'Accept': 'application/json',
        },
      );
    } else {
      return Options(headers: {
        'Accept': 'application/json',
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      });
    }
  }

  Future<Response> request({
    required String path,
    required ReqMethod method,
    Map<String, dynamic>? params,
    String token = '',
    dynamic data,
  }) async {
    Options optionsHeader = setOptionsHeader(token);
    Response response;

    try {
      if (method == ReqMethod.post) {
        response = await dio.post(
          path,
          queryParameters: params,
          options: optionsHeader,
          data: data,
        );
      } else if (method == ReqMethod.put) {
        response = await dio.put(
          path,
          queryParameters: params,
          options: optionsHeader,
          data: data,
        );
      } else if (method == ReqMethod.delete) {
        response = await dio.delete(
          path,
          options: optionsHeader,
          data: data,
        );
      } else if (method == ReqMethod.patch) {
        response = await dio.patch(
          path,
          options: optionsHeader,
          data: data,
        );
      } else {
        response = await dio.get(
          path,
          queryParameters: params,
          options: optionsHeader,
        );
      }

      return response;
    } on SocketException catch (e) {
      logx.e(e.message);
      throw Exception("Not Internet Connection");
    } on FormatException catch (e) {
      logx.e(e.message);
      throw Exception("Bad response format");
    } on DioError catch (e) {
      logx.e(e.message);
      rethrow;
    } catch (e) {
      logx.e(e.toString());
      throw Exception("Something wen't wrong");
    }
  }
}
