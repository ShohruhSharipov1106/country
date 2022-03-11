import 'package:country/Country/sizer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
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
              padding: EdgeInsets.only(
                left: kWidth(15.0).w,
                top: kHeight(20.0).h,
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
            collapsedHeight: kHeight(200.0).h,
            expandedHeight: kHeight(200.0).h,
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
              padding: EdgeInsets.symmetric(
                horizontal: kWidth(30.0).w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: kHeight(30.0).h),
                  Text(
                    widget.page3rasmiy_nomi,
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: kHeight(20.0).h),
                  Text(
                    widget.page3poytaxt.toString() + ", " + widget.page3davlat,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: kHeight(20.0).h),
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
                      SizedBox(width: kWidth(10.0).w),
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
                      SizedBox(width: kWidth(10.0).w),
                      CircleAvatar(
                        radius: 22.0,
                        backgroundColor: Colors.grey[200],
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share,
                            size: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(width: kWidth(10.0).w),
                      CircleAvatar(
                        radius: kHeight(22.0).h,
                        backgroundColor: Colors.grey[200],
                        child: IconButton(
                          onPressed: () {},
                          icon:  Icon(
                            Icons.calendar_today_rounded,
                            size: kHeight(20.0).h,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(width: kWidth(30.0).w),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          fixedSize: Size(kWidth(110.0).w, kHeight(50.0).h,),
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
                  SizedBox(height: kHeight(10.0).h),
                  Divider(
                    color: Colors.grey[200],
                    thickness: 2.0,
                  ),
                  SizedBox(height: kHeight(10.0).h),
                  const Text(
                    "Information",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: kHeight(20.0).h),
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
                          SizedBox(height: kHeight(10.0).h),
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
                          SizedBox(height: kHeight(10.0).h),
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
                          SizedBox(height: kHeight(10.0).h),
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
                  SizedBox(height: kHeight(20.0).h),
                  const Text(
                    " It is often referred to as the land of an individual's birth, residence or citizenship.A country may be an independent sovereign state or part of a larger state, as a non-sovereign or formerly sovereign political division...",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: kHeight(10.0).h),
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
                          fixedSize: Size(kWidth(150.0).w, kHeight(50.0).h),
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
                          fixedSize: Size(kWidth(150.0).w, kHeight(50.0).h),
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
