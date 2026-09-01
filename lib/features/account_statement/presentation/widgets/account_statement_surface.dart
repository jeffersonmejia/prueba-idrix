part of '../pages/account_statement_page.dart';

class _QuotaCard extends StatelessWidget {
  const _QuotaCard();

  @override
  Widget build(BuildContext context) => _Surface(
    padding: const EdgeInsets.all(32),
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionTitle(
          icon: Icons.credit_card_outlined,
          label: 'Cupo del Cliente',
        ),
        SizedBox(height: 12),
        Text(
          'Cupo disponible',
          style: TextStyle(fontSize: 17, color: Color(0xFF4D5560)),
        ),
        SizedBox(height: 4),
        Text(
          '\$2,500.00',
          style: TextStyle(
            fontSize: 17,
            color: Color(0xFF111827),
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    ),
  );
}

class _Surface extends StatelessWidget {
  const _Surface({required this.child, required this.padding});

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) => Container(
    width: double.infinity,
    padding: padding,
    decoration: BoxDecoration(
      color: AppPalette.surface,
      borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
      boxShadow: const [
        BoxShadow(
          color: Color(0x08000000),
          blurRadius: 12,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: child,
  );
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Icon(icon, color: AppPalette.primary, size: AppDimensions.iconLarge),
      const SizedBox(width: 16),
      Text(label, style: AppTextStyles.sectionTitle),
    ],
  );
}
