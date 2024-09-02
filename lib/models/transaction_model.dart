class TransactionModel {
  final String title, cash, date;
  final bool isWithdrawal;

  const TransactionModel(
      {required this.title,
      required this.cash,
      required this.date,
      required this.isWithdrawal});
}
