import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/constants/assets_images_path.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';

class AllTapScreen extends StatelessWidget {
  const AllTapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: 233,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsImagesPath.boxBackground),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 30),
                //-----------------  Cover image Title -------------
                Text("The Ocean Moon", style: textTheme.headlineMedium),
                AppSpacing.v5,
                //---------------- Cover image Sub title--------------
                Text(
                  "No-stop 8- hour mixes of our \n most popular sleep audio",
                  style: textTheme.titleMedium,
                ),
      
                AppSpacing.v32,
                //------------------------Start image button---------------
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    AssetsImagesPath.startButton,
                    height: 35,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
         
          //----------------------Card --------------------
          SizedBox(height: 20,),
         GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20),
           itemBuilder: (context,index){
            return Column(
              children: [
         
                Image.asset(AssetsImagesPath.nightIsland,width: 177, height: 122,),
         
                Text("Night Island",style: TextStyle(
                  color: Colors.amber),
                ),
         
                Text("45 MIN . SlEEP MUSIC",style: TextStyle(
                  color: const Color.fromARGB(255, 5, 200, 141)),)
         
         
         
              ],
            );
           }
           ),
        
        ],
      ),
    );
  }
}
