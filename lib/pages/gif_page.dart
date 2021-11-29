import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {
  const GifPage({Key? key, required this.gifData}) : super(key: key);
  final Map gifData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gifData["title"]),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Share.share(gifData["images"]["fixed_height"]["url"], subject: gifData["title"]);
            },
            icon: const Icon(Icons.share),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(gifData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
