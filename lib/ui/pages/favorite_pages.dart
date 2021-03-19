part of 'pages.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFf7efef),
        appBar: AppBar(
          backgroundColor: Color(0xFFf7efef),
          title: Text(
            'Favorite',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container());
  }
}
