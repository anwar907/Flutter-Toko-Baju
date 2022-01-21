part of 'widget.dart';

class RatingStarts extends StatelessWidget {
  final double rate;
  final int totalRate;
  RatingStarts({this.rate, this.totalRate});

  @override
  Widget build(BuildContext context) {
    int numberOfStar = rate.round();
    return Row(
      children: List<Widget>.generate(
              1,
              (index) => Icon(
                    (index < numberOfStar) ? Icons.star : Icons.star_border,
                    size: 16,
                    color: Colors.yellow,
                  )) +
          [
            SizedBox(
              width: 4,
            ),
            Text(rate.toString()),
            Text("($totalRate)")
          ],
    );
  }
}
