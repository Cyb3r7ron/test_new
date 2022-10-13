import "package:flutter/material.dart";

//import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_new/Videos/medeb_two/akal_one.dart';
import 'package:test_new/Videos/medeb_two/auto_one.dart';
//import 'package:test_new/auth/main_page.dart';
import 'package:test_new/video_page.dart';

class MedebTwo extends StatefulWidget {
  const MedebTwo({Key? key}) : super(key: key);

  @override
  State<MedebTwo> createState() => _MedebTwoState();
}

class _MedebTwoState extends State<MedebTwo> {
  //final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ምድብ 2"),
        backgroundColor: Colors.greenAccent[400],
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut();
              },
              child: const Icon(Icons.logout),
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AutoOne();
                    },
                  ),
                );
              },
              child: Card(
                margin:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: const DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/car.png'),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'አውቶ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //second card
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AkalOne();
                    },
                  ),
                );
              },
              child: Card(
                margin:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: const DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/wheel.png'),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'ለአካል ጉዳተኛ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      /* child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('signed in as: ${user.email!}'),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              color: Colors.deepPurple[200],
              child: Text('Log Out'),
            ),
          ],
        ),*/
    );
  }
}
