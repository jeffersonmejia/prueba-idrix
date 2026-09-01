import 'package:flutter/material.dart';

class HomeModule {
  const HomeModule({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });

  final String title;
  final String description;
  final IconData icon;
  final Color color;
}

const homeModules = [
  HomeModule(
    title: 'Estado de Cuenta',
    description: 'Consulta el estado financiero de tus clientes',
    icon: Icons.description_outlined,
    color: Color(0xFF147EAB),
  ),
  HomeModule(
    title: 'Desglose por producto',
    description: 'Analiza las ventas de cada producto',
    icon: Icons.inventory_2_outlined,
    color: Color(0xFF6992C7),
  ),
  HomeModule(
    title: 'Cartera',
    description: 'Revisa saldos y documentos pendientes',
    icon: Icons.account_balance_wallet_outlined,
    color: Color(0xFF0D88B9),
  ),
  HomeModule(
    title: 'Ficha Técnica',
    description: 'Controla el estado de tus vehículos',
    icon: Icons.fact_check_outlined,
    color: Color(0xFF45A38F),
  ),
  HomeModule(
    title: 'Mantenimiento',
    description: 'Gestiona el mantenimiento de tu flota',
    icon: Icons.build_outlined,
    color: Color(0xFF167FA8),
  ),
  HomeModule(
    title: 'KPIs de Ventas',
    description: 'Consulta el rendimiento de tus ventas',
    icon: Icons.insights_outlined,
    color: Color(0xFF4776BA),
  ),
  HomeModule(
    title: 'Historial de Pagos',
    description: 'Consulta pagos, cheques y transferencias',
    icon: Icons.receipt_long_rounded,
    color: Color(0xFF3A6D9E),
  ),
];
