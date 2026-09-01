import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';

class MaintenanceVehicleCard extends StatelessWidget {
  const MaintenanceVehicleCard({required this.vehicle, super.key});
  final (String, String, String, String) vehicle;
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: AppPalette.surface,
      borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
      border: Border.all(color: const Color(0xFFE5E8EA)),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: const Color(0xFFE6F1F7),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.local_shipping_outlined,
                color: AppPalette.primary,
                size: 31,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(vehicle.$1, style: AppTextStyles.cardTitle),
                  const SizedBox(height: 5),
                  Text(vehicle.$2, style: AppTextStyles.cardBody),
                ],
              ),
            ),
            const Icon(Icons.visibility_outlined, color: AppPalette.primary),
          ],
        ),
        const SizedBox(height: 17),
        Row(
          children: [
            Expanded(
              child: _Metric(
                label: 'Kilometraje',
                value: vehicle.$3,
                icon: Icons.speed_outlined,
              ),
            ),
            const SizedBox(width: 13),
            Expanded(
              child: _Metric(
                label: 'Último Servicio',
                value: vehicle.$4,
                icon: Icons.calendar_today_outlined,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class _Metric extends StatelessWidget {
  const _Metric({required this.label, required this.value, required this.icon});
  final String label;
  final String value;
  final IconData icon;
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(13),
    decoration: BoxDecoration(
      color: const Color(0xFFF4F7F8),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: AppPalette.primary, size: 17),
            const SizedBox(width: 7),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 11,
                  color: AppPalette.textSecondary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 9),
        Text(
          value,
          style: const TextStyle(
            fontSize: 17,
            color: AppPalette.textPrimary,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    ),
  );
}
