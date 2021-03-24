import 'package:flutter/material.dart';
import '../widgets/pictureWidget.dart';

class PhotoHobies extends StatelessWidget {
  const PhotoHobies({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Expanded(child: PictureWidget()),
      ),
    );
  }
}
