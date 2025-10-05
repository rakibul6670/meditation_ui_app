import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';
import 'package:meditation_ui_app/data/dummeyData/male_course_play_list.dart';

import '../../data/dummeyData/female_course_play_list.dart';

class VoiceTab extends StatefulWidget {
  const VoiceTab({super.key});

  @override
  State<VoiceTab> createState() => _VoiceTabState();
}

class _VoiceTabState extends State<VoiceTab> {
  //============================ Tab list ==================
  List tabList = ["MALE VOICE", "FEMALE VOICE"];

  bool isSelected = false;
  //==================== Selected course index ===========
  int selectedCourseIndex = 0;

  int selectedTap = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        //======================== Tab bar ===================
        SizedBox(
          height: 45,
          child: ListView.separated(
            itemCount: tabList.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 30);
            },
            itemBuilder: (context, index) {
              final isSelected = selectedTap == index;
              return GestureDetector(
                onTap: () {
                  selectedTap = index;
                  setState(() {});
                },
                child: Column(
                  children: [
                    Text(
                      tabList[index],
                      style: textTheme.titleMedium!.copyWith(
                        color: isSelected
                            ? Color(0xff8E97FD)
                            : Color(0xffA1A4B2),
                      ),
                    ),

                    //============ space===========
                    AppSpacing.v15, //---16
                    Visibility(
                      visible: isSelected,
                      child: Container(
                        width: 46,
                        height: 2,
                        color: Color(0xff8E97FD),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),

        //============================== Voice song list =========
        SizedBox(
          height: 300, //MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: IndexedStack(
            index: selectedTap,
            children: [
              //========#8E97FD #8E97FD
              //---un select #A1A4B2

              //=================== Male course play list ======================
              ListView.builder(
                itemCount: maleCoursePlayList.length,
                itemBuilder: (BuildContext context, int index) {
                  final course = maleCoursePlayList[index];
                  final isSelected = selectedCourseIndex == index;
                  return GestureDetector(
                    onTap: () {
                      selectedCourseIndex = index;
                      setState(() {});
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.play_circle_outline_outlined,
                        size: 35,
                        color: isSelected
                            ? Color(0xff8E97FD)
                            : Color(0xffA1A4B2),
                      ),
                      title: Text(
                        "${course["title"]}",
                        style: textTheme.titleMedium!.copyWith(
                          color: Color(0xff3F414E),
                        ),
                      ),
                      subtitle: Text(
                        "${course["time"]}",
                        style: textTheme.bodySmall!.copyWith(
                          color: Color(0xffA1A4B2),
                        ),
                      ),
                    ),
                  );
                },
              ),

              //=================== Female course play list ====================
              ListView.builder(
                itemCount: femaleCoursePlayList.length,
                itemBuilder: (BuildContext context, int index) {
                  final course = femaleCoursePlayList[index];
                  final isSelected = selectedCourseIndex == index;

                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedCourseIndex = index;
                      });
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.play_circle_outline_outlined,
                        size: 35,
                        color: isSelected
                            ? Color(0xff8E97FD)
                            : Color(0xffA1A4B2),
                      ),
                      title: Text(
                        "${course["title"]}",
                        style: textTheme.titleMedium!.copyWith(
                          color: Color(0xff3F414E),
                        ),
                      ),
                      subtitle: Text(
                        "${course["time"]}",
                        style: textTheme.bodySmall!.copyWith(
                          color: Color(0xffA1A4B2),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
    //Divider(color: Colors.black,)
  }
}
