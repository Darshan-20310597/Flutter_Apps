import 'package:flutter/material.dart';
import 'package:shopping_ui/constants.dart';

class CartCounter extends StatefulWidget {
  CartCounter({Key key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfitems = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedBox(
            icon: Icons.remove,
            press: () {
              setState(() {
                if (numOfitems > 0) {
                  numOfitems -= 1;
                } else {
                  numOfitems = 0;
                }
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            //If out item is 1,2 it should show 01,02
            numOfitems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6.copyWith(),
          ),
        ),
        buildOutlinedBox(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfitems += 1;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlinedBox({IconData icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 30,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
