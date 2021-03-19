part of 'widget.dart';

class CustomTabBar extends StatelessWidget {
  final int selectIndex;
  final List<String> title;
  final Function(int) onTap;
  CustomTabBar(
      {required this.title, required this.selectIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 48),
            height: 1,
            color: Color(0xFFc17c7c),
          ),
          Row(
            children: title
                .map((e) => Padding(
                      padding: EdgeInsets.only(left: defaultMargin),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              onTap(title.indexOf(e));
                            },
                            child: Text(e,
                                style: (title.indexOf(e) == selectIndex)
                                    ? TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)
                                    : TextStyle(color: greyColor)),
                          ),
                          Container(
                            width: 40,
                            height: 3,
                            margin: EdgeInsets.only(top: 13),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.5),
                                color: (title.indexOf(e) == selectIndex)
                                    ? Color(0xFF020202)
                                    : Colors.transparent),
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
