import 'dart:convert';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'package:json_annotation/json_annotation.dart';

part 'BigJSONRepository.g.dart';

@JsonSerializable()
class Photo {
  final int albumId, id;
  final String title, url, thumbnailUrl;

  Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}

class BigJSONRepository {
  final String _url = 'https://jsonplaceholder.typicode.com/photos';
  List<Photo> parsePhotos(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
  }

  Future<List<Photo>> fetchPhotos(http.Client client) async {
    final response = await client
        .get(Uri.parse(_url));
    return compute(parsePhotos, response.body);
  }
}
