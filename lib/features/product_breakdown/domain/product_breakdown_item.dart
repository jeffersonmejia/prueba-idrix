import 'package:flutter/material.dart';

class ProductBreakdownItem {
  const ProductBreakdownItem({
    required this.name,
    required this.percentage,
    required this.amount,
    required this.color,
  });

  final String name;
  final String percentage;
  final String amount;
  final Color color;
}

const productBreakdownItems = [
  ProductBreakdownItem(
    name: 'ATUN ATUN ATUN ATUN ...',
    percentage: '36.6% del total',
    amount: '\$2.558,60',
    color: Color(0xFF7197C6),
  ),
  ProductBreakdownItem(
    name: 'CON CODIGO DE BARRAS',
    percentage: '35.3% del total',
    amount: '\$2.468,00',
    color: Color(0xFF85BCAF),
  ),
  ProductBreakdownItem(
    name: 'ATUN ATUN ATUN',
    percentage: '17.0% del total',
    amount: '\$1.187,89',
    color: Color(0xFFEDA36D),
  ),
  ProductBreakdownItem(
    name: 'PRODUCTO DE PRUEBA',
    percentage: '4.3% del total',
    amount: '\$299,65',
    color: Color(0xFFC487D0),
  ),
  ProductBreakdownItem(
    name: 'EMBALAJE',
    percentage: '4.0% del total',
    amount: '\$278,00',
    color: Color(0xFFE9B5D3),
  ),
  ProductBreakdownItem(
    name: 'ABC',
    percentage: '2.9% del total',
    amount: '\$200,00',
    color: Color(0xFF8BC9E3),
  ),
];
