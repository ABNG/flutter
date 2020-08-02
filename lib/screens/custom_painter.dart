import 'package:flutter/material.dart';

class MyCustomPaint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: CustomPaint(
        //size: Size(100,150),
        painter: MyPainter(),
        child: Center(
          child: Container(
            margin: EdgeInsets.only(
              top: 125.0,
            ),
            child: Text(
              "my custom painter is here now",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.blue.shade700;

    Path path = Path();
    path.moveTo(0, size.height * 0.2);
    var controllerPoint = Offset(size.width, size.height / 1.7);
    var endpoint = Offset(0, size.height);
    path.quadraticBezierTo(
        controllerPoint.dx, controllerPoint.dy, endpoint.dx, endpoint.dy);

    path.moveTo(size.width, size.height * 0.2);
    var controllerPoint2 = Offset(0, size.height / 1.7);
    var endpoint2 = Offset(size.width, size.height);
    path.quadraticBezierTo(
        controllerPoint2.dx, controllerPoint2.dy, endpoint2.dx, endpoint2.dy);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
