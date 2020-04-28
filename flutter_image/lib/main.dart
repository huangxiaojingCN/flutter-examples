import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {

  String BASE64_URL = "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";

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 24.0, color: Colors.white);
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text("Image from network",
                style: TextStyle(fontSize: 24.0, color: Colors.white),),
              DecoratedBox(decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(40),
              ),
                child: Image.network(
                  "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent loadingProgress) {
                    if (loadingProgress == null) return child;

                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes : null,),
                    );
                  },
                  fit: BoxFit.fill, width: 300, height: 300,),),

              SizedBox(height: 10),

              Text("image from asset", style: textStyle),
              Image.asset("images/cat.jpeg"),

              SizedBox(height: 10),
              Text("image from memery", style: textStyle),
              Image.memory(base64Decode(BASE64_URL)),

              SizedBox(height: 10),
              Text("ImageProvider", style: textStyle),
              Image(image: AssetImage("images/cat.jpeg"))
            ],
          ),
        ),
      ),
    );
  }
}


