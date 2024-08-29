class TransactionHistoryItemModel {
  final String title;
  final String cash;
  final String date;
  final bool isWithdrawal;

  const TransactionHistoryItemModel(
      {required this.title,
      required this.cash,
      required this.date,
      required this.isWithdrawal});
}
