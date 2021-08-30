// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:diablo_music_app/main.dart';

// class ToastContext extends StatefulWidget {
//   @override
//   _ToastContextState createState() => _ToastContextState();
// }

// class _ToastContextState extends State<ToastContext> {
//   late FToast fToast;

//   Widget toast = Container(
//     padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(25.0),
//       color: Colors.greenAccent,
//     ),
//     child: Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(Icons.check),
//         SizedBox(
//           width: 12.0,
//         ),
//         Text("This is a Custom Toast"),
//       ],
//     ),
//   );

//   _showToast() {
//     fToast.showToast(
//       child: toast,
//       gravity: ToastGravity.BOTTOM,
//       toastDuration: Duration(seconds: 2),
//     );
//   }

//   _showBuilderToast() {
//     fToast.showToast(
//         child: toast,
//         gravity: ToastGravity.BOTTOM,
//         toastDuration: Duration(seconds: 2),
//         positionedToastBuilder: (context, child) {
//           return Positioned(
//             child: child,
//             top: 16.0,
//             left: 16.0,
//           );
//         });
//   }

//   _showToastCancel() {
//     Widget toastWithButton = Container(
//       padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(25.0),
//         color: Colors.redAccent,
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Expanded(
//             child: Text(
//               "This is a Custom Toast This is a Custom Toast This is a Custom Toast This is a Custom Toast This is a Custom Toast This is a Custom Toast",
//               softWrap: true,
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           IconButton(
//             icon: Icon(
//               Icons.close,
//             ),
//             color: Colors.white,
//             onPressed: () {
//               fToast.removeCustomToast();
//             },
//           )
//         ],
//       ),
//     );
//     fToast.showToast(
//       child: toastWithButton,
//       gravity: ToastGravity.CENTER,
//       toastDuration: Duration(seconds: 50),
//     );
//   }

//   _queueToasts() {
//     fToast.showToast(
//       child: toast,
//       gravity: ToastGravity.CENTER,
//       toastDuration: Duration(seconds: 2),
//     );
//     fToast.showToast(
//       child: toast,
//       gravity: ToastGravity.BOTTOM,
//       toastDuration: Duration(seconds: 2),
//     );
//     fToast.showToast(
//       child: toast,
//       gravity: ToastGravity.TOP,
//       toastDuration: Duration(seconds: 2),
//     );
//     fToast.showToast(
//       child: toast,
//       gravity: ToastGravity.CENTER,
//       toastDuration: Duration(seconds: 2),
//     );
//     fToast.showToast(
//       child: toast,
//       gravity: ToastGravity.TOP,
//       toastDuration: Duration(seconds: 2),
//     );
//   }

//   _removeToast() {
//     fToast.removeCustomToast();
//   }

//   _removeAllQueuedToasts() {
//     fToast.removeQueuedCustomToasts();
//   }

//   @override
//   void initState() {
//     super.initState();
//     fToast = FToast();
//     fToast.init(globalKey.currentState!.context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
