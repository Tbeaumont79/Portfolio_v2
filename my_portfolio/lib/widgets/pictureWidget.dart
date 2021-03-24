import 'package:flutter/material.dart';
import '../utils/pictureCard.dart';
import '../utils/screenhelper.dart';

class PictureWidget extends StatefulWidget {
  PictureWidget({Key key}) : super(key: key);

  @override
  _PictureWidgetState createState() => _PictureWidgetState();
}

class _PictureWidgetState extends State<PictureWidget> {
  List<String> imgPath = [
    'https://scontent-cdt1-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/121623571_1569634923216159_4885040441212697808_n.jpg?tp=1&_nc_ht=scontent-cdt1-1.cdninstagram.com&_nc_cat=103&_nc_ohc=Wt_0l-FiRkIAX89qIY0&ccb=7-4&oh=a38c8dccc58fd116816f433aec968e41&oe=607B0BFF',
    'https://scontent-cdg2-1.cdninstagram.com/v/t51.2885-15/e35/161345081_120859176662167_5527184952367924309_n.jpg?tp=1&_nc_ht=scontent-cdg2-1.cdninstagram.com&_nc_cat=107&_nc_ohc=WMqeRnGOfwcAX_OOKbU&ccb=7-4&oh=810be57eddc3aceb6896b089da540f4d&oe=607C7A5F',
    'https://scontent-cdt1-1.cdninstagram.com/v/t51.2885-15/e35/139022219_760306238217273_7136356189687499285_n.jpg?se=8&tp=1&_nc_ht=scontent-cdt1-1.cdninstagram.com&_nc_cat=109&_nc_ohc=QyBYQlOn_CUAX8TBRek&ccb=7-4&oh=54de83080d842a0d7adec6bab990ea78&oe=607E2DFD',
    'https://scontent-cdg2-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/134481205_4240109532671300_2022821700141622332_n.jpg?tp=1&_nc_ht=scontent-cdg2-1.cdninstagram.com&_nc_cat=108&_nc_ohc=JA-hWrScPLgAX9RK3Cf&ccb=7-4&oh=b7c6ca9bff245d3f52d1dbf14667e718&oe=607C4644',
    'https://scontent-cdg2-1.cdninstagram.com/v/t51.2885-15/e35/118996015_630183364541702_7265922480942181973_n.jpg?se=8&tp=1&_nc_ht=scontent-cdg2-1.cdninstagram.com&_nc_cat=102&_nc_ohc=uVaCh62J2V8AX-bEZDC&ccb=7-4&oh=7671c908132a12983fa47b4e9f4887b3&oe=607B0853',
    'https://scontent-cdg2-1.cdninstagram.com/v/t51.2885-15/e35/118599792_344171763388939_2951950425385525108_n.jpg?se=8&tp=1&_nc_ht=scontent-cdg2-1.cdninstagram.com&_nc_cat=107&_nc_ohc=VuOeuec0nDsAX-54kV1&ccb=7-4&oh=b7932bd5feb98b78645ebc698635851f&oe=607D1358'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: imgPath.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: ScreenHelper.isTablet(context) ? 2 : 1.8,
          crossAxisCount: 3,
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 1.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Container(
              constraints: BoxConstraints(maxHeight: 350, maxWidth: 350),
              child: PictureCard(imglink: imgPath[index]),
            ),
          );
        },
      ),
    );
  }
}
