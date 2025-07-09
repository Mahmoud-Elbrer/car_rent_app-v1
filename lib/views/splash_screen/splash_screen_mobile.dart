import 'dart:async';

import '../../backend/local_storage/local_storage.dart';
import '../../routes/routes.dart';
import '../../utils/basic_screen_imports.dart';

class SplashScreenMobile extends StatefulWidget {
  const SplashScreenMobile({super.key});

  @override
  State<SplashScreenMobile> createState() => _SplashScreenMobileState();
}

class _SplashScreenMobileState extends State<SplashScreenMobile> {
  @override
  void initState() {
    super.initState();
    // Navigate to another screen after 2 seconds
    // Timer(const Duration(seconds: 2), () {
    //   Get.offAllNamed(
    //     LocalStorage.isLoggedIn()
    //         ? Routes.bottomNavBar
    //         : Routes.onboardScreen,
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Make background fill the screen
        children: [
          Image.asset(
            'assets/logo/app/ford.jpeg', // <-- Your background image
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo/app/app_launcher.png',
                  width: 300,
                ),
                SizedBox(height: 20,) ,
                SizedBox(height: 20 , width: 20 , child: CircularProgressIndicator(strokeWidth: 4,
                  color: CustomColor.primaryDarkColor,))
              ],
            ),
          ),

        ],
      ),
    );
  }
}




/*
import '/backend/utils/custom_loading_api.dart';
import '/controller/basic_settings/basic_settings_controller.dart';

import '../../utils/basic_screen_imports.dart';

class SplashScreenMobile extends StatelessWidget {
  SplashScreenMobile({super.key});
  final controller = Get.put(BasicSettingsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.isLoading
          ? const CustomLoadingAPI()
          : _bodyWidget(context)),
    );
  }

  _bodyWidget(BuildContext context) {
    return Image.network(
      controller.splashImage.value,
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
    );
  }
}

 */
