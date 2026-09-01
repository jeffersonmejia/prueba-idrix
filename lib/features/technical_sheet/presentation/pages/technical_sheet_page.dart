import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';
import 'package:idrix_ui/features/technical_sheet/domain/technical_task.dart';
import 'package:idrix_ui/features/technical_sheet/presentation/widgets/technical_section.dart';

class TechnicalSheetPage extends StatelessWidget {
  const TechnicalSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;
    return Scaffold(
      bottomNavigationBar: const _SaveButton(),
      body: Column(
        children: [
          Container(
            height: top + 92,
            padding: EdgeInsets.fromLTRB(14, top + 14, 22, 15),
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
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ficha Técnica', style: AppTextStyles.appBarTitle),
                    SizedBox(height: 3),
                    Text(
                      'Camión Trailer 01',
                      style: TextStyle(color: Color(0xFFDDF5FF), fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(22, 26, 22, 28),
              children: const [
                TechnicalSection(title: 'ESTADO MECÁNICO', expanded: false),
                SizedBox(height: 14),
                TechnicalSection(
                  title: 'ESTADO ELÉCTRICO',
                  tasks: electricalTasks,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SaveButton extends StatelessWidget {
  const _SaveButton();

  @override
  Widget build(BuildContext context) => SafeArea(
    top: false,
    child: Container(
      height: 77,
      padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
      color: AppPalette.surface,
      child: FilledButton.icon(
        onPressed: () {},
        style: FilledButton.styleFrom(
          backgroundColor: AppPalette.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        icon: const Icon(Icons.save_outlined),
        label: const Text(
          'Guardar',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
        ),
      ),
    ),
  );
}
