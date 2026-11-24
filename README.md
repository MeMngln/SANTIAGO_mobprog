# santiago_mobprog

Flutter replication of a Facebook newsfeed.
INF244MWA - Lab Activity 1A: File Structuring | Design Pattern

## Project structure

```
surname_mobprog/
├── assets/
│   ├── fonts/
│   ├── icons/
│   └── images/          (iron_man.jpg goes here)
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

**What I learned.** (Write your own reflection here.)

---

## Lab Activity 2: discussion

**Doing the posts and notifications efficiently.**
Instead of typing 10 posts and 20 notifications by hand into a `ListView`, I
store the data separately and let `ListView.builder` / `ListView.separated`
build the widgets from it. Each post is described by a small `_PostData` object
(user, content, date, number of likes, and whether it has a placeholder or
image). The 20 notifications are generated from a short list of names and
descriptions using the row index, so adding more only means changing
`_notificationCount`. These list builders only create the rows that are visible,
so scrolling stays smooth. The new `NotificationWidget` is reused for every row,
following the same screens/widgets design pattern as Lab 1.

**Enhancements.**
1. *Dynamic post* - `NewsfeedCard` now takes `numOfLikes`, `date` and
   `hasPlaceholder`, so every post can be different. Flutter's `Placeholder`
   widget draws the box with the X.
2. *Dynamic AppBar title* - `HomeScreen` keeps a list of titles and shows the one
   matching `_selectedIndex`, so the bar says the app name on Home and
   "Notifications" on the notification tab.
3. *More BottomNavigationBar items* - added a Profile tab and a third page in the
   `PageView`.
4. *App name* - changed to **Chatterly** in `constants.dart` and used in the
   AppBar and `MaterialApp.title`.
5. *Color palette* - updated the colors in `constants.dart` (teal palette).

**Challenges and how I addressed them.**
logging into my account instead of remembering my password i use passkey!
