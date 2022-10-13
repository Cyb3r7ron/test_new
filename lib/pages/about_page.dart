import 'package:flutter/material.dart';
//import 'package:contactus/contactus.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("About"),
        backgroundColor: Colors.greenAccent[400],
      ),
      body: (Row(
        children: const [
          SizedBox(height: 10),
          Flexible(
            child: Center(
              child: Text(
                  "This App was made By Kidus Girma \n Contact: t.me/Telmid20 \n Version 1.2.0 "),
            ),
          ),
        ],
      )),
    );
  }
}
