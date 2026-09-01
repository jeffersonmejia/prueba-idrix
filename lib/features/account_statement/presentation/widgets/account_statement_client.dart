part of '../pages/account_statement_page.dart';

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
          child: const Row(
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
