import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/widgets/gradient_pill_button.dart';

/// Shared full-screen chrome for all entry-editing forms: a close (X) +
/// title header with a tappable time pill, a scrollable body, and a
/// bottom-pinned pill CTA button — replacing the old per-form
/// bottom-sheet-card layout that all 11 `lib/forms/*.dart` files
/// duplicated near-identically.
class AppFormScaffold extends StatelessWidget {
  const AppFormScaffold({
    super.key,
    required this.title,
    required this.time,
    required this.onTimeChanged,
    required this.ctaLabel,
    required this.onSubmit,
    required this.child,
    this.ctaEnabled = true,
    this.accentColor,
  });

  final String title;
  final TimeOfDay time;
  final ValueChanged<TimeOfDay> onTimeChanged;
  final String ctaLabel;
  final VoidCallback onSubmit;
  final Widget child;
  final bool ctaEnabled;
  final Color? accentColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final accent = accentColor ?? scheme.primary;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 16, 4),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style: theme.textTheme.headlineSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 8),
                  _TimePill(
                    time: time,
                    color: accent,
                    onTap: () async {
                      final picked = await showTimePicker(
                        context: context,
                        initialTime: time,
                      );
                      if (picked != null) onTimeChanged(picked);
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
                child: child,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: GradientPillButton(
                label: ctaLabel,
                onPressed: ctaEnabled ? onSubmit : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TimePill extends StatelessWidget {
  const _TimePill({required this.time, required this.color, required this.onTap});

  final TimeOfDay time;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.14),
          borderRadius: BorderRadius.circular(999),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.access_time, size: 15, color: color),
            const SizedBox(width: 5),
            Text(
              time.format(context),
              style: theme.textTheme.labelMedium?.copyWith(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
