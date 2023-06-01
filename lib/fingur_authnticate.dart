// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class BiometricAuthentication extends StatefulWidget {
//   const BiometricAuthentication({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<BiometricAuthentication> createState() =>
//       _BiometricAuthenticationState();
// }

// class _BiometricAuthenticationState extends State<BiometricAuthentication> {
//   final _localAuthentication = LocalAuthentication();
//   bool _isUserAuthorized = false;

//   Future<void> authenticateUser() async {
//     bool isAuthorized = false;
//     try {
//       isAuthorized = await _localAuthentication.authenticate(
//           localizedReason: 'Please authenticate to show account balance',
//           options: const AuthenticationOptions(biometricOnly: true));
//     } on PlatformException catch (exception) {
//       if (exception.code == local_auth_error.notAvailable ||
//           exception.code == local_auth_error.passcodeNotSet ||
//           exception.code == local_auth_error.notEnrolled) {
//         // Handle this exception here.
//       }
//     }

//     if (!mounted) return;

//     setState(() {
//       _isUserAuthorized = isAuthorized;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("widget.appBarTitle"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             _isUserAuthorized
//                 ? (const Text("Authentication successful!!!"))
//                 : (TextButton(
//                     onPressed: authenticateUser,
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all<Color>(
//                           Colors.lightBlueAccent),
//                     ),
//                     child: const Text(
//                       "Authorize now",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   )),
//           ],
//         ),
//       ),
//     );
//   }
// }
