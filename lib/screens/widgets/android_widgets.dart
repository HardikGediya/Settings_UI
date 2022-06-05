import 'package:flutter/material.dart';
import 'package:outcaster_1st_pro/utils/color.dart';

import '../../utils/text_style.dart';

class UseListTile extends StatelessWidget {
  String title;
  String subTitle = '';
  Icon leadingIcon;

  UseListTile({
    required this.title,
    required this.subTitle,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: normalHeadings,
      ),
      subtitle: Text(subTitle),
      leading: leadingIcon,
    );
  }
}

class Headings extends StatelessWidget {
  String heading;

  Headings({
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        heading,
        style: mainHeadings,
      ),
    );
  }
}

class IconText extends StatelessWidget {
  String text = '';
  Icon icon;

  IconText({
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: normalHeadings,
      ),
      leading: icon,
    );
  }
}

class IconTextSwitch extends StatefulWidget {
  String sText;
  Icon sIcon;
  bool sOn;

  IconTextSwitch({
    required this.sIcon,
    required this.sText,
    required this.sOn,
  });

  @override
  State<IconTextSwitch> createState() => _IconTextSwitchState();
}

class _IconTextSwitchState extends State<IconTextSwitch> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.sText,
        style: normalHeadings,
      ),
      leading: widget.sIcon,
      trailing: Switch(
        value: widget.sOn,
        activeColor: mainColor,
        inactiveThumbColor: whiteColor,
        onChanged: (val) {
          setState(() {
            widget.sOn = val;
          });
        },
      ),
    );
  }
}


