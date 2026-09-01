import 'package:flutter/material.dart';
import 'dart:math' as math;

class DonutChart extends StatelessWidget {
  const DonutChart({super.key});

  @override
  Widget build(BuildContext context) {
    const colors = [
      Color(0xFF5B8FD6), // Azul
      Color(0xFF5FB78B), // Verde
      Color(0xFFFFA851), // Naranja
      Color(0xFF87CEEB), // Celeste
      Color(0xFFE89BC9), // Rosa
      Color(0xFFC9A0DC), // Púrpura
    ];

    const values = [1187.89, 850.50, 720.30, 600.15, 450.25, 388.90];
    final total = values.fold<double>(0, (sum, v) => sum + v);
    final percentages =
        values.map((v) => (v / total * 100).toStringAsFixed(1)).toList();

    return Column(
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: CustomPaint(
            painter: _DonutPainter(values, colors),
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'ATUN ATUN ATUN\n',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '\$1.187,89\n',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold, color: Colors.orange),
                ),
                TextSpan(
                  text: '${percentages[0]}% del total',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Wrap(
          spacing: 16,
          runSpacing: 12,
          children: List.generate(colors.length, (i) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration:
                      BoxDecoration(color: colors[i], shape: BoxShape.circle),
                ),
                const SizedBox(width: 8),
                Text(
                  'Producto ${i + 1}',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                  ),
                ),
              ],
            );
          }),
        ),
      ],
    );
  }
}

class _DonutPainter extends CustomPainter {
  final List<double> values;
  final List<Color> colors;

  _DonutPainter(this.values, this.colors);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.stroke;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 15;
    const strokeWidth = 30.0;

    double startAngle = -math.pi / 2;
    final total = values.fold<double>(0, (sum, v) => sum + v);

    for (int i = 0; i < values.length; i++) {
      final sweepAngle = (values[i] / total) * 2 * math.pi;
      paint.color = colors[i];
      paint.strokeWidth = strokeWidth;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        false,
        paint,
      );

      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(_DonutPainter oldDelegate) =>
      oldDelegate.values != values || oldDelegate.colors != colors;
}
