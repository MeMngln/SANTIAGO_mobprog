import 'package:material_ui/material_ui.dart';

import '../widgets/newsfeed_card.dart';

/// Data for one post (Enhancement 1): number of likes, date, and whether the
/// post shows a placeholder image or none.
class _PostData {
  const _PostData({
    required this.userName,
    required this.content,
    required this.date,
    required this.likes,
    this.hasPlaceholder = false,
    this.hasImage = false,
  });

  final String userName;
  final String content;
  final String date;
  final int likes;
  final bool hasPlaceholder;
  final bool hasImage;
}

const List<_PostData> _posts = [
  _PostData(
    userName: 'Vico Sotto',
    content: 'kita ko si Green Lantern kanina nagkiss kame! #HappyPasigDay #VicoLantern #BerdengIlaw',
    date: '10 hours ago',
    likes: 26407,
  ),
  _PostData(
    userName: 'Berdeng Ilaw',
    content: 'ako talaga si Green Lantern ahihihihi #BerdengIlaw #Legit #fyp',
    date: '2 min ago',
    likes: 69,
    hasImage: true,
  ),
  _PostData(
    userName: 'Natasha Romanoff',
    content: 'Mission accomplished. Coffee time. #TeamWork',
    date: 'November 28',
    likes: 245,
    hasPlaceholder: true,
  ),
  _PostData(
    userName: 'Bruce Banner',
    content: 'Lab day. Please keep the noise down.',
    date: 'November 27',
    likes: 87,
  ),
  _PostData(
    userName: 'Thor Odinson',
    content: 'Feast tonight, everyone is invited! #Asgard',
    date: 'November 25',
    likes: 512,
    hasPlaceholder: true,
  ),
  _PostData(
    userName: 'Clint Barton',
    content: 'Got the target again. #Bullseye',
    date: 'November 22',
    likes: 64,
  ),
  _PostData(
    userName: 'Wanda Maximoff',
    content: 'Quiet morning at home. #Peace',
    date: 'November 20',
    likes: 398,
    hasPlaceholder: true,
  ),
  _PostData(
    userName: 'Peter Parker',
    content: 'Homework due tomorrow and I am swinging around town.',
    date: 'November 18',
    likes: 1200,
  ),
  _PostData(
    userName: 'Sam Wilson',
    content: 'Great view from up here. #Flying',
    date: 'November 15',
    likes: 156,
    hasPlaceholder: true,
  ),
  _PostData(
    userName: 'Carol Danvers',
    content: 'Back on Earth for a while. Missed you all!',
    date: 'November 12',
    likes: 740,
  ),
];

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ListView.builder creates cards only as they scroll into view.
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        final post = _posts[index];
        return NewsfeedCard(
          userName: post.userName,
          postContent: post.content,
          date: post.date,
          numOfLikes: post.likes,
          hasPlaceholder: post.hasPlaceholder,
          hasImage: post.hasImage,
        );
      },
    );
  }
}
