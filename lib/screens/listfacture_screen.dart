import 'package:first_app/screens/facturepage_screen.dart';
import 'package:first_app/screens/models/facture.dart';
import 'package:flutter/material.dart';

final List<Facture> Lfacture = [
  Facture(
    Nfacture: 'Invoice 1',
    status: 'unpaid',
    urlFacture: 'images/facture1.png',
    estPayee: false,
  ),
  Facture(
    Nfacture: 'Invoice 2',
    status: 'paid',
    urlFacture: 'images/facture2.png',
    estPayee: true,
  ),
];

class ListFacture extends StatefulWidget {
  const ListFacture({Key? key}) : super(key: key);

  @override
  _ListFactureState createState() => _ListFactureState();
}

class _ListFactureState extends State<ListFacture> {
  String _selectedFilter = 'All';

  List<Facture> getFilteredfacture() {
    if (_selectedFilter == 'paid') {
      return Lfacture.where((facture) => facture.status == 'paid').toList();
    } else if (_selectedFilter == 'unpaid') {
      return Lfacture.where((facture) => facture.status == 'unpaid').toList();
    } else {
      return Lfacture;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Invoice List",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: _selectedFilter == 'All'
                        ? Colors.deepPurple
                        : Colors.grey[400],
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedFilter = 'All';
                    });
                  },
                  child: Text(
                    'All',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: _selectedFilter == 'paid'
                        ? Colors.deepPurple
                        : Colors.grey[400],
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedFilter = 'paid';
                    });
                  },
                  child: Text(
                    'paid',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: _selectedFilter == 'unpaid'
                        ? Colors.deepPurple
                        : Colors.grey[400],
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedFilter = 'unpaid';
                    });
                  },
                  child: Text(
                    'unpaid',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: getFilteredfacture().length,
              itemBuilder: (context, index) {
                final facture = getFilteredfacture()[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(facture.urlFacture),
                    ),
                    title: Text(facture.Nfacture),
                    subtitle: Text(facture.status),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FacturePage(facture: facture),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
