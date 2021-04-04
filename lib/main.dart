import 'package:flutter/material.dart';

void main() {
  runApp(MyTest());
}

class MyTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          //Inside Scaffold we have different properties
          appBar: AppBar(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text("Darshan Here"),
            centerTitle: true,
            backgroundColor: Colors.cyan[600],
          ),
          body: TweenAnimationBuilder(
            duration: Duration(milliseconds: 10000),
            tween: Tween<double>(
                begin: 10, end: 100), //#value will be what tween is holding
            builder: (_, value, child) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center, //Try Strecth
              children: <Widget>[
                Text("First Value"),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Click Me"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.access_alarm,
                    size: value,
                  ),
                )
              ],
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.all(20.0),
          //   child: IconButton(icon: Icon(Icons.ac_unit), onPressed: () {print("Here Here")}),
          // ),

          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          //   margin: EdgeInsets.all(50.0),
          //   color: Colors.amber,
          //   child: Text("Bite Me"),
          // ),
          //child: Image.asset('assets/Kobe.jpg')

          //     ElevatedButton(
          //   child: Text("Press Me"),
          //   // Icon(Icons.add_a_photo_outlined),
          //   autofocus: true,
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
          //   ),
          //   onPressed: () {},
          // )
          //************************Icons Demo */
          //     Icon(
          //   Icons.airport_shuttle,
          //   size: 80,
          //   color: Colors.lightBlue[200],
          // )

          //Image.network(
          //  'https://cdn.pixabay.com/photo/2015/11/04/20/59/milky-way-1023340_1280.jpg'),

          // image: NetworkImage(
          //     'https://cdn.pixabay.com/photo/2015/11/04/20/59/milky-way-1023340_1280.jpg'),

          // image: AssetImage('assets/Kobe.jpg'),

          // Text(
          //   "Hello Darshan",
          //   style: TextStyle(
          //       fontSize: 20.0,
          //       fontWeight: FontWeight.bold,
          //       fontFamily: "PressStart2P",

          //       //shadows: Shadow.convertRadiusToSigma(radius),
          //       letterSpacing: 1.2,
          //       color: Colors.blue[400],
          //       shadows: [
          //         Shadow(
          //           color: Colors.blue.shade900.withOpacity(0.5),
          //           offset: Offset(-2, 30.0),
          //           blurRadius: 10.0,
          //         ),
          //       ]),
          // ),

          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ));
  }
}
