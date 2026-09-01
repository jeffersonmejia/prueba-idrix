import 'package:flutter/material.dart';
import 'package:idrix_ui/core/theme/app_theme.dart';
import 'package:idrix_ui/features/technical_sheet/domain/technical_task.dart';

class TechnicalSection extends StatelessWidget {
  const TechnicalSection({
    required this.title,
    this.tasks = const [],
    this.expanded = true,
    super.key,
  });

  final String title;
  final List<TechnicalTask> tasks;
  final bool expanded;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: AppPalette.surface,
      borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
      border: Border.all(color: const Color(0xFFE5E8EA)),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: AppPalette.textPrimary,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const Text('Todas', style: AppTextStyles.cardBody),
            const SizedBox(width: 13),
            const SizedBox(
              width: 22,
              height: 22,
              child: Checkbox(value: false, onChanged: null),
            ),
            const SizedBox(width: 8),
            Icon(
              expanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              color: AppPalette.textMuted,
            ),
          ],
        ),
        if (expanded) ...[
          const SizedBox(height: 18),
          for (final task in tasks) ...[
            _TechnicalTaskRow(task: task),
            const SizedBox(height: 21),
          ],
        ],
      ],
    ),
  );
}

class _TechnicalTaskRow extends StatelessWidget {
  const _TechnicalTaskRow({required this.task});
  final TechnicalTask task;

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.only(top: 3),
        child: SizedBox(
          width: 22,
          height: 22,
          child: Checkbox(value: false, onChanged: null),
        ),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    task.name,
                    style: const TextStyle(fontWeight: FontWeight.w800),
                  ),
                ),
                if (task.expired) const _ExpiredBadge(),
              ],
            ),
            const SizedBox(height: 5),
            _Hint(text: task.schedule),
            const SizedBox(height: 4),
            _Hint(text: task.frequency),
          ],
        ),
      ),
    ],
  );
}

class _Hint extends StatelessWidget {
  const _Hint({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) => Text(
    text,
    style: const TextStyle(color: Color(0xFF2C827B), fontSize: 12),
  );
}

class _ExpiredBadge extends StatelessWidget {
  const _ExpiredBadge();
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    decoration: BoxDecoration(
      color: const Color(0xFFFFE4E4),
      borderRadius: BorderRadius.circular(14),
    ),
    child: const Text(
      'vencida',
      style: TextStyle(color: Color(0xFFC54D58), fontSize: 12),
    ),
  );
}
