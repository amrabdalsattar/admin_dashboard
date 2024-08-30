

import '../models/drawer_item_model.dart';
import '../models/financial_operation_model.dart';
import '../models/item_details_model.dart';
import '../models/transaction_model.dart';
import '../models/user_info_model.dart';
import 'utils/app_colors.dart';
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

  static const List<TransactionModel> transaction = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022',
        cash: '20,129',
        isWithdrawal: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        cash: '2,000',
        isWithdrawal: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        cash: '20,129',
        isWithdrawal: false),
  ];
  
  static const List<ItemDetailsModel> incomeDetails = [
    ItemDetailsModel(title: 'Design service', percentage: '40%', color: AppColors.blue),
    ItemDetailsModel(title: 'Design product', percentage: '25%', color: AppColors.secondaryColor),
    ItemDetailsModel(title: 'Product royalti', percentage: '20%', color: AppColors.primaryColor),
    ItemDetailsModel(title: 'Other', percentage: '15%', color: AppColors.offWhite),
  ];
}
