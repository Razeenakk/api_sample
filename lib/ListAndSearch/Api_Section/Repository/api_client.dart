import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart';

import '../../../api_exception.dart';


class ApiClientNew {
  static const String basePath = 'https://www.api.viknbooks.com/api/v10/products/';

  Future<Response> invokeAPI(
      {required String path,
        required String method,
        required Object? body}) async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    //
    // final token = prefs.getString('token');
    // print(prefs.getString('token'));
    // print(prefs.getString('token'));
    print("Invoke Api worked");
    print(method);

    Map<String, String> headerParams = {};
    if (method == 'POST' || method == 'GET' || method == 'PATCH'|| method =="DELETE" ) {
      print("Methode POST OR GET");
      headerParams = {
        "authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzEwNDgzNjA5LCJpYXQiOjE2Nzg5NDc2MDksImp0aSI6IjFkNzMwNTgzZmY1NTQ4Y2ZhZTk5YzJkYmZjZDIzMGE1IiwidXNlcl9pZCI6NjJ9.UbObATDEuboMAhPrDWUQYZ7UFrm8SeFkbQP5ZQK93L2UrTu0ujW0-hoRn_NKOz-T4pqjgxNsz7FBi9PLlsSkUMKx7kzOqc4AVkht-SJGh3XQ2svGnQ9K26sMG2KW_pivdKJlbOFH8dAYcDH-F_uuyceKb3bSy8jA3HpESchh9h86OG7juSnjd0jdFLxnLIFzCRKVtFa99af3x4NvR8LHKPN0YijHAZVKiC3ygQlKnUJONxtkYYp5MOo1_g9icvSPQPF1_IR2ZoKjbqN-1JUVg6VsJUBsTmKYbnZTBA2Jjm2yftxv11fFV0B9NM2nwtJuGu22LvFNO3jbUs1J88xSY6NEtNyBwkBjF3WILwqN9kJUjrdXcsSSuKPX-ZU9stnfwsl8ZATZUOYzGH1prLpJfKSoCMkXnL9pAHgWcLczpJE2g3r5y74TBZiqOxUcnBVSwmgWeDFODqKs--kGLIRgDgqyK-PnFV1Zrql6Hgd5DqkBGkgWTwEE_yoR35IS-kPtbzu3uH2QcNW5hVoi4bdlxEdxrXvu0Y7E6UD784GU82KMOM7B-o8RB1Sxr6AvQWkkgc08wByX7D6ceMq9CbZMu2sBd1cupfHymEQDjUN8ay1B2K8QPrQzkCXmCFmYr-wIc7wfI7EyqmyjyDfZvweXSZIuR75rO2ooK70Vfcw3crw",
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      };
    }else if(method == "DELETE_" ){
      print("method Delete_");
      headerParams = {
        "authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzEwNDgzNjA5LCJpYXQiOjE2Nzg5NDc2MDksImp0aSI6IjFkNzMwNTgzZmY1NTQ4Y2ZhZTk5YzJkYmZjZDIzMGE1IiwidXNlcl9pZCI6NjJ9.UbObATDEuboMAhPrDWUQYZ7UFrm8SeFkbQP5ZQK93L2UrTu0ujW0-hoRn_NKOz-T4pqjgxNsz7FBi9PLlsSkUMKx7kzOqc4AVkht-SJGh3XQ2svGnQ9K26sMG2KW_pivdKJlbOFH8dAYcDH-F_uuyceKb3bSy8jA3HpESchh9h86OG7juSnjd0jdFLxnLIFzCRKVtFa99af3x4NvR8LHKPN0YijHAZVKiC3ygQlKnUJONxtkYYp5MOo1_g9icvSPQPF1_IR2ZoKjbqN-1JUVg6VsJUBsTmKYbnZTBA2Jjm2yftxv11fFV0B9NM2nwtJuGu22LvFNO3jbUs1J88xSY6NEtNyBwkBjF3WILwqN9kJUjrdXcsSSuKPX-ZU9stnfwsl8ZATZUOYzGH1prLpJfKSoCMkXnL9pAHgWcLczpJE2g3r5y74TBZiqOxUcnBVSwmgWeDFODqKs--kGLIRgDgqyK-PnFV1Zrql6Hgd5DqkBGkgWTwEE_yoR35IS-kPtbzu3uH2QcNW5hVoi4bdlxEdxrXvu0Y7E6UD784GU82KMOM7B-o8RB1Sxr6AvQWkkgc08wByX7D6ceMq9CbZMu2sBd1cupfHymEQDjUN8ay1B2K8QPrQzkCXmCFmYr-wIc7wfI7EyqmyjyDfZvweXSZIuR75rO2ooK70Vfcw3crw",
      };

    }
    Response response;

    String url = basePath + path;
    // String searchurl =  basePath + 'search/movie'+'?api_key=$token'+ path;
    print('========================================' + url);

    // print(searchurl);
    final nullableHeaderParams = (headerParams.isEmpty) ? null : headerParams;

    switch (method) {
      case "POST":
        response = await post(Uri.parse(url),
            headers: headerParams, body: jsonEncode(body));
        break;
      case "LOGIN":
        response =
        await post(Uri.parse(url), headers: headerParams, body: body);
        break;
      case "PUT":
        response = await put(Uri.parse(url), headers: headerParams, body: jsonEncode(body));
        break;
      case "PATCH":
        response = await patch(Uri.parse(url),
            headers: headerParams, body: jsonEncode(body));
        break;
      case "DELETE":
        response = await delete(Uri.parse(url), headers: headerParams,body: jsonEncode(body));
        break;
      case "DELETE_":
        response = await delete(Uri.parse(url), headers: headerParams,body: jsonEncode(body));
        break;
      case "POST_":
        response = await post(
          Uri.parse(url),
          headers: headerParams,
          body: body,
        );
        break;
      case "GET_":
        response = await post(
          Uri.parse(url),
          headers: {},
          body: body,
        );
        break;

      default:
        response = await get(Uri.parse(url), headers: headerParams);
    }

    print('status of $path =>' + (response.statusCode).toString());
    print(response.body);
    if (response.statusCode >= 400) {
      // print("if)()");
      log(path +
          ' : ' +
          response.statusCode.toString() +
          ' : ' +
          response.body);

      throw ApiException(
          message: _decodeBodyBytes(response), statusCode: response.statusCode);
    }
    ;
    return response;
  }

  String _decodeBodyBytes(Response response) {
    var contentType = response.headers['content-type'];
    if (contentType != null && contentType.contains("application/json")) {
      return jsonDecode(response.body)['message'];
    } else {
      return response.body;
    }
  }
}