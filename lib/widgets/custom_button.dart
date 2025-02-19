import 'package:books_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.onTap, required this.title,
  });
   final void Function()? onTap;
   final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
            color:  AppColors.primaryColor,
            borderRadius: BorderRadius.circular(8)),
        child:  Text(
          title,
          style:const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
