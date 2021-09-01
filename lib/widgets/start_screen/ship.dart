import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShipPicture extends StatelessWidget {
  const ShipPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/ship.svg');
  }
}