import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:news/screens/authentication/sign_up.dart';
import 'package:news/screens/home/home.dart';
import 'package:news/services/authenticate.dart';

import '../../widgets/custom_buttom.dart';
import '../../widgets/loader.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final AuthService _authService = AuthService();
  bool isLoading = false;
  login() async {
    log(_emailController.text);
    log(_passwordController.text);
    setState(() {
      isLoading = true;
    });
    bool result = await _authService.signInWithEmailPassword(
        _emailController.text, _passwordController.text);
    setState(() {
      isLoading = false;
    });
    if (result == true) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Loader()
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                            ))
                      ],
                    ),
                  ),
                  const Center(
                      child: Text(
                    "BLOGBOX",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 82, 32, 220),
                    ),
                  )),
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "abc@email.com",
                            contentPadding: EdgeInsets.all(6),
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Your password",
                            contentPadding: EdgeInsets.all(6),
                            prefixIcon: const Icon(
                              Icons.lock_outline,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: const [
                            Text(
                              "Remember me",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 115),
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 50),
                        CustomButton(
                          buttonText: "SIGN IN",
                          onTap: login,
                        ),
                        const SizedBox(height: 30),
                        const Center(
                          child: Text(
                            "OR",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: Container(
                            height: 58,
                            width: 271,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 244, 242, 242),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/google.png"),
                                const SizedBox(width: 15),
                                const Text(
                                  "Login with Google",
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Container(
                            height: 58,
                            width: 271,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 244, 242, 242),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/facebook.png"),
                                const SizedBox(width: 15),
                                const Text(
                                  "Login with Facebook",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(width: 10),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()),
                                );
                              },
                              child: Text(
                                "Sign Up ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 60, 53, 203),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
