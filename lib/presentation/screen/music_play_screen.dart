import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/constants/assets_icons_path.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';
import 'package:meditation_ui_app/presentation/widgets/music_play_screen_background.dart';

class MusicPlayScreen extends StatefulWidget {
   const MusicPlayScreen({super.key});

  @override
  State<MusicPlayScreen> createState() => _MusicPlayScreenState();
}

class _MusicPlayScreenState extends State<MusicPlayScreen> {
   double currentDuration = 1.30;

   double totalDuration = 45.00;

   late double currentPosition = (currentDuration / totalDuration) * 100;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: MusicPlayScreenBackground(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                AppSpacing.v391,
        
                Text("Night Island", style: textTheme.headlineMedium),
                AppSpacing.v10,
        
                Text("Music sub title", style: textTheme.titleLarge),
        
                //======================= Music rewind , forward and play button Section ==================
                AppSpacing.v70,
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //================== Music Rewind Button =================
                   // AppSpacing.h63,
        
                    Image.asset(
                      AssetsIconsPath.musicRewind,
                      height: 39,
                      width: 38,
                      fit: BoxFit.cover,
                    ),
                   // AppSpacing.h56,
        
                    // ============== Music play Button=============
                    Image.asset(
                      AssetsIconsPath.musicPlayButton,
                      height: 109,
                      width: 109,
                      fit: BoxFit.cover,
                    ),
        
                    //================== Music Rewind Button =================
                    Image.asset(
                      AssetsIconsPath.musicForward,
                      height: 39,
                      width: 38,
                      fit: BoxFit.cover,
                    ),
                  //  AppSpacing.h63,
                  ],
                ),
        
                //==================== Music time Section ========================
               AppSpacing.v60,
                // Slider
                Slider(
                  value: currentDuration,
                  min:0,
                  max: totalDuration,
                  activeColor: Colors.blue,
                  inactiveColor: Colors.grey,
                  onChanged: (value) {
                    currentDuration = value;
                    setState(() {

                    });
                  },
                ),
        

        
                AppSpacing.v20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //---------------Start time-----------
                    Text(currentDuration.toDouble().toStringAsFixed(2), style: textTheme.titleMedium),
                    //-------------End time------------
                    Text(totalDuration.toDouble().toStringAsFixed(2), style: textTheme.titleMedium),
                  ],
                ),
                AppSpacing.v20,



              ],
            ),
          ),
        ),
      ),
    );
  }
}
