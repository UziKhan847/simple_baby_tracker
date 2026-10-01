import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';

/// A single option in a [PillSegmentedControl].
class PillSegmentedOption<T> {
  const PillSegmentedOption({
    required this.value,
    required this.label,
    this.icon,
  });

  final T value;
  final String label;

  /// An [AppIcons] name.
  final String? icon;
}

/// A pill-track segmented control with a sliding colored highlight behind
/// the selected option — the mockup's segmented-control look, which
/// Material's [SegmentedButton] (a row of individually-bordered boxes)
/// can't reproduce via theming alone.
class PillSegmentedControl<T> extends StatelessWidget {
  const PillSegmentedControl({
    super.key,
    required this.options,
    required this.selected,
    required this.onChanged,
  });

  final List<PillSegmentedOption<T>> options;
  final T selected;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final selectedIndex = options.indexWhere((o) => o.value == selected);

    return LayoutBuilder(
      builder: (context, constraints) {
        final segmentWidth = constraints.maxWidth / options.length;
        return Container(
          height: 40,
          decoration: BoxDecoration(
            color: scheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(999),
          ),
          child: Stack(
            children: [
              AnimatedAlign(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeOut,
                alignment: Alignment(
                  selectedIndex < 0
                      ? -1
                      : (selectedIndex / (options.length - 1).clamp(1, 999)) *
                                2 -
                            1,
                  0,
                ),
                child: Container(
                  width: segmentWidth,
                  height: 40,
                  margin: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: scheme.primaryContainer,
                    borderRadius: BorderRadius.circular(999),
                  ),
                ),
              ),
              Row(
                children: options.map((o) {
                  final isSelected = o.value == selected;
                  return SizedBox(
                    width: segmentWidth,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(999),
                      onTap: () => onChanged(o.value),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (o.icon != null) ...[
                              // Solid when selected, duo otherwise — the
                              // icon pack's selected-state convention.
                              AppIcon(
                                o.icon!,
                                style: isSelected
                                    ? AppIconStyle.solid
                                    : AppIconStyle.duo,
                                size: 17,
                                color: isSelected
                                    ? scheme.onPrimaryContainer
                                    : scheme.onSurfaceVariant,
                                fill: scheme.surfaceContainerHighest,
                                knockout: scheme.primaryContainer,
                              ),
                              const SizedBox(width: 4),
                            ],
                            Text(
                              o.label,
                              style: textTheme.labelMedium?.copyWith(
                                color: isSelected
                                    ? scheme.onPrimaryContainer
                                    : scheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
