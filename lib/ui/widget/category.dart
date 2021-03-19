part of 'widget.dart';

class ListCategory extends StatelessWidget {
  final Category category;
  ListCategory({required this.category});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        width: 100,
        height: 110,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              category.image,
              width: 50,
              height: 50,
            ),
            SizedBox(
              height: 5,
            ),
            Text(category.name),
          ],
        ),
      ),
    );
  }
}
