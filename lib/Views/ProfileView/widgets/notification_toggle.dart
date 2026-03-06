import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lingolakidstories/Riverpod/Providers/notification_provider.dart';
import 'package:lingolakidstories/theme/app_colors.dart';

class NotificationToggle extends ConsumerStatefulWidget {
  const NotificationToggle({super.key});

  @override
  ConsumerState<NotificationToggle> createState() => _NotificationToggleState();
}

class _NotificationToggleState extends ConsumerState<NotificationToggle> {
  @override
  Widget build(BuildContext context) {
    final settingsAsync = ref.watch(notificationSettingsProvider);

    return settingsAsync.when(
      data: (settings) {
        final isEnabled = settings?.notificationsEnabled ?? false;
        return CupertinoSwitch(
          value: isEnabled,
          activeTrackColor: AppColors.primary,
          onChanged: (v) async {
            // Optimistically update or just wait for provider refresh
            await ref
                .read(notificationSettingsProvider.notifier)
                .toggleNotifications(v);
          },
        );
      },
      loading: () => const CupertinoActivityIndicator(),
      error: (_, _) => CupertinoSwitch(value: false, onChanged: null),
    );
  }
}
