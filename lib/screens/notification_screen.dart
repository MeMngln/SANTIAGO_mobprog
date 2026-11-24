import 'package:material_ui/material_ui.dart';

import '../widgets/notification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  static const int _notificationCount = 20;

  static const List<String> _names = [
    'Alexander Tolentino',
    'Renshar Leonen',
    'Kurt Balmeo',
    'Jude Belleza',
    'Francis Dela Cruz',
  ];

  static const List<String> _descriptions = [
    'liked your post',
    'commented on your post',
    'shared your post',
    'mentioned you in a comment',
  ];

  @override
  Widget build(BuildContext context) {
    // ListView.separated builds only the rows that are on screen, so 20
    // notifications (or 2000) scroll smoothly.
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: ListView.separated(
        itemCount: _notificationCount,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          return NotificationWidget(
            name: _names[index % _names.length],
            post: 'Post #${index + 1}',
            description: _descriptions[index % _descriptions.length],
          );
        },
      ),
    );
  }
}
