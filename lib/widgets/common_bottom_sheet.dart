import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CBS extends BottomSheet {
  const CBS({Key? key, required this.builder, required this.onClosing})
      : super(
            key: key,
            builder: builder,
            onClosing: onClosing,
            backgroundColor: const Color(0xFFFFF0C0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
            ));
  final VoidCallback onClosing;
  final WidgetBuilder builder;
}

class CommonBottomSheet extends StatefulWidget {
  const CommonBottomSheet({Key? key, this.height, this.child})
      : super(key: key);

  final double? height;
  final Widget? child;

  @override
  _CommonBottomSheetState createState() => _CommonBottomSheetState();
}

class _CommonBottomSheetState extends State<CommonBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        ),
        onClosing: () {},
        backgroundColor: const Color(0xFFFFF0C0),
        builder: (context) => SizedBox(
              width: MediaQuery.of(context).size.width,
              height: widget.height,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 40, bottom: 10),
                  child: SizedBox(
                    child: widget.child,
                    // height:
                    //     widget.height != null ? widget.height! - 40 : null,
                    // width: MediaQuery.of(context).size.width - 30,
                  ),
                ),
              ),
            ));
  }
}

class CommonsheetWithFauli extends StatefulWidget {
  const CommonsheetWithFauli({Key? key, this.height, this.child})
      : super(key: key);

  final double? height;
  final Widget? child;

  @override
  _CommonsheetWithFauliState createState() => _CommonsheetWithFauliState();
}

class _CommonsheetWithFauliState extends State<CommonsheetWithFauli> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      alignment: AlignmentDirectional.topCenter,
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
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 40, bottom: 10),
                      child: SizedBox(
                        child: widget.child,
                        // height:
                        //     widget.height != null ? widget.height! - 40 : null,
                        // width: MediaQuery.of(context).size.width - 30,
                      ),
                    ),
                  ),
                )),
        const Positioned(top: -240, child: _FauliDefaultPic())
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
      height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}
