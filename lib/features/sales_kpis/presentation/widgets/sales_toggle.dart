import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';

class SalesToggle extends StatelessWidget {
  const SalesToggle({
    required this.products,
    required this.onChanged,
    super.key,
  });
  final bool products;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) => Row(
    children: [
      Expanded(
        child: _Button(
          label: 'Ventas por sucursal',
          selected: !products,
          onTap: () => onChanged(false),
        ),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: _Button(
          label: 'Productos vendidos',
          selected: products,
          onTap: () => onChanged(true),
        ),
      ),
    ],
  );
}

class _Button extends StatelessWidget {
  const _Button({
    required this.label,
    required this.selected,
    required this.onTap,
  });
  final String label;
  final bool selected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(20),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: selected ? AppPalette.primary : AppPalette.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: selected ? AppPalette.primary : AppPalette.border,
        ),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: selected ? Colors.white : AppPalette.textSecondary,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
