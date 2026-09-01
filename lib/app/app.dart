import 'package:flutter/material.dart';

import '../features/account_statement/presentation/pages/account_statement_page.dart';

class IdrixApp extends StatelessWidget {
  const IdrixApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Estado de Cuenta',
    theme: ThemeData(
      useMaterial3: true,
      fontFamily: 'Roboto',
      scaffoldBackgroundColor: const Color(0xFFF8FAFB),
    ),
    builder: (context, child) => MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: child!,
    ),
    home: const AccountStatementPage(),
  );
}
