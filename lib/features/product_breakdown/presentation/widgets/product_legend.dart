import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';
import 'package:idrix_ui/features/product_breakdown/domain/product_breakdown_item.dart';

class ProductLegend extends StatelessWidget {
  const ProductLegend({super.key});

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: AppPalette.surface,
      borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
      boxShadow: const [
        BoxShadow(
          color: Color(0x0D000000),
          blurRadius: 12,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Wrap(
      spacing: 18,
      runSpacing: 14,
      children: productBreakdownItems
          .map(
            (product) => SizedBox(
              width: 130,
              child: Row(
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: product.color,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      product.name,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: AppPalette.textMuted,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    ),
  );
}
