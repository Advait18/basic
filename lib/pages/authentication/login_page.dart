import 'package:basic_prototype/pages/authentication/components/my_button.dart';
import 'package:basic_prototype/pages/authentication/components/my_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/my_image.dart';

//complete this function...
buttonPressed() {}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      // ignore: use_build_context_synchronously
      context.go('/home');
      // ignore: unused_catch_clause
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(
          msg: e.message.toString(),
          toastLength: Toast.LENGTH_SHORT,
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

                //Welcome Back you've been missed!
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    'Welcome back you\'ve been missed!',
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
                  controller: _passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 12),

                // Forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //Log In button

                MyButton(
                  onTap: signIn,
                  text: "Log In",
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
                    Text('Don\'t have an account? ',
                        style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFFFFFFFF))),
                    GestureDetector(
                      onTap: () {
                        context.go('/signup');
                      },
                      child: Text('Register',
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
