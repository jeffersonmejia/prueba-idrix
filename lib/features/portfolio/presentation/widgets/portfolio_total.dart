import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';

class PortfolioTotal extends StatelessWidget {
  const PortfolioTotal({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
    top: false,
    child: SizedBox(
      height: 92,
      child: Container(
        padding: const EdgeInsets.fromLTRB(22, 14, 22, 12),
        decoration: const BoxDecoration(color: AppPalette.surface),
        child: const Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TOTAL DE DEUDA',
                  style: TextStyle(
                    color: AppPalette.textSecondary,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  '\$896.50',
                  style: TextStyle(
                    color: AppPalette.primary,
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Spacer(),
            _DocumentCount(),
          ],
        ),
      ),
    ),
  );
}

class _DocumentCount extends StatelessWidget {
  const _DocumentCount();

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      color: Color(0xFFF4F6F7),
      borderRadius: BorderRadius.circular(24),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 13),
      child: Text(
        '7 documentos',
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
    ),
  );
}
