import 'package:flutter/material.dart';
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSpacing.v82,
                //==================== Title =================
                Text(
                  "What time would you \n like to meditate?",
                  style: textTheme.headlineSmall!.copyWith(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),

                AppSpacing.v15,

                //================== Subtitle ================
                Text(
                  "Any time you can choose but We recommend \n first thing in th morning.",
                  style: textTheme.titleMedium!.copyWith(
                    color: Color(0xffA1A4B2),
                  ),
                ),

                AppSpacing.v30,

                //================ Reminder box=================================
                Container(
                  // pading 12
                  height: 212,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffF5F5F9),
                  ),

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
                          fontSize: 24,
                          fontFamily: "HelveticaNeue",
                          fontWeight: FontWeight.w400,
                        ),
                        highlightedTextStyle: TextStyle(
                          color: Color(0xff263238),
                          fontSize: 24,
                          fontFamily: "HelveticaNeue",
                          fontWeight: FontWeight.w700,
                        ),

                        itemHeight: 60,
                        spacing: 40,

                        isForce2Digits: true,
                        itemWidth: 50,
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

                AppSpacing.v30,
                // -------------- Witch day would you like to meditate ------------
                Text(
                  "What time would you \n like to meditate?",
                  style: textTheme.headlineSmall!.copyWith(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                AppSpacing.v15,
                //================ Subtitle ================
                Text(
                  "Every is best,but we recommend picking\n at least five.",

                  style: textTheme.titleMedium!.copyWith(
                    color: Color(0xffA1A4B2),
                  ),
                ),
                AppSpacing.v40,

                //======================= Day Select =========================
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 10,
                  runSpacing: 10,
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

                AppSpacing.v57,

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
                AppSpacing.v20,

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
                AppSpacing.v60,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
