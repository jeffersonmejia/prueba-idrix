import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';
import 'package:idrix_ui/features/portfolio/domain/portfolio_customer.dart';
import 'package:idrix_ui/features/portfolio/presentation/widgets/portfolio_customer_card.dart';
import 'package:idrix_ui/features/portfolio/presentation/widgets/portfolio_filter_chip.dart';
import 'package:idrix_ui/features/portfolio/presentation/widgets/portfolio_total.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;
    return Scaffold(
      bottomNavigationBar: const PortfolioTotal(),
      body: Column(
        children: [
          Container(
            height: top + 72,
            padding: EdgeInsets.fromLTRB(14, top + 14, 18, 12),
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
                const SizedBox(width: 5),
                const Text('Cartera', style: AppTextStyles.appBarTitle),
                const Spacer(),
                const Icon(
                  Icons.filter_alt_outlined,
                  color: Colors.white,
                  size: 27,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(22, 24, 22, 28),
              children: [
                const _SearchField(),
                const SizedBox(height: 20),
                const Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    PortfolioFilterChip(label: 'TODOS (7)', selected: true),
                    PortfolioFilterChip(
                      label: 'VENCIDO (5)',
                      icon: Icons.error_outline,
                    ),
                    PortfolioFilterChip(
                      label: 'PENDIENTE (2)',
                      icon: Icons.calendar_today_outlined,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                for (final customer in portfolioCustomers) ...[
                  PortfolioCustomerCard(customer: customer),
                  const SizedBox(height: 18),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField();

  @override
  Widget build(BuildContext context) => Container(
    height: 58,
    padding: const EdgeInsets.symmetric(horizontal: 17),
    decoration: BoxDecoration(
      color: AppPalette.surface,
      borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
      border: Border.all(color: AppPalette.border),
    ),
    child: const Row(
      children: [
        Icon(Icons.search, color: AppPalette.textMuted),
        SizedBox(width: 13),
        Text(
          'Buscar por cliente, documento o estado...',
          style: AppTextStyles.cardBody,
        ),
      ],
    ),
  );
}
