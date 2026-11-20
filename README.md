# santiago_mobprog

Flutter replication of a Facebook newsfeed.
INF244MWA - Lab Activity 1A: File Structuring | Design Pattern

## Project structure

```
surname_mobprog/
├── assets/
│   ├── fonts/
│   ├── icons/
│   └── images/BerdengIlaw.jpeg
├── lib/
│   ├── screens/
│   │   ├── home_screen.dart
│   │   └── newsfeed_screen.dart
│   ├── widgets/
│   │   ├── action_button.dart
│   │   ├── comment_box.dart
│   │   ├── comment_button.dart
│   │   ├── custom_text.dart
│   │   ├── like_button.dart
│   │   ├── newsfeed_card.dart
│   │   ├── post_image.dart
│   │   └── user_avatar.dart
│   ├── constants.dart
│   └── main.dart
└── pubspec.yaml
```

## Lab Activity 1: discussion

**Design pattern / file structuring.** The code is split by responsibility:
`screens/` holds full pages, `widgets/` holds small reusable UI pieces, and
`constants.dart` holds shared colors. `main.dart` only sets up the app and routes.
Splitting files this way keeps each file short, avoids repeated code, and makes
the UI easy to change.

**Enhancement 1 - Image widget.** The post image is now a `PostImage` widget built on
Flutter's `Image.asset`, with `BoxFit.cover`, rounded corners and an `errorBuilder`
fallback if the file is missing.

**Enhancement 2 - Avatar.** The plain person icon was replaced by a `UserAvatar`
widget using `CircleAvatar`, used in the post header and the comment box.

**Enhancement 3 - Widget-based buttons.** The Like and Comment buttons became
their own widgets (`LikeButton`, `CommentButton`) built on a shared `ActionButton`.
`LikeButton` is a `StatefulWidget` that toggles and updates the like count.

**What I learned.** - I continuously learn more about Flutter and familiarize myself in githubs ui and its features
