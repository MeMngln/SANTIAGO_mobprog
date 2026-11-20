import 'package:material_ui/material_ui.dart';

import '../widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Vico Sotto',
          postContent: 'kita ko si Green Lantern kanina nagkiss kame! #HappyPasigDay #VicoLantern #BerdengIlaw',
          date: '10 hours ago',
          numOfLikes: 26407,
        ),
        NewsfeedCard(
          userName: 'Berdeng Ilaw',
          postContent: 'ako talaga si Green Lantern ahihihihi #BerdengIlaw #Legit #fyp',
          date: '2 min ago',
          numOfLikes: 69,
          hasImage: true,
        ),
      ],
    );
  }
}
