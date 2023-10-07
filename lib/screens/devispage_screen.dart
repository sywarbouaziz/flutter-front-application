import 'package:flutter/material.dart';
import 'package:first_app/screens/models/devis.dart';

class DevisPage extends StatefulWidget {
  final Devis devis;
  const DevisPage({
    Key? key,
    required this.devis,
  }) : super(key: key);

  @override
  State<DevisPage> createState() => _DevisPageState();
}

class _DevisPageState extends State<DevisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.devis.Ndevis),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.download_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              widget.devis.urlDevis,
              height: 500,
              width: double.infinity,
            ),
            SizedBox(height: 50),
            if (!widget.devis.isconfirmed)
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple, // Background color
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //color: Colors.redAccent,
                  ),
                  child: Center(
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
