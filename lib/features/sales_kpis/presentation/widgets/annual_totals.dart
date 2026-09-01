import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';

class AnnualTotals extends StatelessWidget {
  const AnnualTotals({super.key});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          const Icon(Icons.trending_up_rounded, color: AppPalette.primary),
          const SizedBox(width: 8),
          Text(
            'Total anual por sucursal',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      const SizedBox(height: 16),
      _TotalCard(
        name: 'Sucursal Norte',
        months: '12 meses',
        total: '\$69.392,00',
        color: const Color(0xFF5B8FD6),
      ),
      const SizedBox(height: 12),
      _TotalCard(
        name: 'Sucursal Sur',
        months: '12 meses',
        total: '\$58.800,00',
        color: const Color(0xFF5FB78B),
      ),
      const SizedBox(height: 12),
      _TotalCard(
        name: 'Sucursal Centro',
        months: '12 meses',
        total: '\$81.900,00',
        color: const Color(0xFFFFA851),
      ),
    ],
  );
}

class _TotalCard extends StatelessWidget {
  final String name;
  final String months;
  final String total;
  final Color color;

  const _TotalCard({
    required this.name,
    required this.months,
    required this.total,
    required this.color,
  });

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    decoration: BoxDecoration(
      color: AppPalette.surface,
      border: Border.all(color: const Color(0xFFF0F0F0)),
      borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
    ),
    child: Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: color.withAlpha(30),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(Icons.storefront_outlined, color: color),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                months,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppPalette.textSecondary,
                ),
              ),
            ],
          ),
        ),
        Text(
          total,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
