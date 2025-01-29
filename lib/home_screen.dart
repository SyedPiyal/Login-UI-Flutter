import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _rememberMe = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: const Color(0xff3B5998),
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 5,
                right: 5,
                child: ClipPath(
                  clipper: ShapeChange2(),
                  child: Container(
                    height: 455,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/login.png",
                        ),
                        const Text(
                          "Welcome",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "By signing in you are agreeing our",
                          style: TextStyle(
                            color: Color(0xff6B5E5E),
                            fontSize: 12,
                          ),
                        ),
                        const Text(
                          "Term and privacy policy",
                          style: TextStyle(
                            color: Color(0xff0386D0),
                            fontSize: 12,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 5),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              // To enable background color
                              fillColor: const Color(0xFFF9F9F9),
                              // Set the background color
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                // Set the border radius
                                borderSide: const BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  // Set the border color
                                  width: 0.5, // Set the border width
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                // Set the border radius
                                borderSide: const BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  // Set the border color
                                  width: 0.5,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                // Set the border radius
                                borderSide: const BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  // Set the border color
                                  width: 0.5,
                                ),
                              ),
                              suffixIcon: const Icon(
                                Icons.email_outlined, // Email icon
                                color: Color(0xFFC4C4C4), // Icon color
                              ),
                              hintText: "Email Address",
                              hintStyle: const TextStyle(
                                color: Color(0xFFC4C4C4), // Hint text color
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              // To enable background color
                              fillColor: const Color(0xFFF9F9F9),
                              // Set the background color
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                // Set the border radius
                                borderSide: const BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  // Set the border color
                                  width: 0.5, // Set the border width
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                // Set the border radius
                                borderSide: const BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  // Set the border color
                                  width: 0.5,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                // Set the border radius
                                borderSide: const BorderSide(
                                  color: Color(0xFFC4C4C4),
                                  // Set the border color
                                  width: 0.5,
                                ),
                              ),
                              suffixIcon: const Icon(
                                CupertinoIcons.lock, // Email icon
                                color: Color(0xFFC4C4C4), // Icon color
                              ),
                              hintText: "Password",
                              hintStyle: const TextStyle(
                                color: Color(0xFFC4C4C4), // Hint text color
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 45.0,
                            left: 5,
                          ),
                          child: Row(
                            children: [
                              Theme(
                                data: ThemeData(
                                    checkboxTheme: const CheckboxThemeData()),
                                child: Checkbox(
                                  value: _rememberMe,
                                  onChanged: (bool? newValue) {
                                    setState(() {
                                      _rememberMe = newValue ?? false;
                                    });
                                  },
                                  activeColor: const Color(0xFFF9F9F9),
                                  checkColor: const Color(0xFFC4C4C4),
                                  side: WidgetStateBorderSide.resolveWith(
                                      (states) {
                                    if (states.contains(WidgetState.pressed)) {
                                      return const BorderSide(
                                        color: Color(0xFFC4C4C4),
                                      );
                                    } else {
                                      return const BorderSide(
                                        color: Color(0xFFC4C4C4),
                                      );
                                    }
                                  }),
                                ),
                              ),
                              const Text(
                                'Remember Password',
                                style: TextStyle(
                                  color: Color(0xFFC4C4C4),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 5,
                right: 5,
                child: ClipPath(
                  clipper: ShapeChange(),
                  child: Container(
                    height: 380,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            right: 40.0,
                            bottom: 10,
                            top: 30,
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forget Password",
                              style: TextStyle(
                                color: Color(0xff0386D0),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // Left Button - Round with background color #0386D0
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF0386D0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          25), // Round shape with 25 radius
                                    ),
                                  ),
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),

                              // Right Button - Round with background color #FFFFFF and border color #036BB9
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    disabledForegroundColor:
                                        Colors.white.withOpacity(0.38),
                                    disabledBackgroundColor:
                                        Colors.white.withOpacity(0.12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      side: const BorderSide(
                                        color: Color(0xFF036BB9),
                                        width: 1,
                                      ), // Border with color #036BB9
                                    ),
                                  ),
                                  child: const Text(
                                    'Register',
                                    style: TextStyle(
                                      color: Color(
                                          0xFF036BB9), // Text color matching the border
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          "Login wit touch ID",
                          style: TextStyle(
                            color: Color(0xff6B5E5E),
                            fontSize: 12,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Image.asset(
                            "assets/ic_fprint.png",
                            height: 60,
                            width: 55,
                          ),
                        ),
                        const Text(
                          "or connect with",
                          style: TextStyle(
                            color: Color(0xff6B5E5E),
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/ic_facebook.png",
                              height: 50,
                              width: 45,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Image.asset(
                                "assets/ic_instagram.png",
                                height: 50,
                                width: 45,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Image.asset(
                                "assets/ic_pinterest.png",
                                height: 50,
                                width: 45,
                              ),
                            ),
                            Image.asset(
                              "assets/ic_linkedin.png",
                              height: 50,
                              width: 45,
                            ),
                          ],
                        )
                      ],
                    ),
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
    path.lineTo(20, size.height * 0.28); //e
    path.quadraticBezierTo(0, size.height * 0.30, 0, size.height * 0.35);

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
