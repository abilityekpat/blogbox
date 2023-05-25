import 'package:flutter/material.dart';
import 'package:news/screens/tab_bar/all_class.dart';

class All extends StatelessWidget {
  All({super.key});
  List<AllClass> boxes = [
    AllClass("Jan, 2023", "assets/images/airplane4.jpeg",
        "An lllnois town fight to save\nit's power plant ", "10 mins read"),
    AllClass("Feb 2023", "assets/images/airplane3.jpeg",
        "14 Passengers By Nona\nAirline after Bad Behaviour", "20 mins read"),
    AllClass("Jan, 2023", "assets/images/airplane4.jpeg",
        "An lllnois town fight to save\nit's power plant ", "10 mins read"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...boxes.map((e) {
              return Padding(
                padding: const EdgeInsets.only(left: 2, top: 20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Container(
                            height: 100,
                            width: 110,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                      e.image,
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 20,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  e.name,
                                  style: const TextStyle(
                                    height: 1.5,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 11, 70, 129),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.calendar_month,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  e.date,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 20),
                                const Icon(
                                  Icons.alarm,
                                  color: Colors.grey,
                                ),
                                Text(
                                  e.date,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
