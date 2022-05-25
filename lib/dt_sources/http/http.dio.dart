part of '_index.dart';

final x1HttpDio = HttpDio()..init();

enum ReqMethod { post, get, put, delete, patch }

class HttpDio {
  late Dio dio;

  Future<HttpDio> init() async {
    dio = Dio(BaseOptions(
      baseUrl: config.st.apiHost,
    ));

    initInterceptors();
    logxx.wtf(HttpDio, 'success init for dio and interceptors.');
    return this;
  }

  void initInterceptors() {
    dio.interceptors.add(x1HttpAlice.getDioInterceptor());
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (requestOptions, handler) {
          final req = requestOptions;
          logxx.wtf(HttpDio, '[req] method => ${req.method}');
          logxx.wtf(HttpDio, '[req] path => ${req.path}');
          logxx.wtf(HttpDio, '[req] parameters => ${req.queryParameters}');
          logxx.wtf(HttpDio, '[req] headers => ${req.headers}');
          return handler.next(requestOptions);
        },
        onResponse: (response, handler) {
          logxx.wtf(HttpDio, '[res] code => ${response.statusCode}');
          logxx.wtf(HttpDio, '[res] data => ${response.data}');
          return handler.next(response);
        },
        onError: (err, handler) {
          logxx.e(HttpDio, "Error[${err.response?.statusCode}]");
          return handler.next(err);
        },
      ),
    );
  }

  Options setOptionsHeader(String token) {
    if (token.isEmpty) {
      return Options(headers: {
        'Accept': 'application/json',
      });
    } else {
      return Options(headers: {
        'Accept': 'application/json',
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      });
    }
  }

  bool isResponseOK(dynamic res) {
    if (res != null) {
      if (res is Response) {
        return true;
      }
    }
    return false;
  }

  Future<Response> request({
    required String path,
    required ReqMethod method,
    Map<String, dynamic>? params,
    String token = '',
  }) async {
    Response response;

    try {
      if (method == ReqMethod.post) {
        response = await dio.post(
          path,
          queryParameters: params,
          options: setOptionsHeader(token),
        );
      } else if (method == ReqMethod.put) {
        response = await dio.put(
          path,
          queryParameters: params,
          options: setOptionsHeader(token),
        );
      } else if (method == ReqMethod.delete) {
        response = await dio.delete(
          path,
          options: setOptionsHeader(token),
        );
      } else if (method == ReqMethod.patch) {
        response = await dio.patch(
          path,
          options: setOptionsHeader(token),
        );
      } else {
        response = await dio.get(
          path,
          queryParameters: params,
          options: setOptionsHeader(token),
        );
      }

      if (response.statusCode == 200) {
        return response;
      } else if (response.statusCode == 201) {
        return response;
      } else if (response.statusCode == 204) {
        return response;
      } else if (response.statusCode == 401) {
        throw Exception("Unauthorized");
      } else if (response.statusCode == 500) {
        throw Exception("Server Error");
      } else {
        throw Exception("Something does wen't wrong");
      }
    } on SocketException catch (e) {
      logx.e(e.message);
      throw Exception("Not Internet Connection");
    } on FormatException catch (e) {
      logx.e(e.message);
      throw Exception("Bad response format");
    } on DioError catch (e) {
      logx.e(e.message);
      throw Exception(e);
    } catch (e) {
      logx.e(e.toString());
      throw Exception("Something wen't wrong");
    }
  }
}
