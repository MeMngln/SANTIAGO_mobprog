import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'action_button.dart';
import 'comment_box.dart';
import 'comment_button.dart';
import 'custom_text.dart';
import 'like_button.dart';
import 'post_image.dart';
import 'user_avatar.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final bool? hasImage;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.hasImage,
  });

  @override
  Widget build(BuildContext context) {
    final screenUtilSp = ScreenUtil().setSp(10);
    final screenUtilFontUserNameSize = ScreenUtil().setSp(15);
    final screenUtilIconSize = ScreenUtil().setSp(15);

    return Card(
      margin: EdgeInsets.all(screenUtilSp),
      child: Padding(
        padding: EdgeInsets.all(screenUtilSp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header: avatar, name, date, privacy icon, menu
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserAvatar(radius: 20.r), // Enhancement 2
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: screenUtilFontUserNameSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: date,
                          fontSize: 12.sp,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 3.w),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: screenUtilIconSize,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: 5.h),
            // post content
            CustomText(
              text: postContent,
              fontSize: 12.sp,
              color: Colors.black,
            ),
            SizedBox(height: 5.h),
            // Enhancement 1: image widget
            if (hasImage == true)
              const PostImage(assetPath: 'assets/images/BerdengIlaw.jpeg'),
            // Enhancement 3: widget-based Like / Comment / Share
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LikeButton(initialLikes: numOfLikes ?? 0),
                const CommentButton(),
                ActionButton(
                  icon: Icons.redo,
                  label: 'Share',
                  onPressed: () {},
                ),
              ],
            ),
            const CommentBox(),
            SizedBox(height: 10.h),
            CustomText(
              text: 'View all comments',
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
