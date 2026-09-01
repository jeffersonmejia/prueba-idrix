import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';
import 'package:idrix_ui/features/product_breakdown/domain/product_breakdown_item.dart';
import 'package:idrix_ui/features/product_breakdown/presentation/widgets/product_breakdown_card.dart';
import 'package:idrix_ui/features/product_breakdown/presentation/widgets/product_legend.dart';

class ProductBreakdownPage extends StatelessWidget {
  const ProductBreakdownPage({super.key});

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: top + 72,
            padding: EdgeInsets.fromLTRB(14, top + 16, 22, 12),
            decoration: const BoxDecoration(
              gradient: AppPalette.topBarGradient,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 4),
                const Text(
                  'Desglose por producto',
                  style: AppTextStyles.appBarTitle,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(22, 22, 22, 38),
              children: [
                const ProductLegend(),
                const SizedBox(height: 26),
                const Row(
                  children: [
                    Icon(
                      Icons.attach_money_rounded,
                      color: AppPalette.textSecondary,
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Desglose por producto',
                      style: AppTextStyles.sectionTitle,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                for (final product in productBreakdownItems) ...[
                  ProductBreakdownCard(product: product),
                  const SizedBox(height: 16),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
