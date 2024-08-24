import 'package:test_app/core/utils/app_images.dart';
import 'package:test_app/models/user_info_model.dart';

abstract class Constants{
  static List<UserInfoModel> users = [
    UserInfoModel(avatar: AppImages.avatars[0], name: 'Amr Abdalsattar', email: 'amrabdalsattar@gmail.com'),
    UserInfoModel(avatar: AppImages.avatars[1], name: 'Hossam Gamal', email: 'hossamgamal.1@gmail.com'),
    UserInfoModel(avatar: AppImages.avatars[2], name: 'Mouhamed Ashraf', email: 'apashraf.arch@gmail.com'),
    UserInfoModel(avatar: AppImages.avatars[3], name: 'Osama Rohiem', email: 'osamarohiem.6@gmail.com'),
  ];
}