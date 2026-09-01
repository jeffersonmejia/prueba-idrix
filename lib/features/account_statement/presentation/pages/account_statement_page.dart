library;

import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';

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
            padding: EdgeInsets.fromLTRB(
              AppDimensions.pageHorizontalPadding,
              top + 18,
              AppDimensions.pageHorizontalPadding,
              14,
            ),
            decoration: const BoxDecoration(
              gradient: AppPalette.topBarGradient,
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
                      size: AppDimensions.iconSmall,
                    ),
                  ),
                ),
                const SizedBox(width: 13),
                const Text(
                  'Estado de Cuenta',
                  style: AppTextStyles.appBarTitle,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(
                AppDimensions.pageHorizontalPadding,
                24,
                AppDimensions.pageHorizontalPadding,
                38,
              ),
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
