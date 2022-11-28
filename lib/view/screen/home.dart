import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/membershipcard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 211, 207, 207),
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.qr_code) ),
          ],
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Text(" Membership "),
        ),
        body: CarouselSlider(
          options: CarouselOptions(height: 580, viewportFraction: 1),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Center(child: MemberShipCard()),
                );
              },
            );
          }).toList(),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
//Center(child: MemberShipCard()),