import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShipGardenAppBar extends AppBar {
  ShipGardenAppBar({
    Key? key,
    Widget? leading = const IconButton(
        padding: EdgeInsets.all(0),
        // iconSize: 5,
        onPressed: null,
        icon: Padding(
          padding: EdgeInsets.all(0.0),
          child: SettingGearIcon(),
        )),
    bool automaticallyImplyLeading = true,
    Widget? title,
    List<Widget>? actions = const [
      IconButton(
        onPressed: null,
        padding: EdgeInsets.all(0),
        icon: Padding(
          padding: EdgeInsets.all(0.0),
          child: LifeBuoyRingIcon(),
        ),
      )
    ],
    Widget? flexibleSpace,
    PreferredSizeWidget? bottom,
    double? elevation,
    Color? shadowColor,
    ShapeBorder? shape,
    Color? backgroundColor = Colors.white,
    Color? foregroundColor,
    Brightness? brightness,
    IconThemeData? iconTheme,
    IconThemeData? actionsIconTheme,
    TextTheme? textTheme,
    bool primary = true,
    bool? centerTitle,
    bool excludeHeaderSemantics = false,
    double? titleSpacing,
    double toolbarOpacity = 1.0,
    double bottomOpacity = 1.0,
    double? toolbarHeight,
    double? leadingWidth,
    bool? backwardsCompatibility,
    TextStyle? toolbarTextStyle,
    TextStyle? titleTextStyle,
    SystemUiOverlayStyle? systemOverlayStyle,
  }) : super(
            key: key,
            leading: leading,
            automaticallyImplyLeading: automaticallyImplyLeading,
            title: title,
            actions: actions,
            flexibleSpace: flexibleSpace,
            bottom: bottom,
            elevation: elevation,
            shadowColor: shadowColor,
            shape: shape,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            brightness: brightness,
            iconTheme: iconTheme,
            actionsIconTheme: actionsIconTheme,
            textTheme: textTheme,
            primary: primary,
            centerTitle: centerTitle,
            excludeHeaderSemantics: excludeHeaderSemantics,
            titleSpacing: titleSpacing,
            toolbarOpacity: toolbarOpacity,
            bottomOpacity: bottomOpacity,
            toolbarHeight: toolbarHeight,
            leadingWidth: leadingWidth,
            backwardsCompatibility: backwardsCompatibility,
            toolbarTextStyle: toolbarTextStyle,
            titleTextStyle: titleTextStyle,
            systemOverlayStyle: systemOverlayStyle);
}

// class ShipBar extends StatelessWidget {
//   const ShipBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.white,
//       leading: const Padding(
//         padding: EdgeInsets.all(12.0),
//         child: SettingGearIcon(),
//       ),
//       // actions: const [SizedBox(child: _LifeBuoyRingIcon(), height: 20,)],
//       actions: const [
//         Padding(
//           padding: EdgeInsets.all(12.0),
//           child: LifeBuoyRingIcon(),
//         )
//       ],
//     );
//   }
// }

class SettingGearIcon extends StatelessWidget {
  const SettingGearIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assets/icons/settings_gear_icon.svg");
  }
}

class LifeBuoyRingIcon extends StatelessWidget {
  const LifeBuoyRingIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assets/icons/lifebuoy_ring_icon.svg", height: 30);
  }
}
