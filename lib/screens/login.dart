import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Stack(
              children: [
                // Blue Container (covers the top half of the screen)
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: screenHeight * 0.4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 4,
                          blurRadius: 5,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            "images/logo.png",
                            width: 275,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.29),
                    child: Container(
                      width: screenWidth * 0.85,
                      height: screenHeight * 0.6, // Adjust the width as needed
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Dive into WaterResQ",
                              style: GoogleFonts.jost(
                                fontSize: 26,
                              ),
                            ),
                            Center(
                              child: Text(
                                "Your City, Your voice, Your Change!",
                                style: GoogleFonts.jost(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.04,
                            ),
                            TextFormField(
                              controller: _username,
                              style: GoogleFonts.jost(color: Colors.black),
                              decoration: InputDecoration(
                                hintText: 'Username',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Set the border radius here
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintStyle:
                                    GoogleFonts.jost(color: Colors.black),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors
                                        .black, // Color of border when not focused
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Set the border radius here
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors
                                        .black, // Color of border when focused
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Set the border radius here
                                ),
                              ),
                            ),
                            TextFormField(
                              controller: _password,
                              style: GoogleFonts.jost(color: Colors.black),
                              decoration: InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Set the border radius here
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintStyle:
                                    GoogleFonts.jost(color: Colors.black),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors
                                        .black, // Color of border when not focused
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Set the border radius here
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors
                                        .black, // Color of border when focused
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Set the border radius here
                                ),
                              ),
                              obscureText: true,
                            ),
                            ElevatedButton(
                              onPressed: loginclicked,
                              style: ButtonStyle(
                                side: MaterialStateProperty.all<BorderSide>(
                                    BorderSide(color: Colors.black)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius here
                                  ),
                                ),
                              ),
                              child: Text(
                                "Login",
                                style: GoogleFonts.jost(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                "New User?",
                                style: GoogleFonts.jost(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'signup');
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                side: MaterialStateProperty.all<BorderSide>(
                                    BorderSide(color: Colors.black)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius here
                                  ),
                                ),
                              ),
                              child: Text(
                                "Create an Account",
                                style: GoogleFonts.jost(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.02,
                                  right: screenWidth * 0.02),
                              child: Container(
                                width: double
                                    .infinity, // Make the button width match the container
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Handle login button press
                                  },
                                  style: ButtonStyle(
                                    side: MaterialStateProperty.all<BorderSide>(
                                        BorderSide(color: Colors.black)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10.0), // Set the border radius here
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "Administrative Login",
                                    style: GoogleFonts.jost(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  loginclicked() {
    String username = _username.text;
    String password = _password.text;
    if (username.isEmpty || password.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Warning'),
            content: const Text('Username and password cannot be empty.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      print('Username: $username');
      print('Password: $password');

      Navigator.pushNamed(context, 'feed');
    }
  }
}
