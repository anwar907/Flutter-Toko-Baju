part of 'pages.dart';

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7efef),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xFFf7efef),
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://saweria-space.sgp1.cdn.digitaloceanspaces.com/prd/pp/856b207a-3cf6-4613-8bc5-d2ab1b7cef16-0a556e12-594b-43dd-8eea-f89011b6027f.jpg",
                                    scale: 50))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Icon(Icons.shopping_cart),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Fashion Shop",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text("Get popular fashion from here"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white)),
                    child: ListTile(
                        title: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Search'),
                        ),
                        leading: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 35,
                        ),
                        trailing: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.sort,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Categories",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(color: Color(0xFFec5252)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(8.0),
                  height: 120,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: listCategory
                        .map((e) => Padding(
                            padding: EdgeInsets.all(8),
                            child: ListCategory(category: e)))
                        .toList(),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Fashion",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(color: Color(0xFFec5252)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  color: Colors.transparent,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    shrinkWrap: true,
                    mainAxisSpacing: 20,
                    padding: EdgeInsets.all(8),
                    children: mockFashion
                        .map(
                          (e) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            DetailPages(
                                                product: Product(
                                                    id: 1,
                                                    fashion: e,
                                                    quantity: 2,
                                                    total: 5000,
                                                    size: [
                                                  'S',
                                                  'M',
                                                  'L',
                                                  'XL'
                                                ],
                                                    color: [
                                                  Colors.black,
                                                  Colors.red,
                                                  Colors.white,
                                                  Colors.pink
                                                ]))));
                              },
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: FashionCard(fashion: e),
                              )),
                        )
                        .toList(),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
