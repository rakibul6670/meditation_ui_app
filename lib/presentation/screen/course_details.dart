import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditation_ui_app/core/constants/assets_images_path.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';
import 'package:meditation_ui_app/presentation/widgets/details_cover_container.dart';
import 'package:meditation_ui_app/presentation/widgets/voice_tab.dart';

class CourseDetails extends StatefulWidget {
 const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  bool isMaleSelected = true;
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      //============================Body Section===================
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //========================= Cover Image ====================
              DetailsCoverContainer(
                bgImagePath: AssetsImagesPath.courseDetailsCoverBg,
                onTapBackButton: () => Navigator.pop(context),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSpacing.v30,
                    //=====================Course title=========
                    Text(
                      "Happy Mornning",
                      style: textTheme.headlineMedium!.copyWith(
                        color: Color(0xff3F414E),
                      ),
                    ),
                    AppSpacing.v15,

                    //=====================Music time=========
                    Text(
                      "Course",
                      style: textTheme.titleMedium!.copyWith(
                        color: Color(0xffA1A4B2),
                      ),
                    ),
                    AppSpacing.v20,

                    //=====================Music description =========
                    Text(
                      "Ease the mind into a restful night 's sleep with \n "
                      "these deep,ambient tones",
                      style: textTheme.titleSmall!.copyWith(
                        color: Color(0xffA1A4B2),
                      ),
                    ),
                    AppSpacing.v30,
                    //========================= Favorites and Listening ============================
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.heart, color: Color(0xffFF84A2)),
                        AppSpacing.h10,
                        Text(
                          "100 Favorites",
                          style: textTheme.titleSmall!.copyWith(
                            color: Color(0xffA1A4B2),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          FontAwesomeIcons.headphones,
                          color: Color(0xff7FD2F2),
                        ),
                        AppSpacing.h10,
                        Text(
                          "100 Favorites",
                          style: textTheme.titleSmall!.copyWith(
                            color: Color(0xffA1A4B2),
                          ),
                        ),
                        AppSpacing.h56,
                      ],
                    ),

                    //=========================== Tap Bar ========================================
                    AppSpacing.v23, //25
                    VoiceTab(),

                  ],
                ),
              ),
              AppSpacing.v20,
            ],
          ),
        ),
      ),
    );
  }
}
