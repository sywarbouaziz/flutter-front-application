import 'package:first_app/screens/devispage_screen.dart';
import 'package:first_app/screens/models/devis.dart';
import 'package:flutter/material.dart';

final List<Devis> Ldevis = [
  Devis(
    Ndevis: 'Estimate 1',
    status: 'not-confirmed',
    urlDevis: 'images/devis1.jpg',
    isconfirmed: false,
  ),
  Devis(
    Ndevis: 'Estimate 2',
    status: 'confirmed',
    urlDevis: 'images/devis2.png',
    isconfirmed: true,
  ),
];

class ListDevis extends StatefulWidget {
  const ListDevis({Key? key}) : super(key: key);

  @override
  _ListDevisState createState() => _ListDevisState();
}

class _ListDevisState extends State<ListDevis> {
  String _selectedFilter = 'All';

  List<Devis> getFiltereddevis() {
    if (_selectedFilter == 'confirmed') {
      return Ldevis.where((devis) => devis.status == 'confirmed').toList();
    } else if (_selectedFilter == 'not-confirmed') {
      return Ldevis.where((devis) => devis.status == 'not-confirmed').toList();
    } else {
      return Ldevis;
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
          "Quotation List",
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
                    primary: _selectedFilter == 'confirmed'
                        ? Colors.deepPurple
                        : Colors.grey[400],
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedFilter = 'confirmed';
                    });
                  },
                  child: Text(
                    'confirmed',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: _selectedFilter == 'not-confirmed'
                        ? Colors.deepPurple
                        : Colors.grey[400],
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedFilter = 'not-confirmed';
                    });
                  },
                  child: Text(
                    'not-confirmed',
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
              itemCount: getFiltereddevis().length,
              itemBuilder: (context, index) {
                final devis = getFiltereddevis()[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(devis.urlDevis),
                    ),
                    title: Text(devis.Ndevis),
                    subtitle: Text(devis.status),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DevisPage(devis: devis),
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
