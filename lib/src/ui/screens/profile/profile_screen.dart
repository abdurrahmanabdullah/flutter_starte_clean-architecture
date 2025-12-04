import 'package:clean_starter/src/ui/screens/profile/profile_portrait_view.dart';
import 'package:clean_starter/src/ui/widgets/screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends Screen {
  const ProfileScreen({super.key});

  @override
  Widget buildViewWrapper({required Widget child}) {
    return Scaffold(backgroundColor: Colors.transparent, body: child);
  }

  @override
  Widget buildMobilePortraitView(BuildContext context) {
    return const ProfilePortraitView();
  }
}
