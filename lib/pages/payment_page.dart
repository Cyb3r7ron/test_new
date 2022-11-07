import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import 'about_page.dart';
import 'home_page.dart';
//import 'package:contactus/contactus.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Payment"),
        backgroundColor: Colors.greenAccent[400],
      ),
      body: Center(
        child: Link(
          target: LinkTarget.blank,
          uri: Uri.parse(
              'http://checkout.chapa.co/checkout/web/payment/SC-GbrylgSwGvGL'),
          builder: (context, followLink) => ElevatedButton(
            child: Text('Go To Payment'),
            onPressed: followLink,
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF2DCC06), // Background color
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        //label: Text('Next Video'),
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              },
            ),
          );
        },
      ),
    );
  }
}
