import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class DocumentImagePage extends StatelessWidget {
  const DocumentImagePage({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SizedBox(
        child: PhotoView(
          imageProvider: NetworkImage(
            image,
          ),
        ),
      ),
    );
  }
}
