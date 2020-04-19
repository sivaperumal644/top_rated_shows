import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:top_rated_shows/constants/strings.dart';

class LoginRepository {
  static Future<String> authenticate({
    @required username,
    @required password,
  }) async {
    final Map<String, dynamic> authData = {
      "username": username,
      "password": password
    };

    Dio dio = new Dio();
    final String url = BASE_URL + '/login';
    String token;
    print('==before response==');
    final response = await dio.post(
      '$url',
      options: Options(
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
      ),
      data: json.encode(authData),
    );
    print("======after response=====");
    print(response.statusCode);
    print(response.data);

    if (response.statusCode <= 200 || response.statusCode < 400) {
      token = response.data;
      print(token);
    } else {
      print("error");
    }
    await Future.delayed(Duration(seconds: 1));
    return token;
  }
}
