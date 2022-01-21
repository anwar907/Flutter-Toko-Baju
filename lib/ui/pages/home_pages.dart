part of 'pages.dart';

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  List<int> _cartList = <int>[];
  String jmlCard = '';
  final ImagePicker _imagePicker = ImagePicker();
  var _image;
  Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  @override
  void initState() {
    cardValue();
    loadImage();

    super.initState();
  }

  void cardValue() async {
    SharedPreferences sharedPreferences = await _pref;
    var data = sharedPreferences.getString('keranjang');

    setState(() {
      if (data == null) {
        data = '';
      } else {
        jmlCard = data;
      }
    });
  }

  Future _pickImage(ImageSource source) async {
    SharedPreferences sharedPreferences = await _pref;
    final pickFile = await _imagePicker.pickImage(source: source);
    if (pickFile == null) {
      return;
    }

    if (Platform.isAndroid) {
      setState(() {
        _image = pickFile.path;
      });
      sharedPreferences.setString('image', _image);
    }
  }

  loadImage() async {
    SharedPreferences sharedPreferences = await _pref;
    setState(() {
      _image = sharedPreferences.getString('image');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  color: ColorPlate().lightBlue,
                  width: double.infinity,
                  child: ListTile(
                      leading: GestureDetector(
                          onTap: () {
                            _pickImage(ImageSource.gallery);
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: _image != null
                                ? Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: FileImage(File(_image)))))
                                : Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/btn_add.png',
                                            ))),
                                  ),
                          )),
                      title: Text(
                        "Hi,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      subtitle: Text(
                        "Find your Favorite Items",
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: CustomCart(
                        value: jmlCard,
                        resultValue: _cartList,
                      ))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ColorPlate().whiteGrey,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white)),
                    child: ListTile(
                      title: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0.0),
                            border: InputBorder.none,
                            hintText: 'Search'),
                      ),
                      leading: Icon(
                        Icons.search,
                        color: ColorPlate().grey,
                        size: 30,
                      ),
                    )),
              ),
              SubTitle(
                leftTitle: "Categories",
                rightTitle: "See All",
              ),
              FutureBuilder<List<Kategori>>(
                  future: Reposisotry().fetchDataCategory(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.done) {
                      if (snapshot.hasData) {
                        return Container(
                            height: 100,
                            width: double.infinity,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: snapshot.data
                                  .map((e) => Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ListCategory(category: e),
                                      ))
                                  .toList(),
                            ));
                      } else {
                        return Text("Failed load data!");
                      }
                    } else {
                      return Icon(Icons.network_check);
                    }
                  }),
              SubTitle(
                leftTitle: "New Fashioin",
                rightTitle: "See All",
              ),
              FutureBuilder<List<DataProduct>>(
                  future: Reposisotry().getDataNewFashion(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.done) {
                      if (snapshot.hasData) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            color: Colors.transparent,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              padding: EdgeInsets.all(8),
                              children: snapshot.data
                                  .map(
                                    (e) => GestureDetector(
                                        onTap: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (BuildContext
                                                          context) =>
                                                      DetailPages(product: e)));
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: FashionCard(product: e),
                                        )),
                                  )
                                  .toList(),
                            ));
                      } else {
                        return Text("Failed load data!");
                      }
                    } else {
                      return Center(
                        child: Icon(Icons.network_check),
                      );
                    }
                  }),
              SubTitle(
                leftTitle: "Hot Sales",
                rightTitle: "See All",
              ),
              FutureBuilder<List<DataProduct>>(
                  future: Reposisotry().getDataHotSales(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.done) {
                      if (snapshot.hasData) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            color: Colors.transparent,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              padding: EdgeInsets.all(8),
                              children: snapshot.data
                                  .map(
                                    (e) => GestureDetector(
                                        onTap: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (BuildContext
                                                          context) =>
                                                      DetailPages(product: e)));
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: FashionCard(product: e),
                                        )),
                                  )
                                  .toList(),
                            ));
                      } else {
                        return Text("Failed load data!");
                      }
                    } else {
                      return Center(child: Icon(Icons.network_check));
                    }
                  }),
            ],
          )
        ],
      ),
    );
  }
}
