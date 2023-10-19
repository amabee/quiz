import 'package:flutter/cupertino.dart';
import 'package:quiz/core/utils/color.dart';
import 'package:quiz/views/home/bcs/bcs_view.dart';
import 'package:quiz/views/home/category/category_item_view.dart';
import 'package:quiz/views/home/challengeRoom/challenge_room_view.dart';
import 'package:quiz/views/home/playerStatus/player_status_view.dart';
import 'package:quiz/views/home/runningTournament/running_tournament_view.dart';

class HomeViewModel extends ChangeNotifier {
  dynamic buildListView(int index, List<CategoryItemView> categoryList) {
    if (index == 0) {
      return PlayerStatusView();
    } else if (index == 1) {
      return Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ChallengeRoomView(),
      );
    } else if (index == 2) {
      return const Padding(
        padding: EdgeInsets.only(top: 15),
        child: RunningTournamentView(),
      );
    } else if (index == 3) {
      return Padding(
        padding: const EdgeInsets.only(top: 15),
        child: BcsView(),
      );
    } else if (index == 4) {
      return Container(
        color: const Color(
            0XFF0F71BA), // Change this to your desired background color
        child: const Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
          child: Text(
            'Reading Materials',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    } else {
      return categoryList[index - 5];
    }
  }
}
