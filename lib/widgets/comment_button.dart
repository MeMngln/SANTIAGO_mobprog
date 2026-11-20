import 'package:material_ui/material_ui.dart';

import 'action_button.dart';

/// Enhancement 3: widget-based Comment button.
class CommentButton extends StatelessWidget {
  const CommentButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ActionButton(
      icon: Icons.chat_bubble_outline,
      label: 'Comment',
      onPressed: onPressed ?? () {},
    );
  }
}
