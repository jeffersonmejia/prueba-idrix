class PortfolioDocument {
  const PortfolioDocument({
    required this.number,
    required this.emissionDate,
    required this.dueDate,
    required this.amount,
    required this.balance,
  });

  final String number;
  final String emissionDate;
  final String dueDate;
  final String amount;
  final String balance;
}

class PortfolioCustomer {
  const PortfolioCustomer({
    required this.initials,
    required this.name,
    required this.documentCount,
    required this.total,
    this.documents = const [],
  });

  final String initials;
  final String name;
  final String documentCount;
  final String total;
  final List<PortfolioDocument> documents;
}

const portfolioCustomers = [
  PortfolioCustomer(
    initials: 'AL',
    name: 'AAAAAAAVINCES LEON\nJHONATHAN DAVID',
    documentCount: '2 documentos',
    total: '\$225.50',
  ),
  PortfolioCustomer(
    initials: 'AC',
    name: 'AZUA CEDEÑO\nKEVIN SEBASTIAN',
    documentCount: '2 documentos',
    total: '\$51.00',
    documents: [
      PortfolioDocument(
        number: '000000337',
        emissionDate: '2025-08-26',
        dueDate: '2025-08-27',
        amount: '\$50.0000',
        balance: '\$50.0000',
      ),
      PortfolioDocument(
        number: '000000338',
        emissionDate: '2025-08-27',
        dueDate: '2025-08-28',
        amount: '\$1.0000',
        balance: '\$1.0000',
      ),
    ],
  ),
];
