import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class CoverScreen extends StatefulWidget {
  const CoverScreen({Key? key}) : super(key: key);

  @override
  State<CoverScreen> createState() => _CoverScreenState();
}

class _CoverScreenState extends State<CoverScreen> {
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
            image: const AssetImage("assets/images/background_cover.png"),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 55),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(
                  image: AssetImage(
                    "assets/images/logo_ic.png",
                  ),
                  width: 300,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 150,
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
                    const SizedBox(
                      height: 10,
                    ),
                    BorderedText(
                        strokeWidth: 1.4,
                        strokeColor: Colors.white,
                        child: const Text(
                          "INTER-\nLINKED\nCELLS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 90,
                          ),
                        )),
                    BorderedText(
                        strokeWidth: 0.1,
                        strokeColor: Colors.white,
                        child: const Text(
                          ">AN BLOOD STRAIN RUNS THROUGH OUR MIND\nWITHOUT ANY SOUL",
                          style: TextStyle(color: Colors.white, fontSize: 15.5),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Image(
                      image: AssetImage("assets/images/delimiter_cover.png"),
                      width: 280,
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed("/main");
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BorderedText(
                                strokeWidth: 0.1,
                                strokeColor: Colors.white,
                                child: const Text(">RUN THE SYSTEM",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              BorderedText(
                                  strokeWidth: 0.7,
                                  strokeColor: Colors.white,
                                  child: const Text("START.sh",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 40)))
                            ],
                          ),
                        ),
                        Column(
                          children: const [
                            Text("+1 221 9234034345",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17)),
                            Image(
                              image: AssetImage("assets/images/cover_code.png"),
                              width: 130,
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Center(
                      child: Image(
                        image: AssetImage("assets/images/bottom_name.png"),
                        width: 130,
                      ),
                    )
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
