import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            iconColor: const Color(0xffFFFFFF),
            image: itemModel.image,
          imageColor: Colors.white,
          backgroundColor: const Color(0xff4EB7F2),
            
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.title,
              style: AppStyle.styleSemiBold16(context).copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(fit: BoxFit.scaleDown,
            child: Text(
              itemModel.date,
              style: AppStyle.styleRegular14(context)
                  .copyWith(color: const Color(0xffFAFAFA)),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(fit: BoxFit.scaleDown,
            child: Text(
              itemModel.price,
              style: AppStyle.styleSemiBold24(context).copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
