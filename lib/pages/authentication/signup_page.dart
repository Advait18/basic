import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/my_button.dart';
import 'components/my_image.dart';
import 'components/my_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _cpasswordController = TextEditingController();

  Future signUp() async {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );
        Fluttertoast.showToast(
            msg: "Your account has been created!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.grey,
            textColor: Colors.white,
            fontSize: 16.0);
        // ignore: use_build_context_synchronously
        context.go('/login');
      } catch (e) {
        Fluttertoast.showToast(
            msg: e.toString(),
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.grey,
            textColor: Colors.white,
            fontSize: 16.0);        
      } 
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0C0C),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),

                //BASICS
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Text(
                    'BASICS',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFFFFFFF)),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                // Welcome Back you've been missed!
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    'Welcome User!',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFFFFFFFF)),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //Email Textfield
                MyTextField(
                  controller: _emailController,
                  hintText: 'Email',
                ),

                const SizedBox(
                  height: 12,
                ),

                //Password Textfield
                MyTextField(
                  controller: _cpasswordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(
                  height: 12,
                ),

                //Password Textfield
                MyTextField(
                  controller: _passwordController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),

                const SizedBox(
                  height: 25,
                ),

                //Log In button

                MyButton(
                  onTap: signUp,
                  text: "Sign Up",
                ),

                const SizedBox(
                  height: 30,
                ),

                Text('Or continue with',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFFFFFFFF))),

                const SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    //Google Sign In
                    MyImage(path: "lib/images/login page/google.png"),

                    SizedBox(
                      width: 20,
                    ),

                    //Apple Sign In
                    MyImage(path: "lib/images/login page/apple.png"),
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? ',
                        style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFFFFFFFF))),
                    GestureDetector(
                      onTap: () {
                        context.go('/login');
                      },
                      child: Text('Log In',
                          style: GoogleFonts.nunitoSans(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.blue)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
