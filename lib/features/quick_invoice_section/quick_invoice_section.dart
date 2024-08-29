import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../shared_components/custom_background_container.dart';
import '../shared_components/custom_button.dart';
import '../shared_components/section_header.dart';
import 'latest_transaction_widget.dart';
import 'quick_invoice_form.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        padding: 24,
        isFirstInColumn: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader(
                title: "Quick Invoice",
                postFixWidget: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const ShapeDecoration(
                      shape: OvalBorder(), color: AppColors.liteGrey),
                  child: const Icon(
                    Icons.add,
                    color: AppColors.secondaryColor,
                  ),
                )),
            const SizedBox(
              height: 24,
            ),
            const LatestTransactionWidget(),
            const Divider(
              color: AppColors.bordersColor,
              height: 48,
            ),
            const QuickInvoiceForm(),
            const SizedBox(
              height: 24,
            ),
            const Row(
              children: [
                Expanded(
                    child: CustomButton(
                  title: 'Add more details',
                  backgroundColor: AppColors.white,
                  textColor: AppColors.secondaryColor,
                )),
                SizedBox(
                  width: 24,
                ),
                Expanded(
                    child: CustomButton(
                  title: 'Send Money',
                  backgroundColor: AppColors.secondaryColor,
                  textColor: AppColors.white,
                )),
              ],
            )
          ],
        ));
  }
}
