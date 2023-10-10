import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class HomeUser extends StatelessWidget {
  GlobalKey<ScaffoldState> homePage = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 19, 42, 76),
          centerTitle: true,
          title: Image.asset(
            "assets/images/plogo.png",
            height: 120,
            fit: BoxFit.fitHeight,
          )),
      backgroundColor: Color.fromARGB(255, 255, 250, 237),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
                width: 200,
                height: 30,
                // margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text("Your Location: Bramantyo",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Poppins",
                      color: Color.fromARGB(255, 19, 42, 76),
                    ))),
            SizedBox(height: 10),
            CarouselSlider(
              items: [
                Card1(context),
                Card2(context),
              ],
              options: CarouselOptions(
                height: 215,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                aspectRatio:
                    2.0, // Sesuaikan dengan aspect ratio yang diinginkan
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget Card1(BuildContext context) {
    return ExpandableNotifier(
        child: Container(
      width: MediaQuery.of(context).size.width / 1,
      height: 200,
      padding: const EdgeInsets.all(10),
      child: Card(
        color: Color.fromARGB(255, 19, 42, 76),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 135,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.ytimg.com/vi/xRwibY8F75E/maxresdefault.jpg")),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            SizedBox(height: 2),
            Column(
              children: [
                Text(
                  "Marathon Event",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 250, 237), fontSize: 15),
                  textAlign: TextAlign.center,
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

Widget Card2(BuildContext context) {
  return ExpandableNotifier(
      child: Container(
    width: MediaQuery.of(context).size.width / 1,
    height: 200,
    padding: const EdgeInsets.all(10),
    child: Card(
      color: Color.fromARGB(255, 19, 42, 76),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 135,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1603102859961-64b17d43580d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1932&q=80")),
                shape: BoxShape.rectangle,
              ),
            ),
          ),
          SizedBox(height: 2),
          Column(
            children: [
              Text(
                "Run Weekly",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 250, 237), fontSize: 15),
                textAlign: TextAlign.center,
              )
            ],
          )
        ],
      ),
    ),
  ));
}
