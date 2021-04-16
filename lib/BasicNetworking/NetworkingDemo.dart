import 'dart:async';
import 'package:flutter/material.dart';

import 'NetworkRepository.dart';

class NetworkingDemo extends StatefulWidget {
  NetworkingDemo({Key key}) : super(key: key);

  @override
  _NetworkingDemoState createState() => _NetworkingDemoState();
}

class _NetworkingDemoState extends State<NetworkingDemo> {
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = NetworkRepository().fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Data Example'),
      ),
      body: FutureBuilder<Album>(
        future: futureAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(snapshot.data.id.toString()),
                    Text(snapshot.data.userId.toString()),
                    Text(snapshot.data.title),
                  ]),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
