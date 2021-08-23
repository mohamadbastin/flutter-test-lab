import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomGridView extends StatefulWidget {
  const BottomGridView({Key? key}) : super(key: key);

  @override
  _BottomGridViewState createState() => _BottomGridViewState();
}

class _BottomGridViewState extends State<BottomGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      shrinkWrap: true,
      childAspectRatio: 2,
      children: const [
        BottomGridViewItem(topText: "Natur", color: Colors.green, percent: 0.4),
        BottomGridViewItem(
            topText: "Theater", color: Colors.orange, percent: 0.6),
        BottomGridViewItem(
            topText: "Yoga", color: Colors.lightBlue, percent: 0.8),
        BottomGridViewItem(topText: "Kunst", color: Colors.red, percent: 0.6),
        BottomGridViewItem(topText: "Tanz", color: Colors.blue, percent: 0.2),
        BottomGridViewItem(
            topText: "Musik", color: Colors.yellow, percent: 0.8),
      ],
    );
  }
}

class BottomGridViewItem extends StatefulWidget {
  const BottomGridViewItem(
      {Key? key,
      required this.topText,
      required this.color,
      required this.percent})
      : super(key: key);

  final String topText;
  final Color color;
  final double percent;

  @override
  _BottomGridViewItemState createState() => _BottomGridViewItemState();
}

class _BottomGridViewItemState extends State<BottomGridViewItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        // BoxDecoration(
        //     color: Colors.white, borderRadius: BorderRadius.circular(20)),
        // width: MediaQuery.of(context).size.width * 0.3,
        // height: MediaQuery.of(context).size.width * 0.3,
        // margin: EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
          child: Center(
            child: SizedBox(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      widget.topText,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    // width: 30,
                    child: Container(
                      // color: Colors.red,
                      child: LinearPercentIndicator(
                        backgroundColor: Colors.black,
                        // fillColor: Colors.red,
                        percent: widget.percent,
                        lineHeight: 10,
                        progressColor: widget.color,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
