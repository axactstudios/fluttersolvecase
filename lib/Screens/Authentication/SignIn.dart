import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solvecaseflutter/Screens/Authentication/ForgotPassword.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailC = new TextEditingController(text: '');
  TextEditingController pwC = new TextEditingController(text: '');

  bool isObscured = true;

  @override
  void initState() {
    isObscured = true;
  }

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: pWidth,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset('assets/images/Shapes.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: pHeight * 0.05,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: pHeight * 0.035,
                    ),
                    Text(
                      'Welcome\nBack!',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Circular',
                          fontSize: pHeight * 0.035),
                    ),
                    SizedBox(
                      height: pHeight * 0.22,
                    ),
                    Text(
                      'Sign In',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Circular',
                          fontSize: pHeight * 0.035),
                    ),
                    SizedBox(
                      height: pHeight * 0.05,
                    ),
                    Container(
                      width: pWidth * 0.9,
                      decoration: BoxDecoration(
                        color: Color(0xFFE9E9E9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextFormField(
                          controller: emailC,
                          validator: (value) {
                            if (value.length == 0) {
                              return 'Invalid Name';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintStyle: TextStyle(
                                fontFamily: 'Circular',
                                fontSize: pHeight * 0.02),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: pHeight * 0.02,
                    ),
                    Container(
                      width: pWidth * 0.9,
                      decoration: BoxDecoration(
                        color: Color(0xFFE9E9E9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextFormField(
                          controller: pwC,
                          obscureText: isObscured,
                          validator: (value) {
                            if (value.length == 0) {
                              return 'Invalid Name';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            suffix: isObscured
                                ? InkWell(
                                    onTap: () {
                                      setState(() {
                                        isObscured = false;
                                      });
                                    },
                                    child: Icon(
                                      Icons.visibility,
                                      color: Color(0xFF4E4E4E),
                                    ),
                                  )
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        isObscured = true;
                                      });
                                    },
                                    child: Icon(
                                      Icons.visibility_off,
                                      color: Color(0xFF4E4E4E),
                                    ),
                                  ),
                            hintText: 'Password',
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintStyle: TextStyle(
                                fontFamily: 'Circular',
                                fontSize: pHeight * 0.02),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: pHeight * 0.01,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => ForgotPassword(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text(
                          'Forgot Password?',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Circular',
                              fontSize: pHeight * 0.018),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: pHeight * 0.04,
                    ),
                    InkWell(
                      onTap: () {
//                      Navigator.push(
//                        context,
//                        CupertinoPageRoute(
//                          builder: (context) => PersonalDetails(),
//                        ),
//                      );
                      },
                      child: Container(
                        width: pWidth * 0.9,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFF04F4E),
                              Color(0xFFFFB199),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Circular',
                                  fontSize: pHeight * 0.03),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
