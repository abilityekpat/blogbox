import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widgets/custom_buttom.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                "BLOGBOX",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              )),
              SizedBox(height: 60),
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
              SizedBox(height: 40),
              TextFormField(
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
              SizedBox(height: 30),
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
              SizedBox(height: 50),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: CustomButton(
                    buttonText: "SIGN IN",
                  ),
                ),
              ),
              SizedBox(height: 40),
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
                      SizedBox(width: 15),
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
                      SizedBox(width: 15),
                      const Text(
                        "Login with Facebook",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 60, 53, 203),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
