import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:meditation_ui_app/core/routes/app_routes.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';
import 'package:meditation_ui_app/presentation/widgets/custom_elevated_button.dart';
import 'package:meditation_ui_app/presentation/widgets/day_select_container.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  //====================== Days List ======================
  List<String> days = ["SU", "MO", "TU", "WE", "TH", "FR", "SA"];
  //================= days Selected list ================
  List<bool> selected = List.filled(7, false);

  //================= Date Time =====================
  DateTime _time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppSpacing.v82,
              SizedBox(height: 22.h,),
              //==================== Title =================
              Text(
                "What time would you \n like to meditate?",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize:24.sp,
                ),
              ),

             // AppSpacing.v15,
              SizedBox(height: 15.h,),

              //================== Subtitle ================
              Text(
                "Any time you can choose but We recommend \n first thing in th morning.",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w300,
                  color: Color(0xffA1A4B2),
                  fontSize:16.sp,
                )
              ),

             // AppSpacing.v30,
              SizedBox(height: 39.h,),

              //================ Reminder box=================================
              Container(
                height: 212.h,
                width: screenSize.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Color(0xffF5F5F9),
                ),

                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //  Divider(color: Colors.white),
                      TimePickerSpinner(
                        alignment: Alignment.center,
                        is24HourMode: false,
                        normalTextStyle: TextStyle(
                          color: Color(0xffA1A4B2),
                          fontSize: 24.sp,
                          fontFamily: "HelveticaNeue",
                          fontWeight: FontWeight.w400,
                        ),
                        highlightedTextStyle: TextStyle(
                          color: Color(0xff263238),
                          fontSize: 24.sp,
                          fontFamily: "HelveticaNeue",
                          fontWeight: FontWeight.w700,
                        ),

                        itemHeight: 50.h,
                        spacing: 34.w,

                        isForce2Digits: true,
                        itemWidth: 40.w,
                        onTimeChange: (time) {
                          setState(() {
                            _time = time;
                          });
                        },
                      ),

                      //  Divider(color: Colors.white),
                    ],
                  ),
                ),
              ),

              //AppSpacing.v30,
              SizedBox(height: 30.h,),
              // -------------- Witch day would you like to meditate ------------
              Text(
                "What time would you \n like to meditate?",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 24.sp
                ),
              ),
             // AppSpacing.v15,
              SizedBox(height: 15.h,),
              //================ Subtitle ================
              Text(
                "Every is best,but we recommend picking\n at least five.",

                style: textTheme.titleMedium!.copyWith(
                  color: Color(0xffA1A4B2),
                ),
              ),
              //AppSpacing.v40,
              SizedBox(height: 40.h,),
              //======================= Day Select =========================
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 10.h,
                runSpacing: 10.h,
                children: List.generate(
                  selected.length,
                  (index) => DaySelectContainer(
                    onTap: () {
                      setState(() {
                        selected[index] = !selected[index];
                      });
                    },
                    dayName: days[index],
                    isSelected: selected[index],
                  ),
                ),
              ),

              //AppSpacing.v57,
              SizedBox(height: 57.h,),

              //====================== Save Button ======================
              CustomElevatedButton(
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.dashboardScreen,
                  (predicate) => false,
                ),
                buttonName: "Save",
              ),

              //========================= No Thanks Button ================
              //AppSpacing.v20,
              SizedBox(height: 20.h,),

              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "No THANKS",
                    style: textTheme.titleSmall!.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              //=============== space ===============
              Spacer()
             //AppSpacing.v60,
              //SizedBox(height: 60.h,),
            ],
          ),
        ),
      ),
    );
  }
}
