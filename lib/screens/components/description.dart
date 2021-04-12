import 'package:flutter/material.dart';
import 'package:shopping_ui/constants.dart';
import 'package:shopping_ui/models/product.dart';

class DescriptionSelector extends StatelessWidget {
  const DescriptionSelector({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: kDefaultPadding * 2, bottom: 15),
          child: Text(
            product.description,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: Colors.black, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
