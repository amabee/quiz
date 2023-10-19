import 'package:flutter/material.dart';
import 'package:quiz/views/home/runningTournament/running_tournament_item_view.dart';
import 'package:provider/provider.dart';
import '../../../viewModels/home/runningTournament/running_tournament_view_model.dart';

class RunningTournamentView extends StatelessWidget {
  const RunningTournamentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RunningTournamentViewModel runningTournamentViewModel =
        context.watch<RunningTournamentViewModel>();
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    final orientation = MediaQuery.of(context).orientation;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            'Ongoing Tournament',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: width,
          height: height / 3,
          // width: width,
          // height: listSizedBoxHeight ,
          child: ListView.builder(
            itemCount: runningTournamentViewModel.items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                runningTournamentViewModel.runningTournamentItemList[index],
          ),
        ),
      ],
    );
  }
}
