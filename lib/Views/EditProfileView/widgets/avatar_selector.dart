import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/theme/app_colors.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';

class AvatarSelector extends StatelessWidget {
  const AvatarSelector({
    super.key,
    required this.selectedAvatar,
    this.onChanged,
  });

  /// Current selected avatar filename (e.g. 'avatar1.svg').
  final String selectedAvatar;

  /// Called when a new avatar is tapped.
  final ValueChanged<String>? onChanged;

  /// All available avatar filenames.
  static const _avatarFiles = [
    'ic_avatar1.svg',
    'ic_avatar2.svg',
    'ic_avatar3.svg',
    'ic_avatar4.svg',
    'ic_avatar5.svg',
    'ic_avatar6.svg',
    'ic_avatar7.svg',
  ];

  /// Convert filename to full asset path: avatar1.svg → assets/icons/ic_avatar1.svg
  static String assetPath(String filename) {
    final name = filename.replaceAll('.svg', '');
    return 'assets/icons/$name.svg';
  }

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
              assetPath(selectedAvatar),
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
            itemCount: _avatarFiles.length,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final file = _avatarFiles[index];
              final isSelected = file == selectedAvatar;
              return GestureDetector(
                onTap: () => onChanged?.call(file),
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
                    child: SvgPicture.asset(assetPath(file), fit: BoxFit.cover),
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
