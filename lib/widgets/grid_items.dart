import 'package:first_app/screens/item_screen.dart';
import 'package:first_app/screens/models/produit.dart';
import 'package:flutter/material.dart';

final List<Product> produits = [
  Product(
    nameprod: 'Apple Watch -M2',
    priceN: '\$150',
    priceP: '\$200',
    description:
        'Montre Connecté Apple Watch Series 6 Version GPS - Dimention 324 x 394 pixels - Processeur S6 bicoeur 64 bits - Capteur de taux d’oxygène dans le sang - Capteur électrique de fréquence cardiaque - Haut-Parleur et Microphone - RAM interne: 512 M - Memoire 32 Go - Wifi - Bluetooth 5.0 - Largeur 34 mm, Hauteur 40 mm, Épaisseur 10.7 mm',
    imgproduit1: 'images/p1.png',
    imgproduit2: 'images/p2.png',
  ),
  Product(
    nameprod: 'White Tshirt',
    priceN: '\$80',
    priceP: '\$100',
    description: 'T-shirt droit à motif texturé coton',
    imgproduit1: 'images/White Tshirt.png',
    imgproduit2: 'images/Black T-Shirt.png',
  ),
  Product(
    nameprod: 'Nike Shoe',
    priceN: '\$200',
    priceP: '\$250',
    description: 'NIKE MENS JUNIPER TRAIL 2 TRAIL RUNNING SHOE - SAND',
    imgproduit1: 'images/nike1.png',
    imgproduit2: 'images/nike2.png',
  ),
  Product(
    nameprod: 'Ear Headphone',
    priceN: '\$80',
    priceP: '\$120',
    description:
        'Micro Casque- Connectivité Sans Fil: Bluetooth 5.0- Gamme de fréquences: 20 Hz-20 KHz- Sensibilité: 105 dB ± 3 dB - Capacité de la batterie: 200 mAh - Temps de charge de la batterie: 1,5 heures - Utilisez le câble Jack 3,5 mm inclus pour continuer à écouter votre musique préférée à tout moment - Finition acier inoxydable et cuir synthétique ',
    imgproduit1: 'images/Ear Headphone.png',
    imgproduit2: 'images/ear headphone 2.png',
  ),
];

class GridItems extends StatelessWidget {
  const GridItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: produits.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        final produit = produits[index];
        return Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFFD4ECF7),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "30% off",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemScreen(produit: produit)),
                      );
                    },
                    child: Image.asset(
                      produit.imgproduit1,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        produit.nameprod,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            produit.priceN,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            produit.priceP,
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.4),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
