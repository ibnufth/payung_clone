import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

class UserSettings extends StatefulWidget {
  const UserSettings({super.key});

  @override
  State<UserSettings> createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            EasyStepper(
              lineStyle: LineStyle(
                lineType: LineType.normal,
                lineLength: 100,
                defaultLineColor: Colors.white,
                activeLineColor: Colors.amber[200],
                finishedLineColor: Colors.amber,
                lineThickness: 2,
              ),
              activeStepTextColor: Colors.amber,
              finishedStepTextColor: Colors.amber,
              finishedStepBackgroundColor: Colors.amber,
              unreachedStepBackgroundColor: Colors.amber[200],
              activeStepBackgroundColor: Colors.amber,
              internalPadding: 0,
              showLoadingAnimation: false,
              stepRadius: 20,
              showStepBorder: false,
              activeStep: 0,
              steps: const [
                EasyStep(
                  customStep: Text("1"),
                  title: "Biodata",
                ),
                EasyStep(
                  customStep: Text("2"),
                  title: "Alamat Pribadi",
                ),
                EasyStep(
                  customStep: Text("3"),
                  title: "Informasi\nPerusahaan",
                ),
              ],
            ),
            PageView(
              children: [
                ListView(
                  children: const [],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
