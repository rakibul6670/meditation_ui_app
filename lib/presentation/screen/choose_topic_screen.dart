import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/constants/assets_images_path.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';

class ChooseTopicScreen extends StatelessWidget {
  const ChooseTopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SizedBox(
            height: screenSize.height ,
              width: screenSize.width,
          child: Stack(
            children: [

              //======================== Background Image ==================
              Positioned(
                top: 107,
                child: Image.asset(AssetsImagesPath.ChooseTopicScreenBackground,
                height: 755,
                width:screenSize.width,
                fit: BoxFit.cover,
                ),
              ),
            
            //========================= Foreground Section =================
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 76),
                          
                      //========================== Title ====================
                      Text(
                        "What Brings your",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Inter",
                          
                          color: Color(0xFF3F414E),
                        ),
                      ),
                          
                      Text("to silent Moon ?", style: TextStyle(
                          fontSize: 28,
                          
                          fontFamily: "Inter",
                          
                          color: Color(0xFF3F414E),
                        ),),
                     AppSpacing.v10,
                      //======================== Sub title =====================
                      Text(
                        "Choose a topic to focus on:",
                        style: textTheme.titleLarge!.copyWith(
                          color: Color(0xffA1A4B2),
                        ),
                      ),
                      AppSpacing.v30,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
