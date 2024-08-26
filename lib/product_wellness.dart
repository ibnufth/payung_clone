// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'currency_format.dart';
import 'product.dart';

class ProductWellness extends StatelessWidget {
  final Product product;
  const ProductWellness({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .45,
      width: MediaQuery.of(context).size.width * .4,
      child: Column(
        children: [
          const SizedBox(height: 16),
          const Icon(
            FontAwesomeIcons.boxesPacking,
            size: 60,
          ),
          const SizedBox(height: 24),
          Text(product.name),
          const SizedBox(height: 8),
          SizedBox(
              width: double.maxFinite,
              child: Text(CurrencyFormat.convertToIdr(product.price)))
        ],
      ),
    );
  }
}
