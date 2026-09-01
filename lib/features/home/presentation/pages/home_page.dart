import 'package:flutter/material.dart';

import 'package:idrix_ui/features/account_statement/presentation/pages/account_statement_page.dart';
import 'package:idrix_ui/features/home/domain/home_module.dart';
import 'package:idrix_ui/features/home/presentation/widgets/home_module_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.paddingOf(context).top;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(24, topPadding + 22, 24, 30),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF0D8BC0), Color(0xFF05678F)],
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.grid_view_rounded,
                      color: Colors.white,
                      size: 27,
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Idrix',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 28),
                Text(
                  'Panel principal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Selecciona un módulo para continuar',
                  style: TextStyle(color: Color(0xFFDDF5FF), fontSize: 15),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 26, 20, 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Accesos rápidos',
                    style: TextStyle(
                      color: Color(0xFF263440),
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 18),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: homeModules.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: .78,
                        ),
                    itemBuilder: (context, index) => HomeModuleCard(
                      module: homeModules[index],
                      onTap: index == 0
                          ? () => Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                builder: (_) => const AccountStatementPage(),
                              ),
                            )
                          : null,
                    ),
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
