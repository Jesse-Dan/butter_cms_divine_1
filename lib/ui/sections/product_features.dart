// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:butter_cms_divine_1/ui/layout_view.dart';

class ProductFeatures extends StatefulWidget {
  const ProductFeatures({super.key});

  @override
  State<ProductFeatures> createState() => _ProductFeaturesState();
}

class _ProductFeaturesState extends State<ProductFeatures> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: greyColor),
        width: double.infinity,
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 10, right: 10),
              child: Text('Product Features',
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                      color: blackColor),
                  textAlign: TextAlign.center)),
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, left: 10, right: 10, bottom: 35.0),
            child: Text(
              'Explore our premium feel features from our brand\'s luxirious men\'s wrist watches.',
              style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: blackColor.withOpacity(0.5)),
              textAlign: TextAlign.center,
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: features.length,
            itemBuilder: (_, i) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 12.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(3)),
                height: 250,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: greyColor,
                      child: Icon(features[i].icon, size: 40),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Text(
                        features[i].featureName,
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                            color: blueColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                      child: Text(
                        features[i].featureDesc,
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                            color: blackColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}

class FeatureModel {
  final String featureName;
  final IconData icon;
  final String featureDesc;
  FeatureModel(
      {required this.featureName,
      required this.icon,
      required this.featureDesc});
}

final List<FeatureModel> features = [
  FeatureModel(
    featureName: 'Notifications',
    icon: Icons.notifications,
    featureDesc: 'Receive notifications on your watch.',
  ),
  FeatureModel(
    featureName: 'Heart Rate Monitoring',
    icon: Icons.favorite,
    featureDesc: 'Monitor your heart rate in real-time.',
  ),
  FeatureModel(
    featureName: 'Fitness Tracking',
    icon: Icons.directions_run,
    featureDesc: 'Track your workouts and fitness activities.',
  ),
  FeatureModel(
    featureName: 'Weather Updates',
    icon: Icons.cloud,
    featureDesc: 'Get real-time weather updates on your watch.',
  ),
  FeatureModel(
    featureName: 'Music Control',
    icon: Icons.music_note,
    featureDesc: 'Control your music playback from your watch.',
  ),
];
