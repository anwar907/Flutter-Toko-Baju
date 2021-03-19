part of 'pages.dart';

class MainPage extends StatefulWidget {
  final int initialPage;
  MainPage({this.initialPage = 0});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();

    selectPage = widget.initialPage;
    pageController = PageController(initialPage: widget.initialPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
              child: Container(
            color: Color(0xFFFAFAFC),
          )),
          SafeArea(
              child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                selectPage = index;
              });
            },
            children: [
              Center(
                child: HomePages(),
              ),
              Center(
                child: Favorite(),
              ),
              Center(child: MessagePages()),
              Center(child: ProfilePages())
            ],
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomButtomNavBar(
              selectedIndex: selectPage,
              onTap: (index) {
                setState(() {
                  selectPage = index;
                });
                pageController.jumpToPage(selectPage);
              },
            ),
          )
        ],
      ),
    );
  }
}
