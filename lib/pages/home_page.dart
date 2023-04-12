import 'package:flutter/material.dart';
import 'package:health_monitor/pages/heartrate_page.dart';
import 'package:health_monitor/pages/hemoglobin_page.dart';
import 'package:health_monitor/pages/tension_page.dart';
import 'package:health_monitor/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Column(
        children: [
          // header

          Container(
            width: size.width,
            height: size.height * 0.2,
            padding:
                EdgeInsets.only(left: 25.0, right: 25, top: 40, bottom: 20),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Color(0xFF92a7f5),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Column(children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Добрый день",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("",
                        style: TextStyle(
                          color: Colors.grey[100],
                          fontSize: 26,
                        )),
                  ]),
            ]),
          ),

          //Parameters Header

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text("Мои данные",
                  style: TextStyle(
                    fontSize: 20,
                  )),
            ]),
          ),

          //Parameters

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TensionPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.red[100],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Icon(
                                Icons.medical_information,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Давление',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Записать новые показания',
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HeartRatePage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.red[200],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Icon(
                                Icons.favorite_border_outlined,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Сердцебиение',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Записать новые показания',
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HemoglobinPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.orange[200],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Icon(
                                Icons.bubble_chart_outlined,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Гемоглобин',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Записать новые показания',
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
