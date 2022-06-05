import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outcaster_1st_pro/utils/color.dart';

import '../../utils/text_style.dart';

class iOSUseListTile extends StatelessWidget {
  String title;
  String subTitle = '';
  Icon leadingIcon;

  iOSUseListTile({
    required this.title,
    required this.subTitle,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 15.w,right: 15.w,top: 5.h,bottom: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              leadingIcon,
              Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Text(title,style: iNormalHeadings,),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(subTitle,style: iSubNormalHeadings),
              const Icon(CupertinoIcons.chevron_right,color: greyColor,),
            ],
          ),
        ],
      ),
    );
  }
}

class iOSHeadings extends StatelessWidget {
  String heading;

  iOSHeadings({
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        heading,
        style: iMainHeadings,
      ),
    );
  }
}

class iOSIconTextSwitch extends StatefulWidget {
  String sText;
  Icon sIcon;
  bool sOn;

  iOSIconTextSwitch({
    required this.sIcon,
    required this.sText,
    required this.sOn,
  });

  @override
  State<iOSIconTextSwitch> createState() => _iOSIconTextSwitchState();
}

class _iOSIconTextSwitchState extends State<iOSIconTextSwitch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w,right: 15.w,top: 5.h,bottom: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              widget.sIcon,
              Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Text(widget.sText,style: iNormalHeadings,),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CupertinoSwitch(
                value: widget.sOn,
                activeColor: mainColor,
                thumbColor: whiteColor,
                onChanged: (val) {
                  setState(() {
                    widget.sOn = val;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}


