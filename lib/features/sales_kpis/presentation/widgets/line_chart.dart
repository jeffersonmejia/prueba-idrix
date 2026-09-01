import 'package:flutter/material.dart';
import 'package:idrix_ui/features/sales_kpis/presentation/widgets/line_chart_painter.dart';

class LineChart extends StatelessWidget {
  const LineChart({super.key});

  @override
  Widget build(BuildContext context) {
    const centroData = [5200, 5600, 5900, 5700, 6200, 6500, 6800, 7200, 7500, 7800];
    const norteData = [4800, 5100, 5400, 5600, 5900, 6300, 6600, 6900, 7200, 7500];
    const surData = [3800, 4200, 4500, 4800, 5100, 5500, 5800, 6100, 6400, 6800];

    const centroColor = Color(0xFFFFA851);
    const norteColor = Color(0xFF5B8FD6);
    const surColor = Color(0xFF5FB78B);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Rendimiento mensual por sucursal (USD)',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 180,
          child: CustomPaint(
            painter: LineChartPainter(
              centroData.map((e) => e.toDouble()).toList(),
              norteData.map((e) => e.toDouble()).toList(),
              surData.map((e) => e.toDouble()).toList(),
              centroColor,
              norteColor,
              surColor,
            ),
            size: const Size(double.infinity, 180),
          ),
        ),
        const SizedBox(height: 20),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 12,
          runSpacing: 8,
          children: const [
            _LegendItem('Sucursal Centro', centroColor),
            _LegendItem('Sucursal Norte', norteColor),
            _LegendItem('Sucursal Sur', surColor),
          ],
        ),
      ],
    );
  }
}

class _LegendItem extends StatelessWidget {
  final String label;
  final Color color;

  const _LegendItem(this.label, this.color);

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
      const SizedBox(width: 6),
      Text(
        label,
        style: const TextStyle(fontSize: 10, color: Colors.grey),
      ),
    ],
  );
}
