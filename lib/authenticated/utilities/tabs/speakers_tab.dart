import 'package:flutter/material.dart';

class SpeakersTab extends StatefulWidget {
  @override
  State<SpeakersTab> createState() => _SpeakersTabState();
}

class _SpeakersTabState extends State<SpeakersTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            elevation: 2,
            color: Color(0xff151318),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 8.0),
                  child: Text("Speakers"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 10.0,left: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                         AssetImage("assets/iron_man.png"),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Robert John Downey Jr",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Iron Man",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          // Text(
                          //   "May, 2022 - june, 20222.2 months",
                          //   style: TextStyle(
                          //     fontSize: 12,
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 10.0,left: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/thor.png"),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chris Hemsworth",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Thor The Thunder God",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          // Text(
                          //   "May, 2022 - june, 20222.2 months",
                          //   style: TextStyle(
                          //     fontSize: 12,
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 10.0,left: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/dr_strange.png"),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Scott Derrickson ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Doctor Strange",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          // Text(
                          //   "May, 2022 - june, 20222.2 months",
                          //   style: TextStyle(
                          //     fontSize: 12,
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 10.0,left: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/hulk.png"),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mark Alan Ruffalo ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Hulk",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          // Text(
                          //   "May, 2022 - june, 20222.2 months",
                          //   style: TextStyle(
                          //     fontSize: 12,
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 10.0,left: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/black_widow.png"),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Scarlett Ingrid Johansson",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Black Widow",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          // Text(
                          //   "May, 2022 - june, 20222.2 months",
                          //   style: TextStyle(
                          //     fontSize: 12,
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 10.0,left: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/loki.png"),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tom Hiddleston",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Loki",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          // Text(
                          //   "May, 2022 - june, 20222.2 months",
                          //   style: TextStyle(
                          //     fontSize: 12,
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Card(
          //   elevation: 2,
          //   color: Color(0xff151318),
          //   child: Padding(
          //     padding: const EdgeInsets.only(top: 21.0 ),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.only(left:10.0, bottom: 14),
          //           child: Text("Contact"),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(left:16.0,bottom: 14),
          //           child: Row(
          //             children: [
          //               Container(
          //                   height: 30,
          //                   width: 30,
          //                   child: Image(
          //                     image: AssetImage(
          //                       'assets/linkedin.png',
          //                     ),
          //                   )),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               Text(
          //                 "https://www.linkedin.com/in/saasinsider",
          //                 style: TextStyle(color: Color(0xffffffff)),
          //               ),
          //             ],
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(left:16.0,bottom: 14),
          //           child: Row(
          //             children: [
          //               Container(
          //                   height: 30,
          //                   width: 30,
          //                   child: Icon(
          //                     Icons.phone,
          //                   )),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               Text(
          //                 "+91 6363731676",
          //                 style: TextStyle(color: Color(0xffffffff)),
          //               ),
          //             ],
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(left:16.0,bottom: 14),
          //           child: Row(
          //             children: [
          //               Container(
          //                   height: 30,
          //                   width: 30,
          //                   child: Icon(
          //                     Icons.mail,
          //                   )),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               Text(
          //                 " swathi@eventhq.io",
          //                 style: TextStyle(color: Color(0xffffffff)),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
