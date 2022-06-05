import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outcaster_1st_pro/screens/widgets/android_widgets.dart';
import 'package:outcaster_1st_pro/utils/color.dart';
import 'package:outcaster_1st_pro/utils/text_style.dart';

import '../../utils/strings.dart';
import '../../utils/vars.dart';

class SettingsUIAndroidPage extends StatefulWidget {
  const SettingsUIAndroidPage({Key? key}) : super(key: key);

  @override
  State<SettingsUIAndroidPage> createState() => _SettingsUIAndroidPageState();
}

class _SettingsUIAndroidPageState extends State<SettingsUIAndroidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(settingsUi),
        backgroundColor: Colors.red,
        actions: [
          InkWell(
            onTap: (){
              setState(() {
                isIOS = !isIOS;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Transform.scale(scale : 0.7,child: Image.asset('assets/icons/ios.png',color: whiteColor,)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Common
            Headings(heading: common),
            UseListTile(title: language,subTitle: english,leadingIcon: const Icon(Icons.language_sharp,color: greyColor,)),
            const Divider(thickness: 1),
            UseListTile(title: environment,subTitle: production,leadingIcon: const Icon(Icons.cloud_outlined,color: greyColor,)),

            /// Account
            Headings(heading: account),
            IconText(text: phoneNumber,icon: const Icon(Icons.call,color: greyColor,)),
            const Divider(thickness: 1),
            IconText(text: email,icon: const Icon(Icons.email,color: greyColor,)),
            const Divider(thickness: 1),
            IconText(text: signOut,icon: const Icon(Icons.logout,color: greyColor,)),

            /// Security
            Headings(heading: security),
            IconTextSwitch(sText: lockAppInBackground,sIcon: const Icon(Icons.lock_outlined,color: greyColor,),sOn: true),
            const Divider(thickness: 1),
            IconTextSwitch(sText: useFingerprint,sIcon: const Icon(Icons.fingerprint,color: greyColor,),sOn: false),
            const Divider(thickness: 1),
            IconTextSwitch(sText: changePassword,sIcon: const Icon(Icons.lock,color: greyColor,),sOn: true),
            /// Misc
            Headings(heading: misc),
            IconText(text: termsOfService,icon: const Icon(Icons.feed_rounded,color: greyColor,)),
            const Divider(thickness: 1),
            IconText(text: openSourceLicenses,icon: const Icon(Icons.class_rounded ,color: greyColor,)),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
