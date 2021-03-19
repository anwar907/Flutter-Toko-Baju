part of 'pages.dart';

class MessagePages extends StatefulWidget {
  @override
  _MessagePagesState createState() => _MessagePagesState();
}

class _MessagePagesState extends State<MessagePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFf7efef),
        appBar: AppBar(
          backgroundColor: Color(0xFFf7efef),
          title: Text(
            'Message',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container());
  }
}
