import 'package:flutter/material.dart';
import 'package:test_firebase/Screens/Cart/body_cart.dart';
import 'package:test_firebase/Screens/Database/data_test.dart';
import 'package:test_firebase/Screens/Login/login_page_state.dart';
import 'package:test_firebase/constants.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // background color
      backgroundColor: Colors.white,
      appBar: anjayBro(context),
      body: const BodyCart(),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.textScaleFactorOf(context) * 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text(
                "Total: Rp. 100.000",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: MediaQuery.textScaleFactorOf(context) * 40,
              width: MediaQuery.textScaleFactorOf(context) * 120,
              margin: const EdgeInsets.only(top: 10),
              child: FloatingActionButton.extended(
                backgroundColor: kPrimaryColor,
                heroTag: "btn_checkout",
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MyDatabase();
                  }));
                },
                label: const Text(
                  "Checkout",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPageState();
                  }));
                },
                child: const Text(
                  "Continue Shopping",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar anjayBro(BuildContext context) {
    return AppBar(
      elevation: 6,
      backgroundColor: backgroundcolor,
      centerTitle: true,
      title: Column(
        children: const [
          // title
          Text(
            "Shopping Cart",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
              fontSize: 18,
            ),
          ),
          // detail order product
          Text(
            // dummy datas from Cart.dart
            "1 items",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
