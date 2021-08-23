import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlantGridView extends StatefulWidget {
  const PlantGridView({Key? key}) : super(key: key);

  @override
  _PlantGridViewState createState() => _PlantGridViewState();
}

class _PlantGridViewState extends State<PlantGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      shrinkWrap: true,
      children: [
        PlantGridViewItem(
            pic: SvgPicture.asset("assets/icons/flower pot 1.svg"),
            bottomText: "Noch nicht entdeckt",
            topText: "???"),
        PlantGridViewItem(
            pic: SvgPicture.asset("assets/icons/flower pot 2.svg"),
            bottomText: "Noch nicht entdeckt",
            topText: "???"),
        PlantGridViewItem(
            pic: SvgPicture.asset("assets/icons/flower pot 3.svg"),
            bottomText: "Noch nicht gefunden",
            topText: "???"),
        PlantGridViewItem(
            pic: SvgPicture.asset("assets/icons/flower pot 4.svg"),
            bottomText: "Noch nicht gefunden",
            topText: "???")
      ],
    );
  }
}

class PlantGridViewItem extends StatefulWidget {
  const PlantGridViewItem(
      {Key? key,
      required this.pic,
      required this.bottomText,
      required this.topText})
      : super(key: key);

  final SvgPicture? pic;
  final String bottomText;
  final String topText;

  @override
  _PlantGridViewItemState createState() => _PlantGridViewItemState();
}

class _PlantGridViewItemState extends State<PlantGridViewItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      // BoxDecoration(
      //     color: Colors.white, borderRadius: BorderRadius.circular(20)),
      // width: MediaQuery.of(context).size.width * 0.3,
      // height: MediaQuery.of(context).size.width * 0.3,
      // margin: EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.topText),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                child: widget.pic,
              ),
              Text(widget.bottomText)
            ],
          ),
        ),
      ),
    );
  }
}
