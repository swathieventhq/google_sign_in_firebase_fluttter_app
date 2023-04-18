import 'package:flutter/material.dart';

class AboutTab extends StatefulWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  State<AboutTab> createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            elevation: 2,
            color: Color(0xff151318),
            child: Padding(
              padding: const EdgeInsets.only(top: 21.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("About"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 19.0),
                    child: Text(
                      "hdsjbsbkvsvksnvsnvsnvsvsvmlslkslns\nbsdskvnksnvkjsnvjnvjvhbjhbhbhbhbxahbhcbschsbdcjhdsb\ngvcjacjhbhcjhcvagjvjcvajcajhajhbakcakcdscftwvfsgjhsbcjsbcjs\njdshbcjshdbcjshbj\n",
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 2,
            color: Color(0xff151318),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text("Work History"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0,bottom: 10.0,left: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Image(
                          image: AssetImage("assets/amazon.png"),
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "R and D Engineer",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Amazon . Internship",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "May, 2022 - june, 20222.2 months",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 2,
            color: Color(0xff151318),
            child: Padding(
              padding: const EdgeInsets.only(top: 21.0 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:10.0, bottom: 14),
                    child: Text("Contact"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:16.0,bottom: 14),
                    child: Row(
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            child: Image(
                              image: AssetImage(
                                'assets/linkedin.png',
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "https://www.linkedin.com/in/saasinsider",
                          style: TextStyle(color: Color(0xffffffff)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:16.0,bottom: 14),
                    child: Row(
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            child: Icon(
                              Icons.phone,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "+91 6363731676",
                          style: TextStyle(color: Color(0xffffffff)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:16.0,bottom: 14),
                    child: Row(
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            child: Icon(
                              Icons.mail,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          " swathi@eventhq.io",
                          style: TextStyle(color: Color(0xffffffff)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
