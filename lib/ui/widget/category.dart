part of 'widget.dart';

class ListCategory extends StatelessWidget {
  final Kategori category;
  ListCategory({this.category});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(category.image, scale: 3.0)),
              color: ColorPlate().blueColor),
        ),
        Center(
          child: Text(category.title),
        )
      ],
    );
  }
}
