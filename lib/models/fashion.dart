part of 'models.dart';

class Category extends Equatable {
  final String name;
  final String image;
  Category({required this.name, required this.image});

  @override
  // TODO: implement props
  List<Object?> get props => [name, image];
}

List<Category> listCategory = [
  Category(name: "Jaket", image: 'assets/jacket.svg'),
  Category(name: "Jeans", image: 'assets/jeans.svg'),
  Category(name: 'Baju Kaos', image: 'assets/shirt.svg'),
  Category(name: 'Celana Pendek', image: 'assets/shorts.svg'),
  Category(name: 'Baju Kaos', image: 'assets/socks.svg')
];

class Fashion extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final int price;
  final double rate;

  Fashion({
    required this.id,
    required this.picturePath,
    required this.name,
    required this.description,
    required this.price,
    required this.rate,
  });

  @override
  List<Object?> get props => [id, picturePath, name, description, price, rate];
}

List<Fashion> mockFashion = [
  Fashion(
    id: 1,
    picturePath: "assets/jaket.png",
    name: "Jaket Jeans aket Jeans",
    description:
        "Bisa mengirimkan ukuran standar : S, M, L, XL, XXL, XXXL, dll Atau bisa juga mengirimkan berat badan dan tinggi badan serta foto tegap berdiri via chat (foto supaya terlihat postur tubuh saja). admin kami (Kang Asep) Kami sudah mempunyai toko offline (toko fisik) dan sudah mempunyai legalitas perusahaan PD. Maju Jaya, bukan hanya sekedar perantara atau calo, silahkan cek foto profil kami. Hati hati belanja di tempat lain karena sekarang sudah banyak sekali perantara yg tidak bertanggung jawab sehingga pembeli dirugikan.",
    price: 20000,
    rate: 3.5,
  ),
  Fashion(
    id: 2,
    picturePath: "assets/jaket1.png",
    name: "Jaket Levis",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 40000,
    rate: 3.5,
  ),
  Fashion(
    id: 3,
    picturePath: "assets/jaket2.png",
    name: "Jaket Bola",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 10000,
    rate: 3.5,
  ),
  Fashion(
    id: 4,
    picturePath: "assets/jaket3.png",
    name: "Jaket Kulit",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 500000,
    rate: 3.5,
  ),
  Fashion(
    id: 5,
    picturePath: "assets/kaos.png",
    name: "Baju Kaos",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 50000,
    rate: 3.5,
  ),
  Fashion(
    id: 6,
    picturePath: "assets/celana1.png",
    name: "Celana Kain",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 100000,
    rate: 3.5,
  ),
  Fashion(
    id: 7,
    picturePath: "assets/celana.png",
    name: "Celana Levis",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 250000,
    rate: 3.5,
  ),
  Fashion(
    id: 8,
    picturePath: "assets/kemeja.png",
    name: "Baju Kemeja",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 200000,
    rate: 3.5,
  ),
  Fashion(
    id: 9,
    picturePath: "assets/baju1.png",
    name: "Baju Sport",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 150000,
    rate: 3.5,
  ),
  Fashion(
    id: 10,
    picturePath: "assets/baju.png",
    name: "Baju ",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 150000,
    rate: 3.5,
  )
];
