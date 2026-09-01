import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';
import 'package:idrix_ui/features/maintenance/presentation/widgets/maintenance_content.dart';
import 'package:idrix_ui/features/maintenance/presentation/widgets/maintenance_vehicle_card.dart';

class MaintenancePage extends StatelessWidget {
  const MaintenancePage({super.key});

  static const vehicles = [
    ('Camión Trailer 01', 'ABC-1234', '45,230 km', '13 ene 2025'),
    ('Camión Trailer 02', 'XYZ-5678', '32,150 km', '30 ene 2025'),
    ('Camión Trailer 03', 'DEF-9012', '28,700 km', '02 feb 2025'),
  ];

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: top + 72,
            padding: EdgeInsets.fromLTRB(14, top + 14, 22, 12),
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
                const Text('Mantenimiento', style: AppTextStyles.appBarTitle),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(22, 20, 22, 35),
              children: [
                const MaintenanceBanner(),
                const SizedBox(height: 20),
                const MaintenanceSearch(),
                const SizedBox(height: 22),
                const Text(
                  'Vehículos Registrados',
                  style: AppTextStyles.sectionTitle,
                ),
                const SizedBox(height: 16),
                for (final vehicle in vehicles) ...[
                  MaintenanceVehicleCard(vehicle: vehicle),
                  const SizedBox(height: 16),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
