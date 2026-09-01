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
    required this.textColor,
    required this.titleColor,
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
  final Color textColor;
  final Color titleColor;

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
                style: TextStyle(
                  color: titleColor,
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
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _InfoRow(label: 'Fecha:', value: date, textColor: textColor),
        if (checkNumber.isNotEmpty) _InfoRow(label: 'Cheque N°:', value: checkNumber, textColor: textColor),
        _InfoRow(label: 'Valor:', value: value, textColor: textColor, valueStyle: TextStyle(fontWeight: FontWeight.w800, color: textColor)),
        _InfoRow(label: 'Ejecutado:', value: executed, textColor: textColor),
        _InfoRow(label: 'Protestado:', value: protested, textColor: textColor),
      ],
    ),
  );
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.label,
    required this.value,
    required this.textColor,
    this.valueStyle,
  });

  final String label;
  final String value;
  final Color textColor;
  final TextStyle? valueStyle;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          value,
          style: valueStyle ?? TextStyle(
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}
