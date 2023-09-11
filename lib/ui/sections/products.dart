import 'package:butter_cms_divine_1/ui/layout_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildIntoImg(assetName: 'img_9'),
        _buildIntoName(
          title: 'Various Color\'s Modern\nWatched are avalible.',
          desc:
              'Welcome to Rupa, your ultimate destination for premium and stylish timepieces. We take immense pride in curating an exclusive collection of watches that combine timeless design, exceptional craftsmanship, and cutting-edge technology',
        ),
        _buildIntoImg(assetName: 'img_2'),
        _buildIntoName(
            title: 'Best Digital Watch',
            desc:
                'Our watches are more than just timekeepers; they\'re statements of style and sophistication. Whether you\'re heading to a formal event, conquering a business meeting, or embarking on a casual adventure, our diverse range of watches ensures you\'ll find the perfect match for any occasion. '),
      ],
    );
  }

  Container _buildIntoImg({assetName}) {
    return Container(
      decoration: BoxDecoration(color: greyColor),
      height: 400,
      width: double.infinity,
      child: Image.asset(
        'assets/$assetName.png',
        height: 220,
      ),
    );
  }

  Container _buildIntoName({title, desc}) {
    return Container(
      decoration: BoxDecoration(color: whiteColor),
      height: 280,
      width: double.infinity,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10, right: 10),
              child: Text(
                title,
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                    color: blackColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
              child: Text(
                desc,
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 0, right: 0),
              child: Positioned(child: buyNowBtn(txt: 'Buy Now')),
            )
          ],
        ),
      ),
    );
  }
}
