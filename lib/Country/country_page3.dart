import 'package:country/Country/country_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Country_Page3 extends StatefulWidget {
  String page3_img;
  String page3rasmiy_nomi;
  String page3poytaxt;
  String page3davlat;
  String page3yer;
  String page3aholi;
  String page3bayroq;
  String page3joy;
  Country_Page3(
    this.page3_img,
    this.page3davlat,
    this.page3poytaxt,
    this.page3rasmiy_nomi,
    this.page3yer,
    this.page3aholi,
    this.page3bayroq,
    this.page3joy,
  );
  @override
  _Country_Page3State createState() => _Country_Page3State();
}

class _Country_Page3State extends State<Country_Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                top: 15.0,
              ),
              child: CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.black45,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            collapsedHeight: 200.0,
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: PageView.builder(
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.white,
                  child: Image.network(
                    "https://source.unsplash.com/random/${index}",
                    fit: BoxFit.cover,
                  ),
                );
              },
              itemCount: 5,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30.0),
                  Text(
                    widget.page3rasmiy_nomi,
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    widget.page3poytaxt.toString() + ", " + widget.page3davlat,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 22.0,
                        backgroundColor: Colors.grey[200],
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.phone,
                            size: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      CircleAvatar(
                        radius: 22.0,
                        backgroundColor: Colors.grey[200],
                        child: IconButton(
                          onPressed: () {
                            launch(widget.page3joy);
                          },
                          icon: const Icon(
                            Icons.navigation,
                            size: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      CircleAvatar(
                        radius: 22.0,
                        backgroundColor: Colors.grey[200],
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share,
                            size: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      CircleAvatar(
                        radius: 22.0,
                        backgroundColor: Colors.grey[200],
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_today_rounded,
                            size: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(width: 30.0),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          fixedSize: const Size(110.0, 50.0),
                          side: const BorderSide(
                            color: Colors.greenAccent,
                            width: 2.0,
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Follow",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Divider(
                    color: Colors.grey[200],
                    thickness: 2.0,
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Information",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            widget.page3yer,
                            style: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          const Text(
                            "Area(sq. km.)",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            widget.page3aholi,
                            style: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          const Text(
                            "Population(people)",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            widget.page3bayroq,
                            style: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          const Text(
                            "Flag",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    " It is often referred to as the land of an individual's birth, residence or citizenship.A country may be an independent sovereign state or part of a larger state, as a non-sovereign or formerly sovereign political division...",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  ListTile(
                    tileColor: Colors.grey[100],
                    title: const Text("Show scorecard"),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 18.0,
                    ),
                  ),
                  Divider(
                    color: Colors.grey[200],
                    thickness: 1.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          fixedSize: Size(150.0, 50.0),
                          side: const BorderSide(
                            color: Colors.greenAccent,
                            width: 2.0,
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Preview",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          fixedSize: const Size(150.0, 50.0),
                          side: BorderSide.none,
                          backgroundColor: Colors.greenAccent,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Start Round",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
