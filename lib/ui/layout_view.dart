import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sections/core_features.dart';
import 'sections/product_features.dart';
import 'sections/products.dart';

var blueColor = Colors.blue.shade300;
var deepBlueColor = Colors.blue;
var greyColor = Colors.grey.shade100;
var whiteColor = Colors.white;
var blackColor = Colors.black;

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  final items = ['Home', 'Contact us', 'Explore More', ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        endDrawer: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: blueColor,
          child: Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ListTile(
                          title: Text(
                            items[index],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 30),
                            textAlign: TextAlign.center,
                          ),
                          titleAlignment: ListTileTitleAlignment.center,
                        ),
                      )),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                  onPressed: () {
                    _globalKey.currentState!.closeEndDrawer();
                  },
                  icon: Icon(
                    Icons.clear_rounded,
                    color: whiteColor,
                  )),
            )
          ]),
        ),
        appBar: AppBar(
            centerTitle: false,
            backgroundColor: greyColor,
            title: Text(
              'Rupa',
              style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w800, fontSize: 25, color: blueColor),
            ),
            elevation: 0,
            actions: [
              buyNowBtn(txt: 'Buy Now'),
              sideNavBtn(funct: () {
                if (_globalKey.currentState!.isDrawerOpen) {
                  _globalKey.currentState!.closeEndDrawer();
                }
                _globalKey.currentState!.openEndDrawer();
                print('this is the best');
              })
            ]),
        body: const Padding(
          padding: EdgeInsets.only(top: .0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Products(),
                ProductFeatures(),
                CoreFeatures(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buyNowBtn({txt}) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      child: FloatingActionButton.extended(
          elevation: 0,
          onPressed: () {},
          label: Text(
            txt,
            style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white),
          )),
    );

Widget sideNavBtn({Function()? funct}) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
      child: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: funct,
        child: Icon(
          Icons.menu_rounded,
          color: blueColor,
        ),
      ),
    );
