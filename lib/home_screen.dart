import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.red,
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              ClipPath(
                clipper: ShapeChange2(),
                child: Container(
                  height: 400,
                  color: Colors.greenAccent,
                ),
              ),
              Positioned(
                top: 300,
                left: 5,
                right: 5,
                child: ClipPath(
                  clipper: ShapeChange(),
                  child: Container(
                    height: 400,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShapeChange extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // path.moveTo(50, 0); //a
    // path.quadraticBezierTo(0, 0, 0, 50);
    // path.lineTo(0, size.height); // b
    // path.lineTo(size.width - 50, size.height - 100);
    // path.lineTo(size.width-40, size.height-105); // c
    // path.quadraticBezierTo(size.width, size.height-120, size.width, size.height-140);
    // path.lineTo(size.width, 50); //d
    // path.quadraticBezierTo(size.width, 0, 250, 0);

    path.moveTo(0, size.height * 0.50); //a
    path.lineTo(0, size.height - 50); // b
    path.quadraticBezierTo(0, size.height, 50, size.height);
    path.lineTo(size.width - 50, size.height); //c
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0); //d
    // path.quadraticBezierTo(size.width, 0, size.width -50*3, 100);
    path.lineTo(20, size.height * 0.26); //e
    path.quadraticBezierTo(0, size.height * 0.28, 0, size.height * 0.35);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ShapeChange2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(50, 0); //a
    path.quadraticBezierTo(0, 0, 0, 50);
    path.lineTo(0, size.height); // b
    path.lineTo(size.width - 50, size.height - 100);
    path.lineTo(size.width - 35, size.height - 105); // c
    path.quadraticBezierTo(
        size.width, size.height - 115, size.width, size.height - 135);
    path.lineTo(size.width, 50); //d
    path.quadraticBezierTo(size.width, 0, size.width - 50, 0);

    // path.moveTo(0, size.height * 0.33); //a
    // path.lineTo(0, size.height -50); // b
    // path.quadraticBezierTo(0, size.height, 50, size.height);
    // path.lineTo(size.width - 50, size.height);//c
    // path.quadraticBezierTo(size.width, size.height, size.width, size.height-50);
    // path.lineTo(size.width,0);//d
    // // path.quadraticBezierTo(size.width, 0, size.width -50*3, 100);
    // path.lineTo(50, size.height * 0.33+10); //e
    // path.quadraticBezierTo(0, size.height * 0.33 + 50, 0, size.height *0.33 + 50*2);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
