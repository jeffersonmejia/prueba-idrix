import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xFF087EAF),
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const IdrixApp());
}

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

class AccountStatementPage extends StatelessWidget {
  const AccountStatementPage({super.key});
  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: top + 72,
            padding: EdgeInsets.fromLTRB(22, top + 18, 22, 14),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF0785B8), Color(0xFF0876A5)],
              ),
            ),
            child: const Row(
              children: [
                Icon(Icons.arrow_back_rounded, color: Colors.white, size: 16),
                SizedBox(width: 13),
                Text(
                  'Estado de Cuenta',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(22, 24, 22, 38),
              child: const Column(
                children: [
                  _HeroBanner(),
                  SizedBox(height: 25),
                  _ClientCard(),
                  SizedBox(height: 30),
                  _SummaryCard(),
                  SizedBox(height: 30),
                  _QuotaCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HeroBanner extends StatelessWidget {
  const _HeroBanner();
  @override
  Widget build(BuildContext context) => Container(
    height: 156,
    padding: const EdgeInsets.symmetric(horizontal: 28),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF137FAB), Color(0xFF00628E)],
      ),
      boxShadow: const [
        BoxShadow(
          color: Color(0x24064B6C),
          blurRadius: 10,
          offset: Offset(0, 5),
        ),
      ],
    ),
    child: Row(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0x1FCAF2FF),
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Icon(
            Icons.description_outlined,
            color: Colors.white,
            size: 37,
          ),
        ),
        const SizedBox(width: 17),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Estado de Cuenta',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 5),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Consulta el estado financiero de tus\nclientes',
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.35,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class _ClientCard extends StatelessWidget {
  const _ClientCard();
  @override
  Widget build(BuildContext context) => _Surface(
    padding: const EdgeInsets.fromLTRB(32, 33, 32, 34),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SectionTitle(
          icon: Icons.person_outline_rounded,
          label: 'Cliente',
        ),
        const SizedBox(height: 26),
        Container(
          height: 66,
          padding: const EdgeInsets.symmetric(horizontal: 21),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: const Color(0xFFE1E1E1), width: 1.5),
          ),
          child: Row(
            children: [
              Icon(Icons.search, color: Color(0xFF9BA1A5), size: 20),
              SizedBox(width: 14),
              Expanded(
                child: Text(
                  'Jefferson Mejia',
                  style: TextStyle(fontSize: 16, color: Color(0xFF111827)),
                ),
              ),
              Icon(Icons.close, color: Color(0xFF9BA1A5), size: 18),
            ],
          ),
        ),
        const SizedBox(height: 22),
        Container(
          height: 114,
          padding: const EdgeInsets.symmetric(horizontal: 22),
          decoration: BoxDecoration(
            color: const Color(0xFFF0F7FE),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: const Color(0xFFBDD6E8), width: 1.5),
          ),
          child: const Row(
            children: [
              _ClientIcon(),
              SizedBox(width: 18),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Jefferson Mejia',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF111827),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'ID: 0926547891',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF14789D),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.close, color: Color(0xFF14789D), size: 18),
            ],
          ),
        ),
      ],
    ),
  );
}

class _ClientIcon extends StatelessWidget {
  const _ClientIcon();
  @override
  Widget build(BuildContext context) => Container(
    width: 42,
    height: 42,
    decoration: BoxDecoration(
      color: const Color(0xFF087EAF),
      borderRadius: BorderRadius.circular(14),
    ),
    child: const Icon(
      Icons.person_outline_rounded,
      color: Colors.white,
      size: 27,
    ),
  );
}

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

class _MetricCard extends StatelessWidget {
  const _MetricCard({
    required this.label,
    required this.amount,
    required this.icon,
    required this.hue,
  });
  final String label, amount, icon, hue;
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
    final data = {
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
            child: Icon(data[icon], color: colors[1], size: 16),
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
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
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
      Icon(icon, color: const Color(0xFF087EAF), size: 30),
      const SizedBox(width: 16),
      Text(
        label,
        style: const TextStyle(
          color: Color(0xFF39424E),
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}
