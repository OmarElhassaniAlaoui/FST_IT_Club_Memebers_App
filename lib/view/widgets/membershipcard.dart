import 'package:flutter/material.dart';

class MemberShipCard extends StatefulWidget {
  const MemberShipCard({super.key});

  @override
  State<MemberShipCard> createState() => _MemberShipCardState();
}

class _MemberShipCardState extends State<MemberShipCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      width: 380,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: ExactAssetImage("assets/images/covr.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: ExactAssetImage("assets/images/omar.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 25),
            child: Text(
              "OMAR ELHASSANI ALAOUI",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.black,
            ),
            title: Text(
              "el.ell.elhassani@gmail.com",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.black,
            ),
            title: Text(
              "+212 652 065282",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.business_sharp,
              color: Colors.black,
            ),
            title: Text(
              "Softwar engenering stident ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.add_location_rounded,
              color: Colors.black,
            ),
            title: Text(
              "Errachidia",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
              SizedBox(
                height: 7.0,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
              SizedBox(
                height: 7.0,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
            ],
          ),
        ],
      ),
    );
  }
}
