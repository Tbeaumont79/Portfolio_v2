import 'package:flutter/material.dart';

class PictureCard extends StatelessWidget {
  final String imglink;
  const PictureCard({Key key, this.imglink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(imglink, fit: BoxFit.contain),
    );
  }
}
