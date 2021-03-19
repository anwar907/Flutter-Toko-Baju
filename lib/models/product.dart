part of 'models.dart';

class Product extends Equatable {
  final int id;
  final Fashion fashion;
  final int quantity;
  final int total;
  final List<String> size;
  final List<Color> color;

  Product({
    required this.id,
    required this.fashion,
    required this.quantity,
    required this.total,
    required this.size,
    required this.color,
  });

  Product copyWith({
    required int id,
    required Fashion fashion,
    required int quantity,
    required int total,
    required List<String> size,
    required List<Color> color,
  }) {
    return Product(
        id: id,
        fashion: fashion,
        quantity: quantity,
        total: total,
        size: [],
        color: []);
  }

  @override
  List<Object?> get props => [id, fashion, quantity, total, size];
}

List<Product> products = [
  Product(
    id: 1,
    fashion: mockFashion[1],
    quantity: 5,
    total: (mockFashion[1].price * 10 * 1.1).round() + 50000,
    size: ['S', 'M', 'L', 'XL'],
    color: [Colors.black, Colors.red, Colors.yellow],
  ),
  Product(
    id: 2,
    fashion: mockFashion[2],
    quantity: 8,
    total: (mockFashion[2].price * 10 * 1.1).round() + 50000,
    size: ['S', 'M', 'L', 'XL'],
    color: [Colors.black, Colors.red, Colors.yellow],
  ),
  Product(
    id: 3,
    fashion: mockFashion[3],
    quantity: 2,
    total: (mockFashion[3].price * 10 * 1.1).round() + 50000,
    size: ['S', 'M', 'L', 'XL'],
    color: [Colors.black, Colors.red, Colors.yellow],
  ),
  Product(
    id: 4,
    fashion: mockFashion[4],
    quantity: 5,
    total: (mockFashion[4].price * 10 * 1.1).round() + 50000,
    size: ['S', 'M', 'L', 'XL'],
    color: [Colors.black, Colors.red, Colors.yellow],
  ),
  Product(
    id: 5,
    fashion: mockFashion[5],
    quantity: 10,
    total: (mockFashion[5].price * 10 * 1.1).round() + 50000,
    size: ['S', 'M', 'L', 'XL'],
    color: [Colors.black, Colors.red, Colors.yellow],
  ),
  Product(
    id: 6,
    fashion: mockFashion[6],
    quantity: 6,
    total: (mockFashion[6].price * 10 * 1.1).round() + 50000,
    size: ['S', 'M', 'L', 'XL'],
    color: [Colors.black, Colors.red, Colors.yellow],
  ),
  Product(
    id: 7,
    fashion: mockFashion[7],
    quantity: 4,
    total: (mockFashion[7].price * 10 * 1.1).round() + 50000,
    size: ['S', 'M', 'L', 'XL'],
    color: [Colors.black, Colors.red, Colors.yellow],
  ),
  Product(
    id: 8,
    fashion: mockFashion[8],
    quantity: 2,
    total: (mockFashion[8].price * 10 * 1.1).round() + 50000,
    size: ['S', 'M', 'L', 'XL'],
    color: [Colors.black, Colors.red, Colors.yellow],
  ),
  Product(
    id: 9,
    fashion: mockFashion[9],
    quantity: 9,
    total: (mockFashion[9].price * 10 * 1.1).round() + 50000,
    size: ['S', 'M', 'L', 'XL'],
    color: [Colors.black, Colors.red, Colors.yellow],
  )
];
