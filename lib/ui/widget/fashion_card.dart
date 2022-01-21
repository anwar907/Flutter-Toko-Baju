part of 'widget.dart';

class FashionCard extends StatefulWidget {
  final DataProduct product;
  const FashionCard({Key key, this.product}) : super(key: key);

  @override
  _FashionCardState createState() => _FashionCardState();
}

class _FashionCardState extends State<FashionCard> {
  int like = 0;
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(spreadRadius: 1, blurRadius: 10, color: Colors.black12)
            ]),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      image: DecorationImage(
                          image: NetworkImage(widget.product.image)),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: GestureDetector(
                          key: Key(''),
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
                              : Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                )))),
                )
              ],
            ),
            Container(
              child: Column(
                children: [
                  Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.only(
                            bottomStart: Radius.circular(10),
                            bottomEnd: Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                              child: RichText(
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                      text: widget.product.title,
                                      style: TextStyle(color: Colors.black)))),
                          RatingStarts(
                            rate: widget.product.rating.toDouble(),
                            totalRate: widget.product.ratingCount,
                          ),
                          Text(
                              NumberFormat.currency(
                                      symbol: 'USD ',
                                      decimalDigits: 0,
                                      locale: 'en-US')
                                  .format(widget.product.price),
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[700])),
                        ],
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
