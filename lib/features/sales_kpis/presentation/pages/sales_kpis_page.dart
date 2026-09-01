import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';
import 'package:idrix_ui/features/sales_kpis/presentation/widgets/sales_details.dart';
import 'package:idrix_ui/features/sales_kpis/presentation/widgets/sales_metrics.dart';
import 'package:idrix_ui/features/sales_kpis/presentation/widgets/sales_toggle.dart';

class SalesKpisPage extends StatefulWidget {
  const SalesKpisPage({super.key});
  @override
  State<SalesKpisPage> createState() => _SalesKpisPageState();
}

class _SalesKpisPageState extends State<SalesKpisPage> {
  bool products = true;
  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;
    return Scaffold(
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
                const Text('KPIs de Ventas', style: AppTextStyles.appBarTitle),
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
              padding: const EdgeInsets.fromLTRB(22, 22, 22, 35),
              children: [
                const SalesMetrics(),
                const SizedBox(height: 24),
                SalesToggle(
                  products: products,
                  onChanged: (value) => setState(() => products = value),
                ),
                const SizedBox(height: 14),
                const Center(
                  child: Text(
                    'Hoy, Febrero 8 del 2026',
                    style: TextStyle(
                      color: AppPalette.textMuted,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SalesDetails(products: products),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
