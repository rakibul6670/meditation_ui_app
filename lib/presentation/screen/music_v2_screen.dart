import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/constants/assets_icons_path.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';
import 'package:meditation_ui_app/presentation/widgets/music_v2_bg.dart';

class MusicV2Screen extends StatefulWidget {
  const MusicV2Screen({super.key});

  @override
  State<MusicV2Screen> createState() => _MusicV2ScreenState();
}

class _MusicV2ScreenState extends State<MusicV2Screen> {
  //=============== music time ========
  double currentDuration = 1.30;
  double totalDuration = 40.0;

  //============== CurrentPosition ================
  double currentPosition = 0;

  //======================= is play button play or pause ========
  bool isPlay = false;

  

  @override
  void initState(){
    super.initState();
    if(totalDuration != 0){
      currentPosition =( currentDuration / totalDuration) * 100;
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      body: MusicV2Bg(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [

              SizedBox(height: 391,),
          
              //================== Music Name ===================
              Text("Focus Attention",style:textTheme.headlineMedium!.copyWith(
                color: Colors.black,
              ),),

              //======================= Music rewind , forward and play button Section ============================
                AppSpacing.v70,
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //================== Music Rewind Button ========
                   // AppSpacing.h63,
                     GestureDetector(
                      onTap: () {
                        if(currentDuration > 0.10){
                          currentDuration -= 0.10;
                        }
                        setState(() {
                          
                        });
                      },
                      child: Icon(Icons.replay_10,size: 40,)),

                   //Spacing.h56,
        
                    // ============== Music play Button=======

                    Container(
                      height: 87,
                      width: 87,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle
                      ),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isPlay = !isPlay;
                          });

                        },
                        child: Icon( isPlay? Icons.play_circle : Icons.pause,color: Colors.white,size: 40,)),
                    ),


                    //================== Music Rewind Button =========
                    GestureDetector(
                      onTap: () {
                        if(currentDuration > 0.10){
                          currentDuration += 0.10;
                        }
                        setState(() {
                          
                        });
                      },
                      child: Icon(Icons.forward_10_sharp,size: 40,))
                  
                  //  AppSpacing.h63,
                  ],
                ),
        
                //==================== Music time Section ===
               AppSpacing.v60,
          
          
             //======================= Music Slider ===========================================================
              Slider(
                activeColor: Color(0xff3F414E),
                inactiveColor: Color(0xffA0A3B1),
                thumbColor: const Color(0xff3F414E),
                value: currentDuration,
                min: 0,
                max: totalDuration,
                onChanged: (value) {
                  currentDuration = value;
                  setState(() {
                    
                  });
                },
              ),
            
             //===================== Current and total Duration =============
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              //================== Current Durarion =======
              Text(currentDuration.toStringAsFixed(2),style: textTheme.titleMedium!.copyWith(
                color: Color(0xff3F414E)
              ),),
          
              //==================Total duration =======
              Text(totalDuration.toStringAsFixed(2),style: textTheme.titleMedium!.copyWith(
                color: Color(0xff3F414E),
              ),),
          
          
             ],),
          
          
            
            ],
          ),
        ),
      ),
    );
  }
}
