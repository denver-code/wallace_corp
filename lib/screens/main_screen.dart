import 'package:bordered_text/bordered_text.dart';
import "package:flutter/material.dart";

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List topCardLinks = [
    ">RECOMMENDATION",
    "//LESSONS",
    "//REPLICANTS",
    "//SUPPLICANTS"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image(
            image: const AssetImage("assets/images/main_bg.png"),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 286,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/rayan_top_card_bg.png"),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Image(
                            image: AssetImage(
                              "assets/images/logo_ic.png",
                            ),
                            width: 300,
                          ),
                          Image(
                            image: AssetImage(
                              "assets/images/notification.png",
                            ),
                            width: 30,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children:
                                  List.generate(topCardLinks.length, (index) {
                                return Row(
                                  children: [
                                    Text(
                                      topCardLinks[index],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    )
                                  ],
                                );
                              }),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[400]),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[400]),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[400]),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              BorderedText(
                                  strokeColor: Colors.white,
                                  strokeWidth: 0.7,
                                  child: const Text("LESSONS OF THE DAY",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ))),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                  "LEARN ABOUT THE INCREDIBLE WALLACE CULTURE\nAND EARN CRYPTOCURRENCY",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ))
                            ],
                          ),
                          const Text("仕\n事",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ))
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 227,
                            height: 187,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/girl_finger_rayan_bg.png"),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text("5 min",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 19,
                                              )),
                                          Text("0.25 ETH",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 19,
                                              )),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text("30点",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                              )),
                                          Text("仕事",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 19,
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BorderedText(
                                          strokeColor: Colors.white,
                                          strokeWidth: 0.5,
                                          child:
                                              const Text("MANUFACTURED\nSLAVES",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 23,
                                                  ))),
                                      BorderedText(
                                          strokeColor: Colors.white,
                                          strokeWidth: 0.15,
                                          child: const Text("START.sh",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                              ))),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 227,
                            height: 187,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/rayan_china_card_bg.png"),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text("8 min",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 19,
                                              )),
                                          Text("0.32 ETH",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 19,
                                              )),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text("50点",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                              )),
                                          Text("仕事",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 19,
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BorderedText(
                                          strokeColor: Colors.white,
                                          strokeWidth: 0.5,
                                          child: const Text("THE BIG\nBLACKOUT",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 23,
                                              ))),
                                      BorderedText(
                                          strokeColor: Colors.white,
                                          strokeWidth: 0.15,
                                          child: const Text("START.sh",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                              ))),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[400]),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[400]),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              BorderedText(
                                  strokeColor: Colors.white,
                                  strokeWidth: 0.7,
                                  child: const Text("HIGH END REPLICANTS",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ))),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                  "FIND THE IDEAL HUMAN FOR YOUR DAY TO DAY.\nMAKE YOUR LIFE NEW",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ))
                            ],
                          ),
                          const Text("計\n人",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ))
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 140,
                            height: 171,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/old_man_pistol_bg.png"),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BorderedText(
                                        strokeColor: Colors.white,
                                        strokeWidth: 0.3,
                                        child: const Text("DECKARD",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 19,
                                            )),
                                      ),
                                      const Text("2.320 ETH",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/replicant");
                            },
                            child: Container(
                              width: 140,
                              height: 171,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/girl_glasses_bg.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        BorderedText(
                                          strokeColor: Colors.white,
                                          strokeWidth: 0.3,
                                          child: const Text("LUV",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 19,
                                              )),
                                        ),
                                        const Text("5.000 ETH",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 19,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 140,
                            height: 171,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/last_girl_solider_bg.png"),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BorderedText(
                                        strokeColor: Colors.white,
                                        strokeWidth: 0.3,
                                        child: const Text("JOSHI",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 19,
                                            )),
                                      ),
                                      const Text("4.350 ETH",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              width: 270,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 21.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 7.0, horizontal: 15),
                          child: Text(
                            "FIRST",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "CULTURE",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        "STORE",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ]),
              ),
            ),
          )
        ],
      )),
    );
  }
}
