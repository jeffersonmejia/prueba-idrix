import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';

class MaintenanceBanner extends StatelessWidget {
  const MaintenanceBanner({super.key});
  @override
  Widget build(BuildContext context) => Container(
    height: 120,
    padding: const EdgeInsets.symmetric(horizontal: 22),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [AppPalette.primaryLight, AppPalette.primaryDark],
      ),
      borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
    ),
    child: const Row(
      children: [
        Icon(Icons.build_outlined, color: Colors.white, size: 38),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mantenimiento',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Gestiona el mantenimiento\nvehicular de tu flota',
                style: TextStyle(
                  color: Colors.white,
                  height: 1.35,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class MaintenanceSearch extends StatelessWidget {
  const MaintenanceSearch({super.key});
  @override
  Widget build(BuildContext context) => Container(
    height: 56,
    padding: const EdgeInsets.symmetric(horizontal: 17),
    decoration: BoxDecoration(
      color: AppPalette.surface,
      borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
      border: Border.all(color: AppPalette.border),
    ),
    child: const Row(
      children: [
        Icon(Icons.search, color: AppPalette.textMuted),
        SizedBox(width: 12),
        Text('Buscar por nombre o placa...', style: AppTextStyles.cardBody),
      ],
    ),
  );
}
