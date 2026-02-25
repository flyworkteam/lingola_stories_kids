import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

class AvatarSelector extends StatefulWidget {
  const AvatarSelector({super.key});

  @override
  State<AvatarSelector> createState() => _AvatarSelectorState();
}

class _AvatarSelectorState extends State<AvatarSelector> {
  final List<String> _avatars = [
    AppIcons.avatar1,
    AppIcons.avatar2,
    AppIcons.avatar3,
    AppIcons.avatar4,
    AppIcons.avatar5,
    AppIcons.avatar6,
    AppIcons.avatar7,
  ];

  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Selected avatar large display
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primary, width: 2.5),
          ),
          child: ClipOval(
            child: SvgPicture.asset(
              _avatars[_selectedIndex],
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          context.t.editProfile.changePhoto,
          style: AppTextStyles.body(13, color: AppColors.primary),
        ),
        const SizedBox(height: 16),
        // Horizontal avatar list
        SizedBox(
          height: 60,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
            itemCount: _avatars.length,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final isSelected = index == _selectedIndex;
              return GestureDetector(
                onTap: () => setState(() => _selectedIndex = index),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isSelected
                          ? AppColors.primary
                          : Colors.transparent,
                      width: 2.5,
                    ),
                  ),
                  child: ClipOval(
                    child: SvgPicture.asset(_avatars[index], fit: BoxFit.cover),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
