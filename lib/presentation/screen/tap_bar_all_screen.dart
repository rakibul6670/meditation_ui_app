import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/constants/assets_images_path.dart';
import 'package:meditation_ui_app/presentation/widgets/music_card.dart';
import '../widgets/cover_image_container.dart';

class TapBarAllScreen extends StatelessWidget {
  const TapBarAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        //-------------------Cover image container---------------------
        CoverImageContainer(textTheme: textTheme),

        //=====================Music Card list ==================
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return MusicCard(
              imagePath: AssetsImagesPath.nightIsland,
              title: "Night Island",
              time: "45 MIN . SLEEP MUSIC",
            );
          },
        ),
      ],
    );
  }
}
