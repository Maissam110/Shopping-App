class Product {
  final String name;
  final String category;
  final double price;
  final double? oldPrice;
  final String imageUrl;
  final bool isFavorite;
  final String description;

  Product({
    required this.name,
    required this.category,
    required this.price,
    this.oldPrice,
    required this.imageUrl,
    this.isFavorite = false,
    required this.description,
  });
}

final List<Product> products = [
  Product(
    name: 'Shoes',
    category: 'Footwere',
    price: 69.00,
    isFavorite: true,
    imageUrl: 'assets/images/shoe.jpg',
    description: 'This is the description of the product 1',
    oldPrice: 189.00,
  ),
  Product(
    name: 'Laptop',
    category: 'Electronics',
    price: 69.00,
    isFavorite: true,
    imageUrl: 'assets/images/laptop.jpg',
    description: 'This is the description of the product 2',
    oldPrice: 189.00,
  ),
  Product(
    name: 'Jordon Shows',
    category: 'Footwere',
    price: 69.00,
    imageUrl: 'assets/images/shoe2.jpg',
    description: 'This is the description of the product 3',
    oldPrice: 189.00,
  ),
  Product(
    name: 'Puma',
    category: 'Footwere',
    price: 69.00,
    imageUrl: 'assets/images/shoes2.jpg',
    description: 'This is the description of the product 4',
    oldPrice: 189.00,
  ),
];
