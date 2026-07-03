import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneaker_store/common/widgets/appbar/appbar.dart';
import 'package:sneaker_store/features/shop/screens/checkout/checkout.dart';
import 'package:sneaker_store/utils/constants/sizes.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Cart", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),

        /// -- Items in Cart
        child: TCartItem(),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: Text("Checkout \$256.0"),
        ),
      ),
    );
  }
}
