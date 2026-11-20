import 'package:material_ui/material_ui.dart';

/// Enhancement 2: CircleAvatar used as the user profile image.
/// Pass [imagePath] (an asset) to show a photo; otherwise a person icon shows.
class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key, this.radius = 18, this.imagePath});

  final double radius;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    final hasImage = imagePath != null;
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.grey[300],
      foregroundImage: hasImage ? AssetImage(imagePath!) : null,
      onForegroundImageError: hasImage ? (_, __) {} : null,
      child: Icon(Icons.person, size: radius * 1.2, color: Colors.grey[700]),
    );
  }
}
