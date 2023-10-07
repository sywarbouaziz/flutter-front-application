import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Commande {
  String nom;
  int quantity;
  String size;
  String prix;

  Commande({
    required this.nom,
    required this.quantity,
    required this.size,
    required this.prix,
  });
}

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // int quantity = 1;
  List<Commande> commandes = [
    Commande(nom: 'Apple Watch -M2', quantity: 1, size: '36', prix: '\$300'),
    Commande(nom: 'White Tshirt', quantity: 1, size: 'M', prix: '\$80'),
    Commande(nom: 'Nike Shoe', quantity: 1, size: '40', prix: '\$100'),
    Commande(nom: 'Ear Headphone', quantity: 1, size: 'S', prix: '\$90'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "My cart",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              Column(
                children: [
                  for (int i = 0; i < 4; i++)
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 248, 248),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 4,
                            margin: EdgeInsets.only(left: 8),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xFFD4ECF7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              "images/${commandes[i].nom}.png",
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15, top: 20, bottom: 25),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    commandes[i].nom,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Size:",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        commandes[i].size,
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        commandes[i].prix,
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Container(
                                        height: 30,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            IconButton(
                                              onPressed: () =>
                                                  _decrementQuantity(i),
                                              icon: Icon(Icons.remove),
                                            ),
                                            Text("${commandes[i].quantity}"),
                                            IconButton(
                                              onPressed: () =>
                                                  _incrementQuantity(i),
                                              icon: Icon(Icons.add),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "\$200",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 2 * 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Text(
                      "Order Now",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _incrementQuantity(int index) {
    setState(() {
      commandes[index].quantity++;
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      if (commandes[index].quantity > 1) {
        commandes[index].quantity--;
      }
    });
  }
}
