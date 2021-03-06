import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

@immutable
class Album {
  final int userId;
  final int id;
  final String title;

  Album({@required this.userId, @required this.id, @required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

class NetworkRepository {
  Future<Album> fetchAlbum() async {
    final response =
    await http.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1'));

    if (response.statusCode == 200) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
