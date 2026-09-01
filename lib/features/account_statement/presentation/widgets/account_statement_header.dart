part of '../pages/account_statement_page.dart';

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
