// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingSwitch extends StatefulWidget {
  final String title;
  final Color bgColor;
  final Color iconColor;
  final IconData icon;
  final bool value;
  final Function(bool value) onTap;
  bool isDarkModeEnabled = false;

  SettingSwitch({
    Key? key,
    required this.title,
    required this.bgColor,
    required this.iconColor,
    required this.icon,
    required this.value,
    required this.onTap,
    this.isDarkModeEnabled = false,
  }) : super(key: key);

  @override
  _SettingSwitchState createState() => _SettingSwitchState();
}

class _SettingSwitchState extends State<SettingSwitch> {
  bool isDarkModeEnabled = false;

  void toggleDarkMode(bool newValue) {
    setState(() {
      isDarkModeEnabled = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Theme(
        data: isDarkModeEnabled ? ThemeData.dark() : ThemeData.light(),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.bgColor,
              ),
              child: Icon(
                widget.icon,
                color: widget.iconColor,
              ),
            ),
            const SizedBox(width: 20),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Text(
              widget.value ? "On" : "Off",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 20),
            CupertinoSwitch(value: widget.value, onChanged: widget.onTap),
          ],
        ),
      ),
    );
  }
}
