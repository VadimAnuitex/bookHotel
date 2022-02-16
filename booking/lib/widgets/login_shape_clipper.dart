import 'package:flutter/cupertino.dart';

class LoginShapeClipper extends CustomClipper<Path> {
  final double turningRadius;
  final double heightPercentage;
  LoginShapeClipper({
    this.turningRadius = 0.7,
    this.heightPercentage = 0.85,
  });

  @override
  getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height * heightPercentage);

    var firstEndpoint = Offset(size.width, size.height * turningRadius);
    var firstControlPoint =
        Offset(size.width * 0.6, size.height * heightPercentage);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
