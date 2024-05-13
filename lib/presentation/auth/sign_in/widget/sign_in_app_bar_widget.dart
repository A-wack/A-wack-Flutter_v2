import 'package:a_wack_flutter_v2/core/component/image_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/component/image_widget.dart';

class SignInAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final double appbarHeight;

  const SignInAppBarWidget({super.key, required this.appbarHeight});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: SizedBox(
              width: 24.w,
              height: 24.h,
              child: ImageWidget(
                image: ImageStorage.leftArrowIos,
                imageType: ImageType.png,
                imageHeight: 15.h,
              ),
            ),
          ),
          SizedBox(width: 24.w),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appbarHeight);
}
