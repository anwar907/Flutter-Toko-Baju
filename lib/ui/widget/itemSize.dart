part of 'widget.dart';

class ItemSize extends StatelessWidget {
  final int id;

  const ItemSize({required Key key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          Text(
            "Color",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                height: 25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products[id].color.length,
                  itemBuilder: (ctx, i) {
                    return Container(
                      width: 75,
                      margin: const EdgeInsets.symmetric(horizontal: 15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: products[id].color[i],
                          border: Border.all(color: Colors.white, width: 5.0)),
                    );
                  },
                ),
              ),
            ],
          ),
          Spacer(),
          Text("Item Size:"),
          Container(
              margin: const EdgeInsets.only(top: 7.5),
              height: 35,
              child: SizeSelector(id: id)),
        ],
      ),
    );
  }
}
