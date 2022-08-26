import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class ReplicantScreen extends StatefulWidget {
  const ReplicantScreen({Key? key}) : super(key: key);

  @override
  State<ReplicantScreen> createState() => _ReplicantScreenState();
}

class _ReplicantScreenState extends State<ReplicantScreen> {
  List slogans = [
    "//MORE HUMAN\nTHAN HUMAN",
    "//DEFENSE THE\nPROGRAM",
    "//COMBAT\nCOLONIZATION",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(children: [
          Image(
            image: const AssetImage("assets/images/Luv.png"),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 35, right: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (() => Navigator.of(context).pop()),
                  child: const Image(
                    image: AssetImage("assets/images/voltar.png"),
                    width: 100,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BorderedText(
                                strokeColor: Colors.white,
                                strokeWidth: 1.6,
                                child: const Text("LUV",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 72,
                                    ))),
                            BorderedText(
                                strokeColor: Colors.white,
                                strokeWidth: 0.6,
                                child: const Text("NEXUS 9",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                    ))),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BorderedText(
                                strokeColor: Colors.white,
                                strokeWidth: 1,
                                child: const Text("HAIR",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                    ))),
                            BorderedText(
                                strokeColor: Colors.white,
                                strokeWidth: 0,
                                child: const Text("BLACK",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ))),
                            const SizedBox(
                              height: 10,
                            ),
                            BorderedText(
                                strokeColor: Colors.white,
                                strokeWidth: 1,
                                child: const Text("OCCUPATION",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                    ))),
                            BorderedText(
                                strokeColor: Colors.white,
                                strokeWidth: 0,
                                child: const Text("SECRETARY",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ))),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BorderedText(
                                strokeColor: Colors.white,
                                strokeWidth: 1,
                                child: const Text("EYES",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                    ))),
                            BorderedText(
                                strokeColor: Colors.white,
                                strokeWidth: 0,
                                child: const Text("BROWNS",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ))),
                            const SizedBox(
                              height: 10,
                            ),
                            BorderedText(
                                strokeColor: Colors.white,
                                strokeWidth: 1,
                                child: const Text("GENRE",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                    ))),
                            BorderedText(
                                strokeColor: Colors.white,
                                strokeWidth: 0,
                                child: const Text("FEMALE",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ))),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BorderedText(
                        strokeColor: Colors.white,
                        strokeWidth: 0.5,
                        child: const Text(
                            ">That rushes skin and widens in blooded veins. Breathe in.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                            ))),
                  ],
                ),
                const SizedBox(
                  height: 460,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BorderedText(
                            strokeColor: Colors.white,
                            strokeWidth: 1.6,
                            child: const Text("5.000 ETH",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 52,
                                ))),
                        Container(
                          decoration: const BoxDecoration(color: Colors.white),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 20),
                              child: BorderedText(
                                strokeColor: Colors.black,
                                strokeWidth: 1,
                                child: const Text(
                                  "ADOPT",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: List.generate(slogans.length, (index) {
                        return Row(
                          children: [
                            BorderedText(
                                strokeWidth: 0.1,
                                strokeColor: Colors.white,
                                child: Text(
                                  slogans[index],
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.white),
                                )),
                            const SizedBox(
                              width: 7,
                            )
                          ],
                        );
                      }),
                    ),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
