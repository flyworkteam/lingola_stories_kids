import 'package:flutter/cupertino.dart';
import 'package:lingolakidstories/theme/app_colors.dart';

class NotificationToggle extends StatefulWidget {
  const NotificationToggle({super.key, this.initialValue = true});

  final bool initialValue;

  @override
  State<NotificationToggle> createState() => _NotificationToggleState();
}

class _NotificationToggleState extends State<NotificationToggle> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: _value,
      activeTrackColor: AppColors.primary,
      onChanged: (v) => setState(() => _value = v),
    );
  }
}
