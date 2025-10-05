import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meditation_ui_app/core/routes/app_routes.dart';
import 'package:meditation_ui_app/data/dummeyData/choose_topic_data_list.dart';

class GridViewStaggerSection extends StatelessWidget {
  GridViewStaggerSection({super.key});

  //=====================Previus value of big container index =====
  int prev = 1;
  //===================== Next value of big container index =====
  int next = 2;
  //================ Big Container List ================
  List<int> bigItems = [];

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: List.generate(chooseTopicDataList.length, (index) {
        final chooseTopicData = chooseTopicDataList[index];
       // debugPrint(chooseTopicData["img"]);
        bigItems.add(prev);

        if (next - prev == 1) {
          prev = next;
          next += 3;
        } else if (next - prev == 3) {
          prev = next;
          next += 1;
        }

        bool isBig = bigItems.contains(index);
        //bool isBig = (index % 4 == 0) || (index % 7 == 3);
        return StaggeredGridTile.extent(
          crossAxisCellCount: 1, // potita item 1 column nibe
          mainAxisExtent: isBig ? 210 : 167, // height change condition onujai
          child: GestureDetector(
            onTap: () => Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoutes.reminderScreen,
              (predicate) => false,
            ),
            child: Container(
              width: 167,
              decoration: BoxDecoration(
                color: Color(chooseTopicData["bgColor"]),
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(chooseTopicData["img"]),
                  fit: BoxFit.contain,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    chooseTopicData["title"],
                    style: TextStyle(
                      color: isBig ? Colors.white : Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
