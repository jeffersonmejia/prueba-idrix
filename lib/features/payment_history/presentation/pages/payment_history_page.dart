import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';
import 'package:idrix_ui/features/payment_history/presentation/widgets/payment_history_card.dart';

class PaymentHistoryPage extends StatelessWidget {
  const PaymentHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: top + 72,
            padding: EdgeInsets.fromLTRB(18, top + 18, 18, 14),
            decoration: const BoxDecoration(
              gradient: AppPalette.topBarGradient,
            ),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Historial de Pagos',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(22, 18, 22, 28),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Documento: 005-801-000000193',
                      style: TextStyle(
                        color: Color(0xFF204E6A),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  PaymentHistoryCard(
                    bankName: 'BANCO\nPICHINCHA',
                    kind: 'Cheque',
                    date: '15/12/2025',
                    checkNumber: '3652',
                    value: '\$724.45',
                    executed: 'NO',
                    protested: 'NO',
                    color: const Color(0xFFF5D64A),
                  ),
                  const SizedBox(height: 18),
                  PaymentHistoryCard(
                    bankName: 'Produbanco',
                    kind: 'Cheque',
                    date: '15/12/2025',
                    checkNumber: '7891',
                    value: '\$1200.00',
                    executed: 'SI',
                    protested: 'NO',
                    color: const Color(0xFF1F8F6C),
                  ),
                  const SizedBox(height: 18),
                  PaymentHistoryCard(
                    bankName: 'Banco\nGuayaquil',
                    kind: 'Transferencia',
                    date: '14/12/2025',
                    checkNumber: '',
                    value: '\$850.50',
                    executed: '',
                    protested: '',
                    color: const Color(0xFF4D54A9),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
