import 'package:first_app/screens/models/produit.dart';

class Catego {
  final String nameCatg;
  final String Urlcateg;
  final List<Product> produits;

  const Catego({
    required this.nameCatg,
    required this.Urlcateg,
    required this.produits,
  });
}
