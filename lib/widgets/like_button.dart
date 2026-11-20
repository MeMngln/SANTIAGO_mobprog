import 'package:material_ui/material_ui.dart';

import '../constants.dart';
import 'action_button.dart';

/// Enhancement 3: widget-based Like button. Toggles and updates the count.
class LikeButton extends StatefulWidget {
  const LikeButton({super.key, this.initialLikes = 0});

  final int initialLikes;

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    final count = widget.initialLikes + (_liked ? 1 : 0);
    return ActionButton(
      icon: _liked ? Icons.thumb_up : Icons.thumb_up_outlined,
      label: count.toString(),
      color: _liked ? fbPrimary : fbDarkPrimary,
      onPressed: () {
        setState(() {
          _liked = !_liked;
        });
      },
    );
  }
}
