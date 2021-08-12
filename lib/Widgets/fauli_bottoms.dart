import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FauliBottomDefault extends _FauliBottomBase {
  /// The default fauli bottom.
  /// It is possible to assign this widget to the bottom nav bar.
  const FauliBottomDefault({Key? key})
      : super(key: key, pic: const _FauliDefaultPic(), ratio: 3.36);
}

class FauliBottomDefaultEyesClosed extends _FauliBottomBase {
  /// The default fauili bottom but faulis eyes are closed.
  /// It is possible to assign this widget to the bottom nav bar.
  const FauliBottomDefaultEyesClosed({Key? key})
      : super(key: key, pic: const _FauliDefaultEyesClosedPic(), ratio: 3.36);
}

class FauliBottomHandUp extends _FauliBottomBase {
  /// The fauli bottom where faulis hand is up.
  /// It is possible to assign this widget to the bottom nav bar.
  const FauliBottomHandUp({Key? key})
      : super(key: key, pic: const _FauliHandUpPic(), ratio: 2.6);
}

class _FauliBottomBase extends StatelessWidget {
  const _FauliBottomBase({Key? key, required this.pic, required this.ratio})
      : super(key: key);
  final Widget? pic;
  final num ratio;

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.height);
    return SizedBox(
      height: MediaQuery.of(context).size.height / ratio,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.07,
              child: const DecoratedBox(
                decoration: BoxDecoration(color: Color(0xffB4731C)),
                child: Text(""),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / -17.5,
            child: SizedBox(
              child: pic,
            ),
          ),
        ],
      ),
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

class _FauliHandUpPic extends StatelessWidget {
  const _FauliHandUpPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/illustrations/fauli_hand_up.svg",
      height: MediaQuery.of(context).size.height * 0.5,
    );
  }
}

class _FauliDefaultEyesClosedPic extends StatelessWidget {
  const _FauliDefaultEyesClosedPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/illustrations/fauli_default_eyes_closed.svg",
      height: MediaQuery.of(context).size.height * 0.5,
    );
  }
}
