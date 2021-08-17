import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_lab/assets/assets.dart';

enum DialogContainerBackground {
  /// Aufgabe Beenden container.
  dialogContainerSquare,

  /// Statistik container.
  dialogContainerHorizontalSmall,

  /// Onboarding container.
  dialogContainerHorizontalBig,

  /// 2 container.
  dialogContainerVerticalSize1,

  /// PopOver container.
  dialogContainerVerticalSize2,

  /// schatzkarte container.
  dialogContainerVerticalSize3,

  /// Tagebuch container.
  dialogContainerVerticalSize4,
}

enum DialogHeader {
  /// Default Fauli Header
  fauliDefault,

  /// Waterdrop Header
  waterdrop,

  /// Shell Header
  shell,

  /// Storm Header
  storm,

  /// Mountain Island
  mountainIsland,

  /// Mountain Seed
  mountainSeed,

  /// Ice Island
  iceIsland,

  /// Ice Seed
  iceSeed,

  /// Jungle Island
  jungleIslnad,

  /// Jungle Seed
  jungleSeed,

  /// Underwater Island
  underwaterIslnad,

  /// Underwater Seed
  underwaterSeed
}

_backgroundHelper(DialogContainerBackground dcb) {
  switch (dcb) {
    case DialogContainerBackground.dialogContainerSquare:
      return const _DialogContainerSquare();
    case DialogContainerBackground.dialogContainerHorizontalSmall:
      return const _DialogContainerHorizontalSmall();
    case DialogContainerBackground.dialogContainerHorizontalBig:
      return const _DialogContainerHorizontalBig();
    case DialogContainerBackground.dialogContainerVerticalSize1:
      return const _DialogContainerVerticalSize1();
    case DialogContainerBackground.dialogContainerVerticalSize2:
      return const _DialogContainerVerticalSize2();
    case DialogContainerBackground.dialogContainerVerticalSize3:
      return const _DialogContainerVerticalSize3();
    case DialogContainerBackground.dialogContainerVerticalSize4:
      return const _DialogContainerVerticalSize4();
  }
}

_headerHelper(DialogHeader dh, context) {
  switch (dh) {
    case DialogHeader.fauliDefault:
      return Positioned(
        top: -205,
        child: Center(
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: const FauliDefaultPic()),
        ),
      );
    case DialogHeader.waterdrop:
      return Positioned(
        top: -110,
        child: Center(
          child: Transform.translate(
            offset: const Offset(15, 0),
            child: Transform.rotate(
              angle: 0.6,
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.29,
                  child: const WaterDrop()),
            ),
          ),
        ),
      );
    case DialogHeader.shell:
      return const Positioned(
        top: -80,
        child: Center(
          child: ShellPopOver(
            relativeHeight: 0.25,
          ),
        ),
      );
    case DialogHeader.storm:
      return Positioned(
        top: -150,
        child: Center(
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: const Storm()),
        ),
      );
    case DialogHeader.mountainIsland:
      return Positioned(
        top: -170,
        child: Center(
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: const MountainIsland()),
        ),
      );
    case DialogHeader.mountainSeed:
      return Positioned(
        top: -140,
        child: Center(
          child: Transform.translate(
            offset: const Offset(10, 0),
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: const SeedMountain()),
          ),
        ),
      );
    case DialogHeader.iceIsland:
      return Positioned(
        top: -170,
        child: Center(
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: const IceIsland()),
        ),
      );
    case DialogHeader.iceSeed:
      return Positioned(
        top: -140,
        child: Center(
          child: Transform.translate(
            offset: const Offset(15, 0),
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: const SeedIce()),
          ),
        ),
      );
    case DialogHeader.jungleIslnad:
      return Positioned(
        top: -170,
        child: Center(
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: const JungleIsland()),
        ),
      );
    case DialogHeader.jungleSeed:
      return Positioned(
        top: -140,
        child: Center(
          child: Transform.translate(
            offset: const Offset(15, 0),
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: const SeedJungle()),
          ),
        ),
      );
    case DialogHeader.underwaterIslnad:
      return Positioned(
        top: -170,
        child: Center(
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: const UnderwaterIsland()),
        ),
      );
    case DialogHeader.underwaterSeed:
      return Positioned(
        top: -140,
        child: Center(
          child: Transform.translate(
            offset: const Offset(15, 0),
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: const SeedUnderwater()),
          ),
        ),
      );
  }
}

Future<T?> showCommonDialog<T>({
  required BuildContext context,
  required DialogContainerBackground background,
  required WidgetBuilder builder,
  DialogHeader? header,
  bool barrierDismissible = true,
  bool removeBarrier = false,
  Color? barrierColor = Colors.black54,
  String? barrierLabel,
  bool useSafeArea = true,
  bool useRootNavigator = true,
  RouteSettings? routeSettings,
}) {
  // print(MediaQuery.of(context).size.width);
  return showDialog(
      context: context,
      builder: (BuildContext buildContext) => Center(
            child: SizedBox(
              // height: 600,
              // width: 400,
              child: Stack(
                alignment: AlignmentDirectional.center,
                overflow: Overflow.visible,
                children: [
                  Stack(
                    fit: StackFit.loose,
                    overflow: Overflow.clip,
                    alignment: AlignmentDirectional.center,
                    children: [
                      _backgroundHelper(background),
                      DefaultTextStyle(
                        style: const TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black),
                        child: Positioned.fill(
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Builder(
                              builder: builder,
                            ),
                          ),
                        ),
                      ),
                      // Center(child: Container())
                    ],
                  ),
                  header != null ? _headerHelper(header, context) : Container()
                ],
              ),
            ),
          ),
      barrierColor: removeBarrier ? Colors.white.withOpacity(0) : barrierColor,
      barrierDismissible: barrierDismissible,
      barrierLabel: barrierLabel,
      useRootNavigator: useRootNavigator,
      useSafeArea: useSafeArea,
      routeSettings: routeSettings);
}

class _DialogContainerHorizontalSmall extends StatelessWidget {
  /// Statistik container.
  const _DialogContainerHorizontalSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/containers/horizontal_small.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class _DialogContainerHorizontalBig extends StatelessWidget {
  /// Onboarding container.
  const _DialogContainerHorizontalBig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/containers/horizontal_big.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class _DialogContainerSquare extends StatelessWidget {
  /// Aufgabe Beenden container.
  const _DialogContainerSquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/containers/square.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class _DialogContainerVerticalSize1 extends StatelessWidget {
  /// 2 container.
  const _DialogContainerVerticalSize1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/containers/vertical_size_1.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class _DialogContainerVerticalSize2 extends StatelessWidget {
  /// PopOver container.
  const _DialogContainerVerticalSize2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/containers/vertical_size_2.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class _DialogContainerVerticalSize3 extends StatelessWidget {
  /// schatzkarte container.
  const _DialogContainerVerticalSize3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/containers/vertical_size_3.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

class _DialogContainerVerticalSize4 extends StatelessWidget {
  /// Tagebuch container.
  const _DialogContainerVerticalSize4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/containers/vertical_size_4.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}
