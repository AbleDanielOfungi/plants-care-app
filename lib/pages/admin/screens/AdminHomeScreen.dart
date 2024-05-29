// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:plants_care_uganda_ltd/screens/card_screens/productList.dart';
// import 'package:plants_care_uganda_ltd/screens/card_screens/purchaseEntry.dart';
// import 'package:plants_care_uganda_ltd/screens/minquantityalert.dart';

// import 'card_screens/customerDetail.dart';
// import 'card_screens/expenseList.dart';
// import 'card_screens/profitLoss.dart';
// import 'card_screens/purchaseOrders.dart';
// import 'card_screens/salesEntry.dart';
// import 'card_screens/salesOrders.dart';
// import 'card_screens/vendorDetail.dart';

// class HomeScreen extends StatefulWidget {
//   static const routeName = '/homeScreen';
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final currentUser = FirebaseAuth.instance.currentUser!;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //drawer: const NavigationDrawer(),
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Image.asset(
//               'assets/logo.png',
//               height: 30,
//             ),
//             Text(
//               " ${currentUser.email!}",
//               style: TextStyle(fontSize: 15),
//             ),
//             Icon(Icons.notification_add)
//           ],
//         ),
//         backgroundColor: Colors.green,
//       ),
//       // drawer: const Drawer(
//       //   elevation: 5,
//       // ),

//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Container(
//           child: GridView(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
//               children: [
//                 //1st card
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.of(context)
//                         .pushReplacementNamed(PurchaseEntry.routeName);
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.green,
//                     ),
//                     child: const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.add_circle,
//                           color: Colors.white,
//                           size: 50,
//                         ),
//                         Text(
//                           "Purchase Entry",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 //2nd card
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.of(context)
//                         .pushReplacementNamed(SalesEntry.routeName);
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.green,
//                     ),
//                     child: const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.monetization_on,
//                           color: Colors.white,
//                           size: 50,
//                         ),
//                         Text(
//                           "Sales Entry",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 //3rd card
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.of(context)
//                         .pushReplacementNamed(ProductList.routeName);
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.green,
//                     ),
//                     child: const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.list_alt,
//                           color: Colors.white,
//                           size: 50,
//                         ),
//                         Text(
//                           "Product List",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 //4th card
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) {
//                       return MinQuantityAlertScreen();
//                     }));
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.green,
//                     ),
//                     child: const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.gpp_good_sharp,
//                           color: Colors.white,
//                           size: 50,
//                         ),
//                         Text(
//                           "Minimum Quantity",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 //5th card
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.of(context)
//                         .pushReplacementNamed(VendorDetail.routeName);
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.green,
//                     ),
//                     child: const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.handshake_outlined,
//                           color: Colors.white,
//                           size: 50,
//                         ),
//                         Text(
//                           "Vendor detail",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 //6th card
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.of(context)
//                         .pushReplacementNamed(CustomerDetails.routeName);
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.green,
//                     ),
//                     child: const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.supervised_user_circle,
//                           color: Colors.white,
//                           size: 50,
//                         ),
//                         Text(
//                           "Customer details",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 //7th card

//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) {
//                       return const PurchaseOrder();
//                     }));
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.green,
//                     ),
//                     child: const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.shopping_cart,
//                           color: Colors.white,
//                           size: 50,
//                         ),
//                         Text(
//                           "Purchase Orders",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 //8th card
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.of(context)
//                         .pushReplacementNamed(SaleOrder.routeName);
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.green,
//                     ),
//                     child: const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.money,
//                           color: Colors.white,
//                           size: 50,
//                         ),
//                         Text(
//                           "Sale Orders",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 //9th card
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) {
//                       return const ExpenseList();
//                     }));
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.green,
//                     ),
//                     child: const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.list,
//                           color: Colors.white,
//                           size: 50,
//                         ),
//                         Text(
//                           "Expense List",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 //10th card
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.of(context)
//                         .pushReplacementNamed(ProfitLoss.routeName);
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.green,
//                     ),
//                     child: const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.auto_graph,
//                           color: Colors.white,
//                           size: 50,
//                         ),
//                         Text(
//                           "Profit Loss",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ]),
//         ),
//       ),

//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Container(
//           height: 50,
//           decoration: BoxDecoration(
//             color: Colors.green,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Center(
//               child: Text(
//             'Plants Care Uganda Ltd',
//             style: TextStyle(color: Colors.white),
//           )),
//         ),
//       ),
//     );
//   }
// }
