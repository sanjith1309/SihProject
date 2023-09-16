import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sihapp/data/textbox.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _reenterpassword = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _email = TextEditingController();

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    _reenterpassword.dispose();
    _phone.dispose();
    _email.dispose();
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
                            width: 200,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.24),
                    child: Container(
                      width: screenWidth * 0.85,
                      height: screenHeight * 0.65, // Adjust the width as needed
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
                            textbox("Username", _username),
                            textbox("Password", _password),
                            textbox("Re-Enter password", _reenterpassword),
                            textbox("Phone No.", _phone),
                            textbox("Email", _email),
                            
                            
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
}