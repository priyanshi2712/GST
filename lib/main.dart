import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: gst(),
    ),
  );
}

class gst extends StatefulWidget {
  @override
  _GstState createState() => _GstState();
}

class _GstState extends State<gst> {
  String pri = " ";
  String temp = " ";
  int user_press = 0;
  double final_price = 0;

  Color c1 = Colors.grey.shade200;
  Color c2 = Colors.grey.shade200;
  Color c3 = Colors.grey.shade200;
  Color c4 = Colors.grey.shade200;
  Color c5 = Colors.grey.shade200;

  TextEditingController value1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Gst calculator"),
          // backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey.shade200,
                    height: 30,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 100,
                            color: Colors.grey.shade200,
                            child: const Center(
                              child: Text(
                                "ORIGINAL PRICE",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 100,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text(
                                "${pri}\t Rs.",
                                style: const TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    width: 100,
                    color: Colors.grey.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 35,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                              child: const Center(
                                child: Text(
                                  "GST",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        double user_press = cal(3);
                                        setState(() {
                                          final_price = user_press;
                                          c1 = Colors.orange;
                                          c2 = Colors.grey.shade200;
                                          c3 = Colors.grey.shade200;
                                          c4 = Colors.grey.shade200;
                                          c5 = Colors.grey.shade200;
                                        });
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          color: c1,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "3%",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        double user_press = cal(5);
                                        setState(() {
                                          final_price = user_press;
                                          c1 = Colors.grey.shade200;
                                          c2 = Colors.orange;
                                          c3 = Colors.grey.shade200;
                                          c4 = Colors.grey.shade200;
                                          c5 = Colors.grey.shade200;
                                        });
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          color: c2,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "5%",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        double user_press = cal(12);
                                        setState(() {
                                          final_price = user_press;
                                          c1 = Colors.grey.shade200;
                                          c2 = Colors.grey.shade200;
                                          c3 = Colors.orange;
                                          c4 = Colors.grey.shade200;
                                          c5 = Colors.grey.shade200;
                                        });
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          color: c3,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "12%",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        double user_press = cal(18);
                                        setState(() {
                                          final_price = user_press;
                                          c1 = Colors.grey.shade200;
                                          c2 = Colors.grey.shade200;
                                          c3 = Colors.grey.shade200;
                                          c4 = Colors.orange;
                                          c5 = Colors.grey.shade200;
                                        });
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          color: c4,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "18%",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        double user_press = cal(28);
                                        setState(() {
                                          final_price = user_press;
                                          c1 = Colors.grey.shade200;
                                          c2 = Colors.grey.shade200;
                                          c3 = Colors.grey.shade200;
                                          c4 = Colors.grey.shade200;
                                          c5 = Colors.orange;
                                        });
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          color: c5,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "28%",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
           const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey.shade200,
                    height: 30,
                    width: 100,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 100,
                            color: Colors.grey.shade200,
                            child: const Center(
                              child: Text(
                                "FINAL PRICE",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 100,
                            color: Colors.grey.shade200,
                            child: Center(
                              child: Text(
                                "${final_price}\t\tRs.",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    //border: Border.all(),
                  ),
                  child: const Center(
                    child: Text(
                      "CGST/SGST\n\t\t\t\t\t\t\t\t25",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 290,
                  height: 400,
                  color: Colors.grey.shade300,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}7";
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    "7",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}8";
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    "8",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 40),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}9";
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    "9",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}4";
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    "4",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}5";
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    "5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 40),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}6";
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    "6",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}1";
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}2";
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 40),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}3";
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}00";
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    "00",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}0";
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 40),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                temp = pri;
                                setState(() {
                                  pri = "${temp}.";
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    ".",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          temp = pri;
                          setState(() {
                            pri = " ";
                          });
                        },
                        child: Container(
                          height: 190,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Text(
                              "AC",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            pri = pri.substring(0, pri.length - 1);
                          });
                        },
                        child: Container(
                          height: 190,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(
                            Icons.backspace_rounded,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  double cal(int user_press) {
    int a = int.parse(pri);
    return a * (user_press / 100) + a;
  }
}
