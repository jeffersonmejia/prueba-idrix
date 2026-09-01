import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';
import 'package:idrix_ui/features/sales_kpis/presentation/widgets/donut_chart.dart';
import 'package:idrix_ui/features/sales_kpis/presentation/widgets/line_chart.dart';
import 'package:idrix_ui/features/sales_kpis/presentation/widgets/annual_totals.dart';

class SalesDetails extends StatelessWidget {
  const SalesDetails({required this.products, super.key});
  final bool products;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(22),
    decoration: BoxDecoration(
      color: AppPalette.surface,
      borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              products ? Icons.inventory_2_outlined : Icons.storefront_outlined,
              color: AppPalette.primary,
            ),
            const SizedBox(width: 12),
            Text(
              products ? 'Productos más vendidos' : 'Ventas por sucursal',
              style: AppTextStyles.cardTitle,
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          'Toca un segmento para ver el detalle',
          style: AppTextStyles.cardBody,
        ),
        const SizedBox(height: 30),
        if (products) const DonutChart() else const LineChart(),
        if (!products) ...[
          const SizedBox(height: 30),
          const AnnualTotals(),
        ],
      ],
    ),
  );
}
