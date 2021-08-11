import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoubleArrowButtonLeft extends StatelessWidget {
  /// Creates an orange double arrow button facing left.
  ///
  /// Either the [height] argument should be specified, or the
  /// widget should be placed in a context that sets tight layout constraints.
  /// Otherwise, the results may not be desireable.
  const DoubleArrowButtonLeft({Key? key, this.size, required this.onPressed})
      : super(key: key);

  final double? size;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SvgPicture.asset(
        "assets/icons/double_arrow_button_left.svg",
        height: size,
      ),
    );
  }
}

class DoubleArrowButtonRight extends StatelessWidget {
  /// Creates an orange double arrow button facing right.
  ///
  /// Either the [height] argument should be specified, or the
  /// widget should be placed in a context that sets tight layout constraints.
  /// Otherwise, the results may not be desireable.
  const DoubleArrowButtonRight({Key? key, this.size, required this.onPressed})
      : super(key: key);

  final double? size;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: RotatedBox(
        quarterTurns: 2,
        child: SvgPicture.asset(
          "assets/icons/double_arrow_button_left.svg",
          height: size,
        ),
      ),
    );
  }
}
