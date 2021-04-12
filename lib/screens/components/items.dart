import 'package:flutter/material.dart';
import 'package:shopping_ui/constants.dart';
import 'package:shopping_ui/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product products;
  final Function press;
  const ItemCard({
    Key key,
    this.products,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding, horizontal: kDefaultPadding),
            // height: 180,
            //width: 150,
            decoration: BoxDecoration(
              color: products.color,
              borderRadius: BorderRadius.circular(15),
              //backgroundBlendMode: BlendMode.color,
            ),
            child: Hero(
              tag: "${products.id}",
              child: Image.asset(products.image),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              products.title,
              style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "\$${products.price}",
            style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
