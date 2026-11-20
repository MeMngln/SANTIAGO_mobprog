import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'user_avatar.dart';

/// "Write a comment..." row: avatar + rounded text field.
class CommentBox extends StatelessWidget {
  const CommentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UserAvatar(radius: 14.r),
        SizedBox(width: 10.w),
        Expanded(
          child: TextField(
            style: TextStyle(fontSize: 11.sp),
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.grey[200],
              hintText: 'Write a comment...',
              hintStyle: TextStyle(fontSize: 11.sp, color: Colors.grey),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
