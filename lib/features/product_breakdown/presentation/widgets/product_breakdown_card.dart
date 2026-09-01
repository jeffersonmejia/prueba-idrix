import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';
import 'package:idrix_ui/features/product_breakdown/domain/product_breakdown_item.dart';

class ProductBreakdownCard extends StatelessWidget {
  const ProductBreakdownCard({required this.product, super.key});

  final ProductBreakdownItem product;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.fromLTRB(22, 20, 22, 22),
    decoration: BoxDecoration(
      color: AppPalette.surface,
      borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
      border: Border.all(
        color: product.color.withValues(alpha: .35),
        width: 1.5,
      ),
      boxShadow: const [
        BoxShadow(
          color: Color(0x0A000000),
          blurRadius: 9,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: product.color.withValues(alpha: .12),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Icon(
                Icons.inventory_2_outlined,
                color: product.color,
                size: 27,
              ),
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.cardTitle,
                  ),
                  const SizedBox(height: 5),
                  Text(product.percentage, style: AppTextStyles.cardBody),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Text(product.amount, style: AppTextStyles.cardTitle),
          ],
        ),
        const SizedBox(height: 18),
        ClipRRect(
          borderRadius: BorderRadius.circular(99),
          child: LinearProgressIndicator(
            value: double.parse(product.percentage.split('%').first) / 100,
            minHeight: 11,
            backgroundColor: const Color(0xFFF0F1F2),
            color: product.color,
          ),
        ),
      ],
    ),
  );
}
