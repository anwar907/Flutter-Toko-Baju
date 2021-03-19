part of 'pages.dart';

class DetailPages extends StatefulWidget {
  final Product product;
  DetailPages({
    required this.product,
  });
  @override
  _DetailPagesState createState() => _DetailPagesState();
}

class _DetailPagesState extends State<DetailPages> {
  int quantity = 1;
  List<Fashion> favFashion = [];

  @override
  void initState() {
    super.initState();
    Fesion();
  }

  void Fesion() {
    var list = favFashion;

    setState(() {
      favFashion = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    var string = '\u{1D11E}';
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xFFf7efef),
          ),
          SafeArea(
              child: Container(
            color: Color(0xFFf7efef),
          )),
          SafeArea(
              child: Container(
                  height: 250,
                  color: Colors.transparent,
                  width: double.infinity,
                  child: Image.asset(widget.product.fashion.picturePath))),
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
                        color: Color(0xFFf7efef),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.product.fashion.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        RatingStarts(rate: widget.product.fashion.rate)
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xFFf7efef),
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Text(
                      widget.product.fashion.description,
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
                          Text(
                            "${(widget.product.size)}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Color Items",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 4, 0, 41),
                              height: 30,
                              width: double.infinity,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: widget.product.color
                                    .map((e) => Container(
                                            child: GestureDetector(
                                          child: Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                        color: e,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                  )
                                                ],
                                              )),
                                        )))
                                    .toList(),
                              )),
                          Row(
                            children: [
                              Text(
                                "Qty ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    quantity = max(1, quantity - 1);
                                  });
                                },
                                child: Container(
                                  width: 26,
                                  height: 26,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(width: 1),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/btn_min.png"))),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                                child: Text(quantity.toString(),
                                    textAlign: TextAlign.center),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    quantity = min(999, quantity + 1);
                                  });
                                },
                                child: Container(
                                  width: 26,
                                  height: 26,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(width: 1),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/btn_add.png"))),
                                ),
                              ),
                              Spacer(),
                              Text(
                                NumberFormat.currency(
                                        locale: 'id-ID',
                                        symbol: 'IDR ',
                                        decimalDigits: 0)
                                    .format(quantity *
                                        widget.product.fashion.price),
                              )
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 8),
                            decoration: BoxDecoration(
                                color: Colors.pink,
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
                              onPressed: () {},
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
                      Navigator.of(context).pop();
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
                          onTap: () {},
                          child: Icon(Icons.favorite_border),
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
