import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_lab/widgets/ship_garden/ship_garden_appbar.dart';
import 'package:test_lab/widgets/ship_garden/ship_garden_top_board.dart';

class ShipGardenScreen extends StatefulWidget {
  const ShipGardenScreen({Key? key}) : super(key: key);

  @override
  _ShipGardenScreenState createState() => _ShipGardenScreenState();
}

class _ShipGardenScreenState extends State<ShipGardenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ShipGardenAppBar(),
        // backgroundColor: Colors.lightBlue[300],
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue[300],
                  image: const DecorationImage(
                      image: AssetImage("assets/backgrounds/ice_island.png"),
                      fit: BoxFit.fill)),
              child: Container(),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  ShipGardenTopBoard(
                    builder: (BuildContext buildContext) => Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        TopBoardItem(
                            picture: ShellIcon(),
                            topText: "2 von 12",
                            bottomText: "Muscheln"),
                        TopBoardItem(
                            picture: TreasureMapIcon(),
                            topText: "1 von 4",
                            bottomText: "Insein entdeckt"),
                        TopBoardItem(
                            picture: TimeIcon(),
                            topText: "2 Stunden",
                            bottomText: "Zeit fur dich")
                      ],
                    )),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric( horizontal: 20),
                      child: Text(
                        "SCHIFFSGARTEN",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class TopBoardItem extends StatefulWidget {
  const TopBoardItem(
      {Key? key,
      required this.picture,
      required this.topText,
      required this.bottomText})
      : super(key: key);

  final Widget picture;
  final String topText;
  final String bottomText;

  @override
  _TopBoardItemState createState() => _TopBoardItemState();
}

class _TopBoardItemState extends State<TopBoardItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          child: widget.picture,
        ),
        Text(
          widget.topText,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text(
          widget.bottomText,
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
  }
}

class TimeIcon extends StatelessWidget {
  const TimeIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/time_2.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class TreasureMapIcon extends StatelessWidget {
  const TreasureMapIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/treasure_map.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class ShellIcon extends StatelessWidget {
  const ShellIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/shell_popover.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}
