part of 'pages.dart';

class DetailPages extends StatefulWidget {
  final DataProduct product;
  DetailPages({
    this.product,
  });
  @override
  _DetailPagesState createState() => _DetailPagesState();
}

class _DetailPagesState extends State<DetailPages> {
  int like = 0;
  String codeWarna, sizeItem, namaGambar;
  List<String> colorItems = [];
  int favFashion = 0;
  List<bool> selected = [false, false, false];
  Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  Future<Null> getData() async {
    final SharedPreferences preferences = await _pref;
    int data = int.parse((preferences.getString('keranjang') ?? 0.toString()));

    this.setState(() {
      if (data == null) {
        data = 0;
      } else {
        favFashion = data;
      }
    });
  }

  Future<Null> incrementCart() async {
    final SharedPreferences pref = await _pref;
    setState(() {
      favFashion = favFashion + 1;
      pref.setString('keranjang', favFashion.toString());
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xFFB9F5FF),
          ),
          SafeArea(
              child: Container(
            color: Color(0xFFFFFFFF),
          )),
          SafeArea(
              child: Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: NetworkImage(namaGambar == null
                        ? widget.product.image
                        : namaGambar))),
          )),
          SafeArea(
              child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 200),
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                    decoration: BoxDecoration(
                        color: Color(0xFFB9F5FF),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.product.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        RatingStarts(
                          rate: widget.product.rating.toDouble(),
                          totalRate: widget.product.ratingCount,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Color(0xFFB9F5FF),
                        spreadRadius: 15.0,
                        blurRadius: 20,
                      )
                    ]),
                    child: Text(
                      widget.product.description,
                      maxLines: 9,
                    ),
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Item Size",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ToggleButtons(
                            borderColor: Colors.transparent,
                            renderBorder: false,
                            disabledBorderColor: Colors.transparent,
                            constraints:
                                BoxConstraints(maxHeight: 30.0, maxWidth: 30.0),
                            children: widget.product.sizeOptions
                                .map((e) => SizeButton(e, 'FFFFFF'))
                                .toList(),
                            isSelected: selected,
                            onPressed: (int value) {
                              setState(() {
                                for (int index = 0;
                                    index < selected.length;
                                    index++) {
                                  if (index == value) {
                                    selected[index] = true;
                                  } else {
                                    selected[index] = false;
                                  }
                                }
                              });
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Color Items",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                              height: 30,
                              width: double.infinity,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      widget.product.peroductOptions.length,
                                  itemBuilder: (context, index) {
                                    codeWarna = widget
                                        .product.peroductOptions[index].color;
                                    String warna = '0xFF$codeWarna';
                                    return Radio(
                                        value: widget.product
                                            .peroductOptions[index].image,
                                        fillColor: MaterialStateProperty.all(
                                            Color(int.parse(warna))),
                                        groupValue: widget.product
                                            .peroductOptions[index].color,
                                        onChanged: (data) {
                                          setState(() {
                                            namaGambar = data;
                                            colorItems.add(namaGambar);
                                          });
                                        });
                                  })),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              NumberFormat.currency(
                                      locale: 'en-US',
                                      symbol: 'USD ',
                                      decimalDigits: 0)
                                  .format(widget.product.price),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xFF2786E4),
                                borderRadius: BorderRadius.circular(25)),
                            child: ElevatedButton.icon(
                              icon: Icon(Icons.shopping_cart_outlined),
                              style: ButtonStyle(
                                shadowColor: MaterialStateProperty.all<Color>(
                                    Colors.transparent),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.transparent),
                              ),
                              onPressed: () {
                                incrementCart();
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePages()));
                              },
                              label: Text("Add to chart"),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePages()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(3),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(8)),
                      child: Image.asset('assets/back_arrow_white.png'),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.all(3),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (like == 0) {
                                like += 1;
                              } else {
                                like -= 1;
                              }
                            });
                          },
                          child: (like == 1
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : Icon(Icons.favorite_border)),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
