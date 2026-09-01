part of '../pages/account_statement_page.dart';

class _MetricCard extends StatelessWidget {
  const _MetricCard({
    required this.label,
    required this.amount,
    required this.icon,
    required this.hue,
  });

  final String label;
  final String amount;
  final String icon;
  final String hue;

  @override
  Widget build(BuildContext context) {
    final styles = <String, List<Color>>{
      'orange': [const Color(0xFFFFF0D8), const Color(0xFFDC7C28)],
      'green': [const Color(0xFFDFFBE9), const Color(0xFF339969)],
      'blue': [const Color(0xFFE1EEFE), const Color(0xFF397BD5)],
      'purple': [const Color(0xFFF5E5FF), const Color(0xFF9649C8)],
      'indigo': [const Color(0xFFE5E9FE), const Color(0xFF6669C6)],
      'red': [const Color(0xFFFFE5E5), const Color(0xFFC54D58)],
      'cyan': [const Color(0xFFE3F4FA), const Color(0xFF25819D)],
      'teal': [const Color(0xFFDDFBF5), const Color(0xFF219A91)],
    };
    final icons = {
      'schedule': Icons.schedule_outlined,
      'task_alt': Icons.task_alt_rounded,
      'trending_up': Icons.trending_up_rounded,
      'receipt_long': Icons.receipt_long_outlined,
      'warning_amber': Icons.warning_amber_rounded,
      'description': Icons.description_outlined,
      'trending_down': Icons.trending_down_rounded,
    };
    final colors = styles[hue]!;
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFB),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(color: colors[0], shape: BoxShape.circle),
            child: Icon(icons[icon], color: colors[1], size: 16),
          ),
          const Spacer(),
          Text(
            label,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 10,
              color: Color(0xFF4D5560),
              height: 1.18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            amount,
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xFF101827),
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
