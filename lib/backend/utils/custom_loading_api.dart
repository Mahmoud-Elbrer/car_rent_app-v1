import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoadingAPI extends StatelessWidget {
  const CustomLoadingAPI({
    super.key,
    this.color,
  });
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitPulse(
        color: color ?? Theme.of(context).primaryColor,
      ),
    );
  }
}
