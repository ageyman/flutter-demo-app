import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'BigJSONRepository.dart';

class BigJSONView extends StatelessWidget {
  final repository = BigJSONRepository();
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Photo>>(
        future: repository.fetchPhotos(http.Client()),
        builder: (context, snapshot) => snapshot.hasData
            ? PhotoList(
                photos: snapshot.data,
              )
            : Center(child: CircularProgressIndicator()),
      ));
}

class PhotoList extends StatelessWidget {
  final List<Photo> photos;
  final _gridDelegate =
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5);

  PhotoList({Key key, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) => GridView.builder(
        gridDelegate: _gridDelegate,
        itemBuilder: (context, index) => _itemBuilder(context, index),
        itemCount: photos.length,
      );

  Widget _itemBuilder(BuildContext context, int index) =>
      Image.network(photos[index].thumbnailUrl);
}
