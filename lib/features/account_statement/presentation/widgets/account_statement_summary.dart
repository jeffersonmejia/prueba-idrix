part of '../pages/account_statement_page.dart';

class _SummaryCard extends StatelessWidget {
  const _SummaryCard();

  @override
  Widget build(BuildContext context) {
    const records = [
      ['Saldo Pendiente', '\$245.75', 'schedule', 'orange'],
      ['Total Abonado', '\$1,568.25', 'task_alt', 'green'],
      ['Ticket Promedio', '\$125.50', 'trending_up', 'blue'],
      ['Anticipos Pendientes', '\$50.00', 'schedule', 'purple'],
      ['Cheques por Cobrar', '\$120.00', 'receipt_long', 'indigo'],
      ['Cheques Protestados', '\$0.00', 'warning_amber', 'red'],
      ['Facturas Electrónicas', '\$895.30', 'description', 'cyan'],
      ['Notas de Crédito', '\$150.00', 'trending_up', 'green'],
      ['Notas de Débito', '\$75.25', 'trending_down', 'red'],
      ['Retenciones', '\$320.15', 'description', 'teal'],
    ];
    return _Surface(
      padding: const EdgeInsets.fromLTRB(32, 35, 32, 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionTitle(
            icon: Icons.attach_money_rounded,
            label: 'Resumen General',
          ),
          const SizedBox(height: 34),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: records.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 19,
              crossAxisSpacing: 19,
              childAspectRatio: 1.4,
            ),
            itemBuilder: (context, index) => _MetricCard(
              label: records[index][0],
              amount: records[index][1],
              icon: records[index][2],
              hue: records[index][3],
            ),
          ),
        ],
      ),
    );
  }
}
