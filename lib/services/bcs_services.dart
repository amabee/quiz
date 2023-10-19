import 'package:quiz/models/bcs_model.dart';
import 'package:quiz/repository/bcs_repository.dart';

class BcsServices {
  Future<List<BcsModel>> getBcs() async {
    BcsRepository bcsRepository = BcsRepository();
    await bcsRepository.createBcsTable();
    List<Map<String, dynamic>> maps = await bcsRepository.loadBcs();
    if (maps.isNotEmpty) {
      final bcsList = List.generate(maps.length, (i) {
        return BcsModel(
            title: maps[i]['title'],
            questionNumber: maps[i]['questionNumber'],
            duration: maps[i]['duration'],
            price: maps[i]['price'],
            categoryId: maps[i]['categoryId']);
      });
      return bcsList;
    }
    return [];
  }
}
