import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';

class PortfolioFilterChip extends StatelessWidget {
  const PortfolioFilterChip({
    required this.label,
    this.selected = false,
    this.icon,
    super.key,
  });

  final String label;
  final bool selected;
  final IconData? icon;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
    decoration: BoxDecoration(
      color: selected ? AppPalette.primary : AppPalette.surface,
      borderRadius: BorderRadius.circular(24),
      border: Border.all(
        color: selected ? AppPalette.primary : AppPalette.border,
      ),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) ...[
          Icon(
            icon,
            size: 19,
            color: selected ? Colors.white : AppPalette.textSecondary,
          ),
          const SizedBox(width: 7),
        ],
        Text(
          label,
          style: TextStyle(
            color: selected ? Colors.white : AppPalette.textSecondary,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    ),
  );
}
