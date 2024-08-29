import '../models/drawer_item_model.dart';
import '../models/financial_operation_model.dart';
import '../models/transaction_history_item_model.dart';
import '../models/user_info_model.dart';
import 'utils/app_images.dart';

abstract class Constants {
  static List<UserInfoModel> users = [
    UserInfoModel(
        avatar: AppImages.avatars[1],
        name: 'Hossam Gamal',
        email: 'hossamgamal.1@gmail.com'),
    UserInfoModel(
        avatar: AppImages.avatars[2],
        name: 'Mohamed Ashraf',
        email: 'apashraf.arch@gmail.com'),
    UserInfoModel(
        avatar: AppImages.avatars[3],
        name: 'Osama Rohiem',
        email: 'osamarohiem.6@gmail.com')
  ];

  static const List<DrawerItemModel> drawerItemModels = [
    DrawerItemModel(iconPath: AppImages.dashboard, title: "Dashboard"),
    DrawerItemModel(
        iconPath: AppImages.myTransactions, title: "My Transactions"),
    DrawerItemModel(iconPath: AppImages.statistics, title: "Statistics"),
    DrawerItemModel(iconPath: AppImages.walletAccount, title: "Wallet Account"),
    DrawerItemModel(iconPath: AppImages.myInvestments, title: "My Investments")
  ];

  static const List<FinancialOperationModel> financialOperationModels = [
    FinancialOperationModel(
        cash: "20,129",
        date: "April 2024",
        icon: AppImages.balance,
        type: "Balance"),
    FinancialOperationModel(
        cash: "32,229",
        date: "April 2024",
        icon: AppImages.income,
        type: "Income"),
    FinancialOperationModel(
        cash: "12,100",
        date: "April 2024",
        icon: AppImages.expenses,
        type: "Expenses")
  ];

  static const List<TransactionHistoryItemModel> transaction = [
    TransactionHistoryItemModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022',
        cash: '20,129',
        isWithdrawal: true),
    TransactionHistoryItemModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        cash: '2,000',
        isWithdrawal: false),
    TransactionHistoryItemModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        cash: '20,129',
        isWithdrawal: false),
  ];
}
