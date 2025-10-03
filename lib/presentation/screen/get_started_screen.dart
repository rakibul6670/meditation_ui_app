import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';
import 'package:meditation_ui_app/presentation/widgets/get_started_background.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,

      //============================
      body: GetStartedBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //=================== Title =======================
              AppSpacing.v155,

              Text(
                "Hi Afsar, Welcome",
                style: textTheme.headlineMedium!.copyWith(
                  color: Color(0xffFFECCC),
                  fontWeight: FontWeight.bold,
                ),
              ),
             //======================= Sub title =================

              Text(
                "to Silent Moon",
                style: textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
              AppSpacing.v15,
              //========================== Description ============
              Text(
                "Explore the app,Find some peace of mind to \n  prepare for meditation.",
                textAlign: TextAlign.center,
                style:textTheme.titleMedium,
              ),
             
             //=======================Get Started Button ============
             SizedBox(height: 439,),

             SizedBox(
              height: 63,
              width: 374,
               child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,                                           
                ),
                onPressed: (){},
                 child: Text("GET STARTED")
                 ),
             ),

              //SizedBox(height: 118,),
            
            ],
          ),
        ),
      ),
    );
  }
}
