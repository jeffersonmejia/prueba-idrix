import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';
import 'package:idrix_ui/features/portfolio/domain/portfolio_customer.dart';
import 'package:idrix_ui/features/portfolio/presentation/widgets/portfolio_document_card.dart';

class PortfolioCustomerCard extends StatelessWidget {
  const PortfolioCustomerCard({required this.customer, super.key});

  final PortfolioCustomer customer;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: AppPalette.surface,
      borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
      border: Border.all(color: const Color(0xFFE5E8EA)),
    ),
    child: Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: const Color(0xFFE5F0F7),
              child: Text(
                customer.initials,
                style: const TextStyle(
                  color: AppPalette.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(width: 17),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(customer.name, style: AppTextStyles.cardTitle),
                  const SizedBox(height: 4),
                  Text(customer.documentCount, style: AppTextStyles.cardBody),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text('Total', style: AppTextStyles.cardBody),
                Text(
                  customer.total,
                  style: const TextStyle(
                    color: AppPalette.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 7),
            Icon(
              customer.documents.isEmpty
                  ? Icons.keyboard_arrow_down
                  : Icons.keyboard_arrow_up,
              color: AppPalette.textMuted,
            ),
          ],
        ),
        if (customer.documents.isNotEmpty) ...[
          const SizedBox(height: 21),
          for (final document in customer.documents) ...[
            PortfolioDocumentCard(document: document),
            const SizedBox(height: 13),
          ],
        ],
      ],
    ),
  );
}
