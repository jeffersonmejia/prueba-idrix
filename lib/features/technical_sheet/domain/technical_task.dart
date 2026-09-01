class TechnicalTask {
  const TechnicalTask({
    required this.name,
    required this.schedule,
    required this.frequency,
    this.expired = true,
  });

  final String name;
  final String schedule;
  final String frequency;
  final bool expired;
}

const electricalTasks = [
  TechnicalTask(
    name: 'Batería',
    schedule: 'Tipo Programación: tiempo',
    frequency: 'Frecuencia: semestral',
  ),
  TechnicalTask(
    name: 'Luces Exteriores',
    schedule: 'Tipo Programación: tiempo',
    frequency: 'Frecuencia: mensual',
  ),
  TechnicalTask(
    name: 'Luces Interiores',
    schedule: 'Tipo Programación: tiempo',
    frequency: 'Frecuencia: trimestral',
  ),
  TechnicalTask(
    name: 'Plumas',
    schedule: 'Tipo Programación: tiempo',
    frequency: 'Frecuencia: mensual',
  ),
  TechnicalTask(
    name: 'Instalación / Tablero',
    schedule: 'Tipo Programación: tiempo',
    frequency: 'Frecuencia: anual',
  ),
  TechnicalTask(
    name: 'Radio',
    schedule: 'Tipo Programación: tiempo',
    frequency: 'Frecuencia: anual',
  ),
];
