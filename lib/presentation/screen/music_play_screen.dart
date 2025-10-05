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

  //=================== isPlay ============
  bool isPlay = false;

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
                    //================== Music Rewind Button ========
                    // AppSpacing.h63,
                    GestureDetector(
                      onTap: () {
                        if (currentDuration > 0.10) {
                          currentDuration -= 0.10;
                        }
                        setState(() {});
                      },
                      child: Icon(Icons.replay_10, size: 40,color: Colors.white,),
                    ),

                    //Spacing.h56,

                    // ============== Music play Button=======
                    Container(
                      height: 87,
                      width: 87,
                      decoration: BoxDecoration(
                        //e6e7f2
                        color: Color(0xffe6e7f2),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey,width: 7)
                        ),
                        


                        
                    
                     
                     


                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPlay = !isPlay;
                          });
                        },
                        child: Icon(
                          isPlay ? Icons.play_circle : Icons.pause,
                          color: Color(0xff3F414E),
                          size: 40,
                        ),
                      ),
                    ),

                    //================== Music Rewind Button =========
                    GestureDetector(
                      onTap: () {
                        if (currentDuration > 0.10) {
                          currentDuration += 0.10;
                        }
                        setState(() {});
                      },
                      child: Icon(Icons.forward_10_sharp, size: 40,color: Colors.white,),
                    ),

                    //  AppSpacing.h63,
                  ],
                ),

                //==================== Music time Section ========================
                AppSpacing.v60,
                // Slider
                Slider(
                  value: currentDuration,
                  min: 0,
                  max: totalDuration,
                  activeColor: Colors.blue,
                  inactiveColor: Colors.grey,
                  onChanged: (value) {
                    currentDuration = value;
                    setState(() {});
                  },
                ),

                AppSpacing.v20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //---------------Start time-----------
                    Text(
                      currentDuration.toDouble().toStringAsFixed(2),
                      style: textTheme.titleMedium,
                    ),
                    //-------------End time------------
                    Text(
                      totalDuration.toDouble().toStringAsFixed(2),
                      style: textTheme.titleMedium,
                    ),
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
