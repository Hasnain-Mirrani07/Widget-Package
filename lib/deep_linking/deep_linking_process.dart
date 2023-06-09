// paste this file into manifiextFile.xml
//=====>>>1<<<<
// <meta-data android:name="flutter_deeplinking_enabled" android:value="true" />
//  <intent-filter android:autoVerify="true">
//      <action android:name="android.intent.action.VIEW" />
//      <category android:name="android.intent.category.DEFAULT" />
//      <category android:name="android.intent.category.BROWSABLE" />
//      <data android:scheme="http" android:host="ismmart-api.com" />
//      <data android:scheme="https" />
//       </intent-filter>

//ohylkhhk

//=====>>>2<<<<
// this .well-known/assetlinks.json file paste in webserver backend server where api call 
//example https://ismmart-api.com/.well-known/assetlinks.json

//asset.json 
// //[
//   {
//     "relation": ["delegate_permission/common.handle_all_urls"],
//     "target": {
//       "namespace": "android_app", // must be wrtie as it is name android_app it mains for android ap
//       "package_name": "com.ismmartgroup.ism_mart", //your domain name where .json file is hosted
//       "sha256_cert_fingerprints":
//         ["2D:BE:0A:EE:69:9D:93:8A:98:59:C1:D4:5D:FD:6E:F8:1A:18:2F:A9:D4:81:FC:25:CA:09:B9:51:76:DE:83:00"] //your current app SHA-256
//     }
//   }
// ]


//=====>>>3<<<<
//this link auto pick and redirect with name routing==>> http://ismmart-api.com/orderDetails/187   with id 
//without id   http://ismmart-api.com/product/


//=====>>>4<<<<
//if u want to access url and extract some data manually



//deep lin linking functionality

// RxString proId = "".obs;
// void handleDeepLink(String? url) {
//   // print('deep link Handled: $url');
//   // Process the deep link URL and navigate to the appropriate screen
//   // You can extract the relevant information from the URL and handle it accordingly
//   // For example, you can extract query parameters or path segments to determine the desired screen
//   // You can use Navigator to navigate to the appropriate screen based on the deep link information
//   // Example: url search ===>> ismmart-
//   // print("deep link urlExtract =>> $url");
//   // url.contains("search")
//   // Uri uri = Uri.parse(url!);

//   // // Extract query parameters from the URL
//   // Map<String, dynamic> queryParams = uri.queryParameters;

//   // // Access individual query parameters
//   // String productId = queryParams['id'];

//   // // Use the extracted parameters as needed
//   // print('deep link Handled: $url   id >> $productId');

//   // print('deep link Product ID: $productId');
//   String? productId = Uri.parse(url!).queryParameters['id'];
//   Get.toNamed("storeDetails/$productId");
//   if (url.contains("product")) {
//     //String? productId = Uri.parse(url).queryParameters['id'];
//     print("deep link Product =>> $url   id=> $productId ");

//     //Get.toNamed("/product/$productId");
//     Get.to(SingleProductView(
//       productId: "${productId}",
//       calledFor: 'customer',
//     ));
//   } else if (url.startsWith('http://ismmart-api.com/')) {
//     print("deep link handleDeepLink =>> $url");

//     String? productId = Uri.parse(url).queryParameters['id'];
//     proId.value = productId.toString();
//     print("deep link handleDeepLink RX =>> ${proId.value} ");
//     //   fetchProduct(proId.value.toString());

//     // Get.to(SingleProductView(
//     //   productId: "${proId.value}",
//     //   calledFor: 'customer',
//     // ));
//   } else {
//     print("deep link else urlExtract =>>");

//     // Handle other deep link URLs as needed
//   }
// }

// // void launchURL(String url) async {
// //   if (await canLaunch(url)) {
// //     await launch(url);
// //   } else {
// //     // Handle error if the URL cannot be launched
// //   }
// // }

// StreamSubscription? _sub;
// Future<void> initUniLinks() async {
//   // ... check initialLink



//------------  or ----------------


//   RxString proId = "".obs;
//   void handleDeepLink(String url) {
//     // Process the deep link URL and navigate to the appropriate screen
//     // You can extract the relevant information from the URL and handle it accordingly
//     // For example, you can extract query parameters or path segments to determine the desired screen
//     // You can use Navigator to navigate to the appropriate screen based on the deep link information
//     // Example:
//     // print("deep link urlExtract =>> $url");

//     if (url.startsWith('http://ismmart-api.com/search?id')) {
//       //  print("deep link urlExtract =>> $url");

//       String? productId = Uri.parse(url).queryParameters['id'];
//       proId.value = productId.toString();
//       print("deep link urlExtract RX =>> ${proId.value} ");
//       //   fetchProduct(proId.value.toString());

//       Get.to(SingleProductView(
//         productId: "${proId.value}",
//         calledFor: 'customer',
//       ));
//     } else {
//       print("deep link else urlExtract =>>");

//       // Handle other deep link URLs as needed
//     }
//   }

// // void launchURL(String url) async {
// //   if (await canLaunch(url)) {
// //     await launch(url);
// //   } else {
// //     // Handle error if the URL cannot be launched
// //   }
// // }

//   StreamSubscription? _sub;
//   Future<void> initUniLinks() async {
//     // ... check initialLink

//     // Attach a listener to the stream
//     _sub = linkStream.listen((String? link) {
//       // Parse the link and warn the user, if it is
//       print("deep link Done =>> $link");

//       handleDeepLink(link.toString());
//     }, onError: (err) {
//       print("deep link Err =>> $err");

//       // Handle exception by warning the user their action did not succeed
//     });

//     // _sub = uriLinkStream.listen((Uri? uri) {
//     //   // Use the uri and warn the user, if it is not correct
//     //   print("deep link uri =>> $uri");
//     // });
//     print("deep link Out =>> ");

//     // NOTE: Don't forget to call _sub.cancel() in dispose()
//   }



//