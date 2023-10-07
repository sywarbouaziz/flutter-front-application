import 'package:first_app/screens/models/categorie.dart';
import 'package:first_app/screens/models/produit.dart';

final List<Catego> Lcateg = [
  Catego(
    nameCatg: 'shoes',
    Urlcateg: 'images/icon1.png',
    produits: [
      Product(
        nameprod: 'Nike Shoe',
        priceN: '\$200',
        priceP: '\$250',
        description: 'NIKE MENS JUNIPER TRAIL 2 TRAIL RUNNING SHOE - SAND',
        imgproduit1: 'images/nike1.png',
        imgproduit2: 'images/nike2.png',
      ),
      Product(
        nameprod: 'Nike',
        priceN: '\$190',
        priceP: '\$230',
        description: 'NIKE MENS JUNIPER TRAIL 2 TRAIL RUNNING SHOE - SAND',
        imgproduit1: 'images/nike3.png',
        imgproduit2: 'images/nike2.png',
      ),
    ],
  ),
  Catego(
    nameCatg: 'watch',
    Urlcateg: 'images/icon2.png',
    produits: [
      Product(
        nameprod: 'Apple Watch -M2',
        priceN: '\$150',
        priceP: '\$200',
        description:
            'Montre Connecté Apple Watch Series 6 Version GPS - Dimention 324 x 394 pixels - Processeur S6 bicoeur 64 bits - Capteur de taux d’oxygène dans le sang - Capteur électrique de fréquence cardiaque - Haut-Parleur et Microphone - RAM interne: 512 M - Memoire 32 Go - Wifi - Bluetooth 5.0 - Largeur 34 mm, Hauteur 40 mm, Épaisseur 10.7 mm',
        imgproduit1: 'images/p1.png',
        imgproduit2: 'images/p2.png',
      ),
    ],
  ),
  Catego(
    nameCatg: 'phone',
    Urlcateg: 'images/icon3.png',
    produits: [
      Product(
        nameprod: 'Iphone 13 pro',
        priceN: '\$350',
        priceP: '\$500',
        description:
            'Double SIM - Ecran Super Retina XDR OLED ProMotion 6.7", 120 Hz - Résolution 1284 x 2778px - Processeur Apple A15 Bionic Hexa-Core - RAM 6 Go - Stockage 128 Go - 3x Appareils Photo Arrière 12 Mégapixels - Appareil photo frontale 12 Mégapixels -  Système iOS 15 - 5G - Wifi - NFC - Bluetooth 5.0 - Wi-Fi 6 AX ',
        imgproduit1: 'images/iphone 13 pro max.png',
        imgproduit2: 'images/iphone 13 pro max.png',
      ),
      Product(
        nameprod: 'Iphone 11 pro',
        priceN: '\$290',
        priceP: '\$400',
        description:
            'Écran OLED Super Retina XDR 5.8" HDR (1125 x 2436px)- Processeur Apple A13 Bionic Hexa-Core 3Gen - RAM 6 Go - Mémoire 64 Go - Système Apple iOS 13 - 3x Appareils Photos: 12 Megapixels F/2.4 (ultra grand-angle), F/1.8 (grand-angle), Téléobjectif F/2.0 (Arrière), 12MP TrueDepth F/2.2 (Avant) - Wifi - 4G+ - Bluetooth 5.0 - Batterie 3190 mAh',
        imgproduit1: 'images/iphone 11 pro.png',
        imgproduit2: 'images/iphone 11 pro.png',
      ),
    ],
  ),
  Catego(
    nameCatg: 'T-shirt',
    Urlcateg: 'images/icon4.png',
    produits: [
      Product(
        nameprod: 'White Tshirt',
        priceN: '\$80',
        priceP: '\$100',
        description: 'T-shirt droit à motif texturé coton',
        imgproduit1: 'images/White Tshirt.png',
        imgproduit2: 'images/Black T-Shirt.png',
      ),
    ],
  ),
  Catego(
    nameCatg: 'men',
    Urlcateg: 'images/icon5.png',
    produits: [
      Product(
        nameprod: 'Men suit',
        priceN: '\$100',
        priceP: '\$180',
        description:
            'Velocity s impossibly soft fabric captures the crisp, classic look and feel of wool, without the hassle of dry cleaning. Built with incredible stretch and wrinkle resistance, it s ready for whatever the day throws your way.',
        imgproduit1: 'images/men suit.png',
        imgproduit2: 'images/men suit.png',
      ),
      Product(
        nameprod: 'Black shoe',
        priceN: '\$80',
        priceP: '\$130',
        description: '"SEAN" LEATHER DERBY',
        imgproduit1: 'images/black men shoe.png',
        imgproduit2: 'images/black men shoe.png',
      ),
    ],
  ),
];
