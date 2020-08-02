import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: MyCustomClipper(),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.orange,
                  Colors.deepOrangeAccent,
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height * 0.33);
    path.lineTo(0, size.height - 50);

    var controllerPoint = Offset(0, size.height);
    var endpoint = Offset(50, size.height);
    path.quadraticBezierTo(
        controllerPoint.dx, controllerPoint.dy, endpoint.dx, endpoint.dy);

    path.lineTo(size.width - 50, size.height);
    var controllerPoint2 = Offset(size.width, size.height);
    var endpoint2 = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(
        controllerPoint2.dx, controllerPoint2.dy, endpoint2.dx, endpoint2.dy);

    path.lineTo(size.width, 50);
    var controllerPoint3 = Offset(size.width, 0);
    var endpoint3 = Offset(size.width - 50, 15);
    path.quadraticBezierTo(
        controllerPoint3.dx, controllerPoint3.dy, endpoint3.dx, endpoint3.dy);

    path.lineTo(50, (size.height * 0.33) - 20);
    var controllerPoint4 = Offset(0, size.height * 0.33);
    var endpoint4 = Offset(0, (size.height * 0.33) + 50);
    path.quadraticBezierTo(
        controllerPoint4.dx, controllerPoint4.dy, endpoint4.dx, endpoint4.dy);
    //path.close() to close path last line
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
