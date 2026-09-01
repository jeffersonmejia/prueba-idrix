import 'package:flutter/material.dart';
import 'dart:math' as math;

class LineChartPainter extends CustomPainter {
  final List<double> centroData;
  final List<double> norteData;
  final List<double> surData;
  final Color centroColor;
  final Color norteColor;
  final Color surColor;

  LineChartPainter(
    this.centroData,
    this.norteData,
    this.surData,
    this.centroColor,
    this.norteColor,
    this.surColor,
  );

  @override
  void paint(Canvas canvas, Size size) {
    const topPadding = 10.0;
    const bottomPadding = 30.0;
    const leftPadding = 30.0;
    const rightPadding = 10.0;

    final graphWidth = size.width - leftPadding - rightPadding;
    final graphHeight = size.height - topPadding - bottomPadding;

    final maxValue =
        [centroData, norteData, surData].expand((x) => x).reduce(math.max);
    const minValue = 2000.0;

    final pointCount = centroData.length;
    final xSpacing = graphWidth / (pointCount - 1);

    final paint = Paint()
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    _drawLine(canvas, paint, centroData, centroColor, size, xSpacing,
        graphWidth, graphHeight, topPadding, leftPadding, minValue, maxValue);
    _drawLine(canvas, paint, norteData, norteColor, size, xSpacing,
        graphWidth, graphHeight, topPadding, leftPadding, minValue, maxValue);
    _drawLine(canvas, paint, surData, surColor, size, xSpacing, graphWidth,
        graphHeight, topPadding, leftPadding, minValue, maxValue);

    _drawAxisLabels(canvas, size, graphHeight, topPadding, bottomPadding);
  }

  void _drawLine(
    Canvas canvas,
    Paint paint,
    List<double> data,
    Color color,
    Size size,
    double xSpacing,
    double graphWidth,
    double graphHeight,
    double topPadding,
    double leftPadding,
    double minValue,
    double maxValue,
  ) {
    paint.color = color;
    final points = <Offset>[];

    for (int i = 0; i < data.length; i++) {
      final x = leftPadding + (i * xSpacing);
      final normalized = (data[i] - minValue) / (maxValue - minValue);
      final y = topPadding + graphHeight - (normalized * graphHeight);
      points.add(Offset(x, y));
    }

    for (int i = 0; i < points.length - 1; i++) {
      canvas.drawLine(points[i], points[i + 1], paint);
    }

    for (final point in points) {
      canvas.drawCircle(point, 3, paint);
    }
  }

  void _drawAxisLabels(
    Canvas canvas,
    Size size,
    double graphHeight,
    double topPadding,
    double bottomPadding,
  ) {
    const yLabels = ['\$0', '\$2.5k', '\$5.0k', '\$7.5k', '\$10.0k'];

    final textPainter = TextPainter(textDirection: TextDirection.ltr);

    for (int i = 0; i < yLabels.length; i++) {
      textPainter.text = TextSpan(
        text: yLabels[i],
        style: const TextStyle(color: Colors.grey, fontSize: 10),
      );
      textPainter.layout();
      textPainter.paint(
        canvas,
        Offset(5, topPadding + (graphHeight * (1 - i / (yLabels.length - 1))) - 5),
      );
    }
  }

  @override
  bool shouldRepaint(LineChartPainter oldDelegate) => true;
}
