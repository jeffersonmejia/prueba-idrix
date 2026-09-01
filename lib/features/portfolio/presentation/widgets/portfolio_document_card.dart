import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';
import 'package:idrix_ui/features/portfolio/domain/portfolio_customer.dart';

class PortfolioDocumentCard extends StatelessWidget {
  const PortfolioDocumentCard({required this.document, super.key});
  final PortfolioDocument document;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
      border: Border.all(color: const Color(0xFFE5E8EA)),
    ),
    child: Column(
      children: [
        _DocumentRow(
          label: 'Documento',
          value: document.number,
          icon: Icons.description_outlined,
        ),
        const SizedBox(height: 13),
        _DocumentRow(
          label: 'Emisión',
          value: document.emissionDate,
          icon: Icons.calendar_today_outlined,
        ),
        const SizedBox(height: 13),
        _DocumentRow(
          label: 'Venc.',
          value: document.dueDate,
          icon: Icons.calendar_today_outlined,
        ),
        const Divider(height: 24),
        Row(
          children: [
            Expanded(
              child: _Amount(label: 'Valor', value: document.amount),
            ),
            Expanded(
              child: _Amount(
                label: 'Saldo',
                value: document.balance,
                blue: true,
              ),
            ),
          ],
        ),
        const SizedBox(height: 13),
        const Row(
          children: [
            Text('0.00% pagado', style: AppTextStyles.cardBody),
            Spacer(),
            _OverdueBadge(),
          ],
        ),
      ],
    ),
  );
}

class _DocumentRow extends StatelessWidget {
  const _DocumentRow({
    required this.label,
    required this.value,
    required this.icon,
  });
  final String label;
  final String value;
  final IconData icon;
  @override
  Widget build(BuildContext context) => Row(
    children: [
      Icon(icon, color: AppPalette.textMuted, size: 20),
      const SizedBox(width: 11),
      Text('$label  ', style: AppTextStyles.cardBody),
      Text(value, style: AppTextStyles.cardTitle),
    ],
  );
}

class _Amount extends StatelessWidget {
  const _Amount({required this.label, required this.value, this.blue = false});
  final String label;
  final String value;
  final bool blue;
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: AppTextStyles.cardBody),
      Text(
        value,
        style: AppTextStyles.cardTitle.copyWith(
          color: blue ? AppPalette.primary : null,
        ),
      ),
    ],
  );
}

class _OverdueBadge extends StatelessWidget {
  const _OverdueBadge();
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    decoration: BoxDecoration(
      color: const Color(0xFFFFE4E4),
      borderRadius: BorderRadius.circular(18),
    ),
    child: const Text(
      '!  VENCIDO',
      style: TextStyle(color: Color(0xFFC54D58), fontWeight: FontWeight.w800),
    ),
  );
}
