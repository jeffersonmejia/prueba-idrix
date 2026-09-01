library;

import 'package:flutter/material.dart';

part '../widgets/account_statement_client.dart';
part '../widgets/account_statement_header.dart';
part '../widgets/account_statement_metric.dart';
part '../widgets/account_statement_summary.dart';
part '../widgets/account_statement_surface.dart';

class AccountStatementPage extends StatelessWidget {
  const AccountStatementPage({super.key});

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: top + 72,
            padding: EdgeInsets.fromLTRB(22, top + 18, 22, 14),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF0785B8), Color(0xFF0876A5)],
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 22,
                  height: 22,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 13),
                const Text(
                  'Estado de Cuenta',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(22, 24, 22, 38),
              child: const Column(
                children: [
                  _HeroBanner(),
                  SizedBox(height: 25),
                  _ClientCard(),
                  SizedBox(height: 30),
                  _SummaryCard(),
                  SizedBox(height: 30),
                  _QuotaCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
