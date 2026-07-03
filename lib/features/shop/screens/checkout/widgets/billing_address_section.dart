import 'package:flutter/material.dart';
import 'package:sneaker_store/common/widgets/texts/section_heading.dart';
import 'package:sneaker_store/utils/constants/sizes.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        TSectionHeading(title: "Shipping Address", buttonTitle: "Change", onPressed: (){}),
        Text("Coding with M", style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text("+51976529053", style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Expanded(child: Text("South Liana, Maine 89646, USA", style: Theme.of(context).textTheme.bodyMedium, softWrap: true,))
          ],
        )
      ],
    );
  }
}

