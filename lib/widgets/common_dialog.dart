import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

Future<T?> showCommonDialog<T>({
  required BuildContext context,
  required DialogContainerBackground background,
  required WidgetBuilder builder,
  bool barrierDismissible = true,
  Color? barrierColor = Colors.black54,
  String? barrierLabel,
  bool useSafeArea = true,
  bool useRootNavigator = true,
  RouteSettings? routeSettings,
}) {
  return showDialog(
      context: context,
      builder: (BuildContext buildContext) => Center(
            child: SizedBox(
              // height: 600,
              // width: 400,
              child: Stack(
                fit: StackFit.loose,
                overflow: Overflow.clip,
                alignment: AlignmentDirectional.topCenter,
                children: [
                  _backgroundHelper(background),
                  DefaultTextStyle(
                    style: const TextStyle(decoration: TextDecoration.none, color: Colors.black),
                    child: Positioned.fill(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Builder(
                          builder: builder,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
      barrierColor: barrierColor,
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
      "assets/containers/Statistik.svg",
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
      "assets/containers/Onboarding.svg",
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
      "assets/containers/Aufgabe Beenden.svg",
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
      "assets/containers/2.svg",
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
      "assets/containers/PopOver.svg",
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
      "assets/containers/schatzkarte.svg",
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
      "assets/containers/Tagebuch.svg",
      // height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}
