import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';

class SalesMetrics extends StatelessWidget {
  const SalesMetrics({super.key});
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: AppPalette.surface,
      borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
    ),
    child: const Row(
      children: [
        Expanded(
          child: _Metric(
            icon: Icons.attach_money_rounded,
            label: 'VENTAS',
            amount: '\$7.992,14',
          ),
        ),
        Expanded(
          child: _Metric(
            icon: Icons.credit_card_outlined,
            label: 'COBROS',
            amount: '\$0,00',
          ),
        ),
        Expanded(
          child: _Metric(
            icon: Icons.replay_outlined,
            label: 'DEVOLUCIONES',
            amount: '\$0,00',
          ),
        ),
      ],
    ),
  );
}

class _Metric extends StatelessWidget {
  const _Metric({
    required this.icon,
    required this.label,
    required this.amount,
  });
  final IconData icon;
  final String label;
  final String amount;
  @override
  Widget build(BuildContext context) => Column(
    children: [
      Container(
        width: 53,
        height: 53,
        decoration: BoxDecoration(
          color: const Color(0xFFE7F2F7),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(icon, color: AppPalette.primary, size: 28),
      ),
      const SizedBox(height: 12),
      Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppPalette.textSecondary,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
      const SizedBox(height: 7),
      Text(
        amount,
        style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
      ),
    ],
  );
}
