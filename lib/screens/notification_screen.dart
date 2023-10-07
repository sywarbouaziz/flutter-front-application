import 'package:first_app/screens/listdevis_screen.dart';
import 'package:first_app/screens/listfacture_screen.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Notification",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              width: 200.0,
              height: 40.0,
              child: Divider(
                color: Color.fromARGB(255, 166, 225, 252),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              color: Color(0xFFD4ECF7),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.payments,
                    ),
                    SizedBox(width: 25),
                    Text(
                      "Estimate",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 160),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ListDevis()),
                        );
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              color: Color(0xFFD4ECF7),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.price_check,
                    ),
                    SizedBox(width: 25),
                    Text(
                      "Invoice",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 175),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListFacture()),
                        );
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
