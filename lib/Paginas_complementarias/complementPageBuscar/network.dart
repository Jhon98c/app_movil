import 'dart:convert';
import 'package:app_movil/Paginas_complementarias/complementPageBuscar/post.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

List<Post> parsePost(String responseBody) {
  var list = json.decode(responseBody) as List<dynamic>;
  var posts = list.map((model) => Post.fromJson(model)).toList();
  return posts;
}

Future<List<Post>> fetchPost() async {
  final response = await http.get('https://api.npoint.io/d0514bbe5607b22b974b');
  if (response.statusCode == 200) {
    return compute(parsePost, response.body);
  } else {
    throw Exception("API error");
  }
}
