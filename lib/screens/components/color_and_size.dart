import 'package:flutter/material.dart';
import 'package:shopping_ui/models/product.dart';
import 'package:shopping_ui/screens/components/body_details.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Color",
                style: TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  ColorDots(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDots(color: Colors.orange),
                  ColorDots(color: Colors.red),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: "Size\n",
                ),
                TextSpan(
                    text: '${product.size} cms',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
