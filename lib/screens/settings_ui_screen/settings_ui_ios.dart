import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outcaster_1st_pro/screens/widgets/android_widgets.dart';
import 'package:outcaster_1st_pro/utils/color.dart';
import 'package:outcaster_1st_pro/utils/text_style.dart';

import '../../utils/strings.dart';
import '../../utils/vars.dart';
import '../widgets/ios_widgets.dart';

class SettingsUIiOSPage extends StatefulWidget {
  const SettingsUIiOSPage({Key? key}) : super(key: key);

  @override
  State<SettingsUIiOSPage> createState() => _SettingsUIiOSPageState();
}

class _SettingsUIiOSPageState extends State<SettingsUIiOSPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: mainColor,

        middle:  Text(settingsUi,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: whiteColor,fontSize: 20.sp,
            fontFamily: 'SF Pro',
          ),
        ),

        trailing: GestureDetector(
          onTap: (){
            setState(() {
              isIOS = !isIOS;
            });
          },
          child:  Padding(
            padding: const EdgeInsets.only(right: 0),
            child: Transform.scale(scale: 0.7,child: Image.asset('assets/icons/android.png',color: whiteColor,)),
          ),
        ),

      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Common
            iOSHeadings(heading: common),
            const Divider(),
            iOSUseListTile(title: language,subTitle: english,leadingIcon: const Icon(Icons.language_sharp,color: greyColor,)),
            const Divider(),
            iOSUseListTile(title: environment,subTitle: production,leadingIcon: const Icon(Icons.cloud_outlined,color: greyColor,)),
            const Divider(),

            /// Account
            iOSHeadings(heading: account),
            const Divider(),
            iOSUseListTile(title: phoneNumber,subTitle: '',leadingIcon: const Icon(Icons.call,color: greyColor,)),
            const Divider(),
            iOSUseListTile(title: email,subTitle: '',leadingIcon: const Icon(Icons.email,color: greyColor,)),
            const Divider(),
            iOSUseListTile(title: signOut,subTitle: '',leadingIcon: const Icon(Icons.logout,color: greyColor,)),
            const Divider(),


            /// Security
            iOSHeadings(heading: security),
            const Divider(),
            iOSIconTextSwitch(sIcon: const Icon(Icons.lock_outlined,color: greyColor,), sText: lockAppInBackground, sOn: true),
            const Divider(),
            iOSIconTextSwitch(sIcon: const Icon(Icons.fingerprint,color: greyColor,), sText: useFingerprint, sOn: false),
            const Divider(),
            iOSIconTextSwitch(sIcon: const Icon(Icons.lock,color: greyColor,), sText: changePassword, sOn: true),
            const Divider(),

            /// Misc
            iOSHeadings(heading: common),
            const Divider(),
            iOSUseListTile(title: termsOfService,subTitle: '',leadingIcon: const Icon(Icons.feed_rounded,color: greyColor,)),
            const Divider(),
            iOSUseListTile(title: openSourceLicenses,subTitle: '',leadingIcon: const Icon(Icons.class_rounded,color: greyColor,)),
            const Divider(),

            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
