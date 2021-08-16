import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


/// Shows a modal material design bottom sheet.
/// 
/// Wrapped with the common bottom sheet properties.
/// 
/// Background color and shape is set and immutable.
/// 
/// Write the builder with the content you want to implement in the bottom sheet.
/// 
/// You should handle paddings in your builder.
Future<T?> showCommonBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  // Color? backgroundColor,
  double? elevation,
  // ShapeBorder? shape,
  Clip? clipBehavior,
  BoxConstraints? constraints,
  Color? barrierColor,
  bool isScrollControlled = false,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  RouteSettings? routeSettings,
  AnimationController? transitionAnimationController,
}) {
  return showModalBottomSheet(
      context: context,
      builder: builder,
      backgroundColor: const Color(0xFFFFF0C0),
      elevation: elevation,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(45))),
      clipBehavior: clipBehavior,
      constraints: constraints,
      barrierColor: barrierColor,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      routeSettings: routeSettings,
      transitionAnimationController: transitionAnimationController);
}

// class CommonBottomSheet extends StatefulWidget {
//   const CommonBottomSheet({Key? key, this.height, this.child})
//       : super(key: key);

//   final double? height;
//   final Widget? child;

//   @override
//   _CommonBottomSheetState createState() => _CommonBottomSheetState();
// }

// class _CommonBottomSheetState extends State<CommonBottomSheet> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: widget.height,
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(45), topRight: Radius.circular(45)),
//         color: Color(0xFFFFF0C0),
//       ),
//       width: MediaQuery.of(context).size.width,
//       padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
//       child: widget.child,
//     );
//   }
// }

// class CBS extends BottomSheet {
//   const CBS(
//       {Key? key,
//       required this.onClosing,
//       required this.builder,
//       this.FauliHeader})
//       : super(
//             key: key,
//             builder: builder,
//             onClosing: onClosing,
//             backgroundColor: const Color(0xFFFFF0C0),
//             shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
//             ));

//   final bool? FauliHeader;
//   final VoidCallback onClosing;
//   final WidgetBuilder builder;
// }

// class CommonBottomSheet extends StatefulWidget {
//   const CommonBottomSheet({Key? key, this.height, this.child})
//       : super(key: key);

//   final double? height;
//   final Widget? child;

//   @override
//   _CommonBottomSheetState createState() => _CommonBottomSheetState();
// }

// class _CommonBottomSheetState extends State<CommonBottomSheet> {
//   @override
//   Widget build(BuildContext context) {
//     return BottomSheet(
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
//         ),
//         onClosing: () {},
//         backgroundColor: const Color(0xFFFFF0C0),
//         builder: (context) => SizedBox(
//               width: MediaQuery.of(context).size.width,
//               height: widget.height,
//               child: Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                       left: 15, right: 15, top: 40, bottom: 10),
//                   child: SizedBox(
//                     child: widget.child,
//                     // height:
//                     //     widget.height != null ? widget.height! - 40 : null,
//                     // width: MediaQuery.of(context).size.width - 30,
//                   ),
//                 ),
//               ),
//             ));
//   }
// }

// class CommonsheetWithFauli extends StatefulWidget {
//   const CommonsheetWithFauli({Key? key, this.height, this.child})
//       : super(key: key);

//   final double? height;
//   final Widget? child;

//   @override
//   _CommonsheetWithFauliState createState() => _CommonsheetWithFauliState();
// }

// class _CommonsheetWithFauliState extends State<CommonsheetWithFauli> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       overflow: Overflow.visible,
//       alignment: AlignmentDirectional.topCenter,
//       children: [
//         BottomSheet(
//             shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
//             ),
//             onClosing: () {},
//             backgroundColor: const Color(0xFFFFF0C0),
//             builder: (context) => SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   height: widget.height,
//                   child: Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Padding(
//                       padding: const EdgeInsets.only(
//                           left: 15, right: 15, top: 40, bottom: 10),
//                       child: SizedBox(
//                         child: widget.child,
//                         // height:
//                         //     widget.height != null ? widget.height! - 40 : null,
//                         // width: MediaQuery.of(context).size.width - 30,
//                       ),
//                     ),
//                   ),
//                 )),
//         const Positioned(top: -240, child: _FauliDefaultPic())
//       ],
//     );
//   }
// }

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
