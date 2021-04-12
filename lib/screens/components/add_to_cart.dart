import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_ui/constants.dart';
import 'package:shopping_ui/models/product.dart';

class AddtoCart extends StatelessWidget {
  const AddtoCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            //padding: EdgeInsets.only(top: kDefaultPadding),
            height: 40,
            width: 60,
            decoration: BoxDecoration(
              border: Border.all(color: product.color),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: SvgPicture.asset("assets/icons/add_to_cart.svg"),
              color: product.color,
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: product.color,
                  onPrimary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Buy now",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                //style: ButtonStyle(, Bo : Border.all(color: product.color),)
              ),
            ),
          )
        ],
      ),
    );
  }
}
