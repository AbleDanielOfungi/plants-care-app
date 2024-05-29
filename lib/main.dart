import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plants_care_uganda_ltd/auth1/sign_in.dart';
import 'package:plants_care_uganda_ltd/screens/splashScreen.dart';
import 'screens/card_screens/customerDetail.dart';
import 'screens/card_screens/productList.dart';
import 'screens/card_screens/profitLoss.dart';
import 'screens/card_screens/purchaseEntry.dart';
import 'screens/card_screens/salesEntry.dart';
import 'screens/card_screens/salesOrders.dart';

import 'screens/card_screens/vendorDetail.dart';
import 'screens/homeScreen.dart';

//@dart=2.9

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Plants Care Uganda Ltd",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
            // backgroundColor: MaterialStateProperty.all(AppColor.orange),
            shape: MaterialStateProperty.all(
              const StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          )),
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              color: Colors.orange,
              fontSize: 25.0,
            ),
          )),
      home: const SignIn(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ProductList.routeName: (context) => const ProductList(),
        PurchaseEntry.routeName: (context) => const PurchaseEntry(),
        SalesEntry.routeName: (context) => const SalesEntry(),
        VendorDetail.routeName: (context) => const VendorDetail(),
        CustomerDetails.routeName: (context) => const CustomerDetails(),
        // PurchaseOrder.routeName: (context) => const PurchaseOrder(),
        SaleOrder.routeName: (context) => const SaleOrder(),
        ProfitLoss.routeName: (context) => const ProfitLoss(),
      },
    );
  }
}
