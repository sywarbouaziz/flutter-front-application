import 'package:first_app/screens/models/facture.dart';
import 'package:flutter/material.dart';
import 'package:first_app/screens/paiement_screen.dart';

class FacturePage extends StatefulWidget {
  final Facture facture;
  const FacturePage({
    Key? key,
    required this.facture,
  }) : super(key: key);

  @override
  State<FacturePage> createState() => _FacturePageState();
}

class _FacturePageState extends State<FacturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.facture.Nfacture),
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
              widget.facture.urlFacture,
              height: 500,
              width: double.infinity,
            ),
            SizedBox(height: 50),
            if (!widget.facture.estPayee)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Paiement()),
                  );
                },
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
                      "Pay",
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
