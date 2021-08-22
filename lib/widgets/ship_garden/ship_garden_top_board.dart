import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShipGardenTopBoard extends StatefulWidget {
  const ShipGardenTopBoard({Key? key, required this.builder}) : super(key: key);

  final WidgetBuilder builder;

  @override
  _ShipGardenTopBoardState createState() => _ShipGardenTopBoardState();
}

class _ShipGardenTopBoardState extends State<ShipGardenTopBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Stack(
        // fit: StackFit.loose,
        // overflow: Overflow.clip,
        alignment: AlignmentDirectional.center,
        children: [
          const Center(child: _DialogContainerHorizontalSmall()),
          DefaultTextStyle(
            style: const TextStyle(
                decoration: TextDecoration.none, color: Colors.black),
            child: Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Builder(
                  builder: widget.builder,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DialogContainerHorizontalSmall extends StatelessWidget {
  /// Statistik container.
  const _DialogContainerHorizontalSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/containers/horizontal_small.svg",
      width: MediaQuery.of(context).size.width,
    );
  }
}
