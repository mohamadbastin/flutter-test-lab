import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Commonsheet extends StatefulWidget {
  const Commonsheet({Key? key, this.height, this.child}) : super(key: key);

  final double? height;
  final Widget? child;

  @override
  _CommonsheetState createState() => _CommonsheetState();
}

class _CommonsheetState extends State<Commonsheet> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
            ),
            onClosing: () {},
            backgroundColor: const Color(0xFFFFF0C0),
            builder: (context) => SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: widget.height,
                  child: widget.child,
                ))
      ],
    );
  }
}


class _FauliDefaultPic extends StatelessWidget {
  const _FauliDefaultPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/illustrations/fauli_default.svg",
      height: MediaQuery.of(context).size.height * 0.5,
    );
  }
}