import 'package:flutter/material.dart';

import 'package:idrix_ui/features/home/domain/home_module.dart';

class HomeModuleCard extends StatelessWidget {
  const HomeModuleCard({required this.module, this.onTap, super.key});

  final HomeModule module;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(22),
      child: Ink(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: const [
            BoxShadow(
              color: Color(0x120A405B),
              blurRadius: 14,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: module.color.withValues(alpha: .12),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(module.icon, color: module.color, size: 29),
            ),
            const Spacer(),
            Text(
              module.title,
              maxLines: 2,
              style: const TextStyle(
                color: Color(0xFF1D2935),
                fontSize: 16,
                height: 1.2,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 7),
            Text(
              module.description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Color(0xFF67727C),
                fontSize: 12,
                height: 1.32,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  'Ver módulo',
                  style: TextStyle(
                    color: module.color,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_rounded,
                  color: module.color,
                  size: 17,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
