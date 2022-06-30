class Product {
  final String desc, image, name;
  final double price;

  Product({
    required this.name,
    required this.image,
    required this.desc,
    required this.price,
  });
}

List productinfo = [
  Product(
    image: 'assets/book 1.png',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    name: 'Exchange 1',
    price: 0,
  ),
  Product(
    image: 'assets/book2.png',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    name: 'Exchange 2',
    price: 0,
  ),
  Product(
    image: 'assets/book3.png',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    name: 'Exchange 3',
    price: 0,
  ),
  Product(
    image: 'assets/book 1.png',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    name: 'Exchange 4',
    price: 1.5,
  ),
];
