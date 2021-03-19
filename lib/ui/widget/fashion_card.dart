part of 'widget.dart';

class FashionCard extends StatelessWidget {
  final Fashion fashion;

  FashionCard({required this.fashion});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(spreadRadius: 1, blurRadius: 10, color: Colors.black12)
            ]),
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadiusDirectional.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(fashion.picturePath),
                      fit: BoxFit.cover)),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.only(
                          bottomStart: Radius.circular(10),
                          bottomEnd: Radius.circular(10)),
                    ),
                    child: ListTile(
                      trailing: Icon(Icons.favorite),
                      title: Text(
                        fashion.name,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          NumberFormat.currency(
                                  symbol: 'IDR',
                                  decimalDigits: 0,
                                  locale: 'id-ID')
                              .format(fashion.price),
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[700])),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
