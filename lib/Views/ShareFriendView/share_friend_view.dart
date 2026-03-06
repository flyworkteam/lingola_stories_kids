import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lingolakidstories/Riverpod/Providers/user_provider.dart';
import 'package:lingolakidstories/Views/ShareFriendView/widgets/share_link_field.dart';
import 'package:lingolakidstories/gen/strings.g.dart';
import 'package:lingolakidstories/shared/toast.dart';
import 'package:lingolakidstories/theme/app_border_radius.dart';
import 'package:lingolakidstories/theme/app_paddings.dart';
import 'package:lingolakidstories/theme/app_text_styles.dart';
import 'package:lingolakidstories/utils/app_assets.dart';

/// Call [ShareFriendBottomSheet.show] to display this as a modal bottom sheet.
class ShareFriendBottomSheet extends ConsumerStatefulWidget {
  const ShareFriendBottomSheet({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppBorderRadius.xl),
        ),
      ),
      builder: (_) => const ShareFriendBottomSheet(),
    );
  }

  @override
  ConsumerState<ShareFriendBottomSheet> createState() =>
      _ShareFriendBottomSheetState();
}

class _ShareFriendBottomSheetState
    extends ConsumerState<ShareFriendBottomSheet> {
  bool _showCopied = false;

  void _onCopy() {
    setState(() => _showCopied = true);
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) setState(() => _showCopied = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    final userAsync = ref.watch(userProfileProvider);
    final invitationCode = userAsync.valueOrNull?.user.invitationCode ?? '';
    final inviteLink =
        'https://lingolastorieskids.app/invite?code=$invitationCode';

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.xl,
          AppSpacing.md,
          AppSpacing.xl,
          AppSpacing.xxl,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Drag handle
            Container(
              width: 49,
              height: 6,
              decoration: BoxDecoration(
                color: const Color(0xFF000000).withValues(alpha: 0.3),
                borderRadius: AppBorderRadius.pillRadius,
              ),
            ),
            const SizedBox(height: AppSpacing.xl),

            // Title
            Text(
              t.share.title,
              style: AppTextStyles.heading(
                20,
                FontWeight.w700,
                color: Colors.black,
                letterSpacing: -0.05,
              ),
            ),
            const SizedBox(height: 8),

            // Description
            Text(
              context.t.share.inviteDescription,
              style: AppTextStyles.body(
                16,
                weight: FontWeight.w300,
                letterSpacing: -0.05,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.xl),

            // Link field
            ShareLinkField(link: inviteLink, onCopy: _onCopy),
            const SizedBox(height: AppSpacing.md),

            // Copied toast
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: _showCopied
                  ? Toast(
                      key: const ValueKey('toast'),
                      backgroundColor: const Color(0xFFEBF1FD),
                      appIconColor: const Color(0xFF4679F6),
                      icon: AppIcons.copy,
                      title: context.t.share.linkCopied,
                      message: context.t.share.linkCopiedMessage,
                      onDismiss: () => setState(() => _showCopied = false),
                    )
                  : const SizedBox.shrink(key: ValueKey('empty')),
            ),
          ],
        ),
      ),
    );
  }
}
