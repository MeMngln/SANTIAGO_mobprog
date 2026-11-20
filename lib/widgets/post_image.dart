import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

/// Enhancement 1: Image widget for the post image area.
class PostImage extends StatelessWidget {
  const PostImage({super.key, required this.assetPath});

  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: Image.asset(
        assetPath,
        width: double.infinity,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          height: 200.h,
          width: double.infinity,
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: CustomText(
            text: 'Image not found: $assetPath',
            fontSize: 12.sp,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
