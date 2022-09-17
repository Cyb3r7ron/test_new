import 'package:carousel_slider/carousel_slider.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
        backgroundColor: Colors.deepPurple[400],
        elevation: 0,
      ),
      body: Center(
        child: ListView(
          children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1661961111184-11317b40adb2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1663364573300-9436981cbba6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1663326223809-7a83745328a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1663286358260-7c176022bd7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //5th Image of Slider
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1663370381347-fb1076f1987a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0NHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 210.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),

            // tutorial lists
            SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 5.0),
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/try.jpg'),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Nouveautés'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // tutorial lists
            SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 5.0),
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/try.jpg'),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Nouveautés'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // tutorial lists
            SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 5.0),
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/try.jpg'),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Nouveautés'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // tutorial lists
            SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 5.0),
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/try.jpg'),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Nouveautés'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // tutorial lists
            SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 5.0),
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/try.jpg'),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Nouveautés'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // tutorial lists
            SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 5.0),
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/try.jpg'),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Nouveautés'),
                      ),
                    ),
                  )
                ],
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
