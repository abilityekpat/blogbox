import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widgets/custom_buttom.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back),
              SizedBox(height: 20),
              const Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 24,
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
                  hintText: "Full name",
                  contentPadding: EdgeInsets.all(6),
                  prefixIcon: const Icon(
                    Icons.person_2_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Comfirm password",
                  contentPadding: EdgeInsets.all(6),
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 40),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: CustomButton(
                    buttonText: "SIGN UP",
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
                    "Already have an account?",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Sign In ",
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
