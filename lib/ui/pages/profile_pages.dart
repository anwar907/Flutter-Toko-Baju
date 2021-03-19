part of 'pages.dart';

class ProfilePages extends StatefulWidget {
  @override
  _ProfilePagesState createState() => _ProfilePagesState();
}

class _ProfilePagesState extends State<ProfilePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFf7efef),
        appBar: AppBar(
          backgroundColor: Color(0xFFf7efef),
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container());
  }
}
