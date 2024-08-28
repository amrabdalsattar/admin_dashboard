import '../models/drawer_item_model.dart';
import '../models/financial_operation_model.dart';
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
}
