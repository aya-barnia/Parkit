import 'package:employee_parking/helper/constant.dart';
import 'package:flutter/material.dart';

class SendFeedBackView extends StatelessWidget {
  const SendFeedBackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
        body: Container(
          //color: Colors.grey[300],
          child: ClipPath(
            clipper: CustomClipPath(), 
            child: Container(
              color:darkblue,
              height: 200,
            ),
          ),
        ),
      
    );
  }
}
class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
 @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width/4, size.height
 - 40, size.width/2, size.height-20);
    path.quadraticBezierTo(3/4*size.width, size.height,
 size.width, size.height-30);
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}