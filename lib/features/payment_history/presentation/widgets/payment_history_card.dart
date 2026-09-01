import 'package:flutter/material.dart';

class PaymentHistoryCard extends StatelessWidget {
  const PaymentHistoryCard({
    required this.bankName,
    required this.kind,
    required this.date,
    required this.checkNumber,
    required this.value,
    required this.executed,
    required this.protested,
    required this.color,
    super.key,
  });

  final String bankName;
  final String kind;
  final String date;
  final String checkNumber;
  final String value;
  final String executed;
  final String protested;
  final Color color;

  @override
  Widget build(BuildContext context) => Container(
    width: double.infinity,
    padding: const EdgeInsets.fromLTRB(18, 16, 18, 14),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: .18),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.account_balance_rounded,
                color: Colors.white,
                size: 21,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                bankName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  height: 1.1,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: .18),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                kind.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _InfoRow(label: 'Fecha:', value: date),
        if (checkNumber.isNotEmpty) _InfoRow(label: 'Cheque N°:', value: checkNumber),
        _InfoRow(label: 'Valor:', value: value, valueStyle: const TextStyle(fontWeight: FontWeight.w800)),
        _InfoRow(label: 'Ejecutado:', value: executed),
        _InfoRow(label: 'Protestado:', value: protested),
      ],
    ),
  );
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.label,
    required this.value,
    this.valueStyle,
  });

  final String label;
  final String value;
  final TextStyle? valueStyle;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          value,
          style: valueStyle ?? const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}
