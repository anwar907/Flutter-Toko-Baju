part of 'widget.dart';

class SubTitle extends StatelessWidget {
  final String leftTitle;
  final String rightTitle;
  SubTitle({this.leftTitle, this.rightTitle});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftTitle,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: ColorPlate().grey),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              rightTitle,
              style: TextStyle(color: ColorPlate().yellow),
            ),
          )
        ],
      ),
    );
  }
}
