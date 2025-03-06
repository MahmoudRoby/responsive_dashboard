class TransactionHistoryModel {
  final String title, subtitle,amount;
  final bool isDrawal;

  const TransactionHistoryModel(
      {required this.title,
      required this.subtitle,
      
      required this.amount,
      required this.isDrawal});
}
