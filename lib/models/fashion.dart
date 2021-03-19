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
    picturePath:
        "https://img2.pngdownload.id/20180703/ek/kisspng-hoodie-leather-jacket-classy-5b3b46ddd9c7f3.247386361530611421892.jpg",
    name: "Jaket Jeans aket Jeans",
    description:
        "Bisa mengirimkan ukuran standar : S, M, L, XL, XXL, XXXL, dll Atau bisa juga mengirimkan berat badan dan tinggi badan serta foto tegap berdiri via chat (foto supaya terlihat postur tubuh saja). admin kami (Kang Asep) Kami sudah mempunyai toko offline (toko fisik) dan sudah mempunyai legalitas perusahaan PD. Maju Jaya, bukan hanya sekedar perantara atau calo, silahkan cek foto profil kami. Hati hati belanja di tempat lain karena sekarang sudah banyak sekali perantara yg tidak bertanggung jawab sehingga pembeli dirugikan.",
    price: 20000,
    rate: 3.5,
  ),
  Fashion(
    id: 2,
    picturePath:
        "https://img2.pngdownload.id/20180227/wde/kisspng-jean-jacket-denim-h-m-jeans-women-s-jackets-5a9504ad50a9c0.5054133815197155013304.jpg",
    name: "Jaket Levis",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 40000,
    rate: 3.5,
  ),
  Fashion(
    id: 3,
    picturePath:
        "https://img2.pngdownload.id/20171201/f11/orange-jacket-png-image-5a21b091e9d5c9.6979602715121573299578.jpg",
    name: "Jaket Bola",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 10000,
    rate: 3.5,
  ),
  Fashion(
    id: 4,
    picturePath:
        "https://img2.pngdownload.id/20171201/7b9/leather-jacket-png-image-5a21aff20782d1.0227538915121571700308.jpg",
    name: "Jaket Kulit",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 500000,
    rate: 3.5,
  ),
  Fashion(
    id: 5,
    picturePath:
        "https://img2.pngdownload.id/20180208/paw/kisspng-t-shirt-clothing-clothes-hanger-vector-yellow-jacket-hanging-5a7d160520e754.6644531815181470771348.jpg",
    name: "Baju Kaos",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 50000,
    rate: 3.5,
  ),
  Fashion(
    id: 6,
    picturePath:
        "https://img2.pngdownload.id/20180501/zhe/kisspng-pants-polo-shirt-chino-cloth-jeans-pocket-trousers-5ae928b25f6d23.8360973915252297463909.jpg",
    name: "Celana Kain",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 100000,
    rate: 3.5,
  ),
  Fashion(
    id: 7,
    picturePath:
        "https://img2.pngdownload.id/20171218/882/men-s-jeans-png-image-5a387658387590.0344736015136497522313.jpg",
    name: "Celana Levis",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 250000,
    rate: 3.5,
  ),
  Fashion(
    id: 8,
    picturePath:
        "https://img2.pngdownload.id/20180401/akq/kisspng-t-shirt-dress-shirt-collar-cuff-white-collar-5ac09ce88f3fb8.3663929215225725205868.jpg",
    name: "Baju Kemeja",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 200000,
    rate: 3.5,
  ),
  Fashion(
    id: 9,
    picturePath:
        "https://img2.pngdownload.id/20180505/rpw/kisspng-t-shirt-polo-shirt-clothing-sleeve-jersey-contact-military-posture-5aed3dd8208117.9857472715254973041331.jpg",
    name: "Baju Sport",
    description: "jaket jeans hangat untuk digunakan perjalanan jauh",
    price: 150000,
    rate: 3.5,
  )
];
