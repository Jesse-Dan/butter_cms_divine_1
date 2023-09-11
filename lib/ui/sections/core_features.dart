// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:butter_cms_divine_1/ui/layout_view.dart';

class CoreFeatures extends StatefulWidget {
  const CoreFeatures({super.key});

  @override
  State<CoreFeatures> createState() => _CoreFeaturesState();
}

class _CoreFeaturesState extends State<CoreFeatures> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: whiteColor),
      width: double.infinity,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 10, right: 10),
                child: Text('Core Features',
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w800,
                        fontSize: 25,
                        color: Colors.lightBlueAccent.withOpacity(0.9)),
                    textAlign: TextAlign.center)),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 10, right: 10, bottom: 35.0),
              child: Text(
                'Core premium feel features from our brand\'s luxirious men\'s wrist watches.',
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: blackColor),
                textAlign: TextAlign.center,
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: coreFeatures.length,
              itemBuilder: (_, i) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 12.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: blueColor, borderRadius: BorderRadius.circular(3)),
                  height: 250,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: 8,
                        child: Image.asset(
                          coreFeatures[i].imgPath,
                          height: 220,
                        ),
                      ),
                      Positioned(
                        right: 12,
                        child: SingleChildScrollView(
                          physics: const NeverScrollableScrollPhysics(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(coreFeatures[i].icon, size: 40),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20.0,
                                ),
                                child: Text(
                                  coreFeatures[i].featureName,
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20,
                                      color: whiteColor),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 20, right: 0),
                                child: Text(
                                  coreFeatures[i].featureDesc,
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 12,
                                      color: blackColor),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}

class CoreFeatureModel {
  final String featureName;
  final IconData icon;
  final String featureDesc;
  final String imgPath;

  CoreFeatureModel(
      {required this.featureName,
      required this.icon,
      required this.featureDesc,
      required this.imgPath});
}

final List<CoreFeatureModel> coreFeatures = [
  CoreFeatureModel(
    featureName: 'Sleep Tracking',
    icon: Icons.nightlight_round,
    featureDesc: 'Track your sleep patterns and quality.',
    imgPath: 'assets/img_4.png',
  ),
  CoreFeatureModel(
    featureName: 'Step Counter',
    icon: Icons.directions_walk,
    featureDesc: 'Count your daily steps and distance \ntraveled.',
    imgPath: 'assets/img_6.png',
  ),
  CoreFeatureModel(
    featureName: 'Voice Commands',
    icon: Icons.mic,
    featureDesc: 'Control your watch using voice commands.',
    imgPath: 'assets/img_1.png',
  ),
  CoreFeatureModel(
    featureName: 'GPS Navigation',
    icon: Icons.location_on,
    featureDesc: 'Navigate using GPS and real-time \nlocation tracking.',
    imgPath: 'assets/img_5.png',
  ),
  CoreFeatureModel(
    featureName: 'Watch Faces',
    icon: Icons.watch,
    featureDesc: 'Customize your watch with various \nwatch face designs.',
    imgPath: 'assets/img_4.png',
  ),
];
