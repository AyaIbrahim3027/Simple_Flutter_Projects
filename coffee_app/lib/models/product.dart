class Product {
  final String name, image;
  //final int price;

  Product(this.name, this.image);
}

List<Product> products = [
  Product( 'Espresso', 'assets/images/espresso.svg'  ),
  Product('Cappuccino',  'assets/images/cappuccino.svg'  ),
  Product('Macchiato',  'assets/images/macchiato.svg'  ),
  Product( 'Mocha',  'assets/images/mocha.svg'  ),
  Product('Latte',  'assets/images/latte.svg' ),
];
