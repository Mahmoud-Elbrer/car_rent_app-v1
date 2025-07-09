import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double scale;

  const LogoWidget({super.key, this.scale = 16});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.1,
      width: MediaQuery.sizeOf(context).width * 0.3,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/logo/app/app_launcher.png'), // your local asset path
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}



/*
import '../../utils/basic_screen_imports.dart';
import '/backend/local_storage/local_storage.dart';
import '/controller/basic_settings/basic_settings_controller.dart';

class LogoWidget extends StatelessWidget {
  final double scale;
  LogoWidget({super.key, this.scale = 16});
  final basicSettingController = Get.put(BasicSettingsController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.1,
      width: MediaQuery.sizeOf(context).width * 0.3,
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(LocalStorage.getImage().toString(),),fit: BoxFit.contain,),),
    );
  }
}

 */
