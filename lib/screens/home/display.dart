import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 220, 221, 222),
                            blurRadius: 25.0,
                          )
                        ]),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_back)),
                  ),
                  SizedBox(width: 250),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 220, 221, 222),
                            blurRadius: 25.0,
                          )
                        ]),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share_outlined,
                          color: Colors.grey,
                        )),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/airplane.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 20),
              const Text(
                "Contact Lost with Sriwijaya Air",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 11, 70, 129),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 7),
              const Text(
                "Boeing 737-500 After Take Off",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 11, 70, 129),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/photo4.png"),
                      radius: 15,
                    ),
                    SizedBox(width: 10),
                    Text("John Smmith"),
                    SizedBox(width: 90),
                    Text("10 Jan 2020"),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using .",
                  style: TextStyle(
                    color: Color.fromARGB(255, 121, 120, 120),
                    height: 1.5,
                  ),
                ),
              ),
              SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 121, 120, 120),
                    height: 1.5,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
