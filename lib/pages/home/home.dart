// ignore_for_file: prefer_const_constructors

import 'package:basic_prototype/pages/home/components/banner.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/categorybar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C0C0C),
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        
        elevation: 1,
        shadowColor: Color(0xAAFFFFFF),
        leading: Icon(Icons.menu, size: 32),
        title: Text(
          'BASICS',
          style: GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.notifications_none_outlined, size: 32),
          ),
        ],
        backgroundColor: Color(0xFF0C0C0C),
      ),

      body: GlowingOverscrollIndicator(
        axisDirection: AxisDirection.down,
        color: Color(0xFFECECEC).withOpacity(1),
        child: ListView(scrollDirection: Axis.vertical, children: [
          Stack(
            children: const [
              MyBanner(path: 'lib/images/home page/banner/women_banner.png'),
              MyBanner(path: 'lib/images/home page/banner/mens_banner.png'),
              MyBanner(path: 'lib/images/home page/banner/banner.png'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Text(
                  'CATEGORIES',
                  style: GoogleFonts.nunitoSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF)),
                ),
              ],
            ),
          ),
          CategoryBar(),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Text(
                  'TRENDING COLLECTIONS',
                  style: GoogleFonts.nunitoSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 480,
              width: MediaQuery.of(context).size.width * 0.92,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                  image: AssetImage('lib/images/home page/banner/img1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 328, 0, 0),
                child: Text('Outwear By Pierre Cardin',
                    style: GoogleFonts.ptSerif(
                        fontSize: 48,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFFFFFFF))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 480,
              width: MediaQuery.of(context).size.width * 0.92,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                  image: AssetImage('lib/images/home page/banner/img2.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 328, 0, 0),
                child: Text('Outwear By Tom Ford',
                    style: GoogleFonts.ptSerif(
                        fontSize: 48,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFFFFFFF))),
              ),
            ),
          ),
        ]),
      ),

      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeOutQuint,
        animationDuration: const Duration(milliseconds: 360),
        color: Color(0xFF0E0E0E),
        backgroundColor: Colors.transparent,
        height: 65,
        items: const [
          Icon(
            Icons.home_outlined,
            color: Color(0xFFFFFFFF),
            size: 30,
          ),
          Icon(
            Icons.search_rounded,
            color: Color(0xFFFFFFFF),
            size: 30,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Color(0xFFFFFFFF),
            size: 30,
          ),
          Icon(
            Icons.favorite_border_rounded,
            color: Color(0xFFFFFFFF),
            size: 30,
          )
        ],
      ),
    );
  }
}
