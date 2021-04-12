import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_ui/constants.dart';
import 'package:shopping_ui/models/product.dart';
import 'package:shopping_ui/screens/components/add_to_cart.dart';
import 'package:shopping_ui/screens/components/cart_counter.dart';
import 'package:shopping_ui/screens/components/color_and_size.dart';
import 'package:shopping_ui/screens/components/counter_with_row_button.dart';
import 'package:shopping_ui/screens/components/description.dart';
import 'package:shopping_ui/screens/components/product_title_with_images.dart';

class BodyDetails extends StatelessWidget {
  final Product product;

  const BodyDetails({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provides total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.33),
                  padding: EdgeInsets.only(
                      top: size.height * 0.09,
                      left: 20,
                      right: 20,
                      bottom: 0.01),
                  //height: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      ColorAndSize(product: product),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      DescriptionSelector(product: product),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      CounterwithRowBtn(),
                      AddtoCart(product: product),
                    ],
                  ),
                ),
                ProductTitlewithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorDots extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDots({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5),
      margin:
          EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
