import 'package:flutter/material.dart';
import 'package:fluttercon/common/utils/misc.dart';
import 'package:go_router/go_router.dart';

class LogOutDialog extends StatefulWidget {
  const LogOutDialog({super.key});

  @override
  State<LogOutDialog> createState() => _LogOutDialogState();
}

class _LogOutDialogState extends State<LogOutDialog> {
  @override
  Widget build(BuildContext context) {
    final (isLightMode, colorScheme) = Misc.getTheme(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16) +
          const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Text(
            'Are you sure\nyou want to log out?',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            '''Logging out will end your current session. You can always log back in to pick up right where you left off.''',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(horizontal: 32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'YES, LOG OUT',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => GoRouter.of(context).pop(),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: colorScheme.surface,
                padding: const EdgeInsets.symmetric(horizontal: 32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'CANCEL',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
