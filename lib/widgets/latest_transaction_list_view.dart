import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static List userInfoItems = [
    const UserInfoModel(
        image: Assets.imagesLogo2,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    const UserInfoModel(
        image: Assets.imagesLogo1,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    const UserInfoModel(
        image: Assets.imagesLogoMain,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        //width: 250,
        height: 80,
        child: Row(
          children: userInfoItems
              .map(
                (e) => IntrinsicWidth(
                  child: UserInfoListTile(
                    userInfoModel: (e),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
