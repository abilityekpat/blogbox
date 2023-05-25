import 'package:flutter/material.dart';

import '../tab_bar/all.dart';
import '../tab_bar/business.dart';
import '../tab_bar/internation.dart';
import '../tab_bar/magazine.dart';
import '../tab_bar/media.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 236, 244),
      body: DefaultTabController(
        length: 5,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  const Text(
                    "Blogbox",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 11, 70, 129),
                    ),
                  ),
                  const SizedBox(
                    width: 190,
                  ),
                  const Icon(
                    Icons.search,
                    size: 30,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Breaking News",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 11, 70, 129),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 360,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
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
                      ],
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            "Contact Lost with Sriwijaya Air",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 11, 70, 129),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 7),
                        const Center(
                          child: Text(
                            "Boeing 737-500 After Take Off",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 11, 70, 129),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/photo4.png"),
                                radius: 15,
                              ),
                              SizedBox(width: 10),
                              Text("John Smmith"),
                              SizedBox(width: 90),
                              Text("10 Jan 2020"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Column(children: [
                Column(
                  children: [
                    const TabBar(
                      indicatorColor: Color.fromARGB(255, 11, 70, 129),
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 3,
                      isScrollable: true,
                      // indicator: BoxDecoration(
                      //     shape: BoxShape.circle, color: Colors.amber),

                      labelColor: Colors.black,
                      unselectedLabelColor: Color.fromARGB(255, 135, 134, 134),

                      labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 14,
                      ),
                      tabs: [
                        Tab(
                          text: "All",
                        ),
                        Tab(
                          text: "Internation",
                        ),
                        Tab(
                          text: "Media",
                        ),
                        Tab(
                          text: "Magazine",
                        ),
                        Tab(
                          text: "Business",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 500,
                          child: TabBarView(
                            children: [
                              All(),
                              All(),
                              All(),
                              All(),
                              All(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
