import 'package:get/state_manager.dart';
import '../model/nike_product.dart';

class ProdouctController extends GetxController {
  var prodoucts = <Product>[].obs;
  @override
  void onInit() {
    AddData();
    super.onInit();
  }

  @override
  void onClose() {
    Clear();
    super.onClose();
  }

  void AddData() async {
    await Load();
    var addProduct = [
      Product(
        name: "Air Max 1",
        detail:
            "Debuting in 1987, no one knew then that this shoe was going to be the pair to kickstart an iconic footwear series (Air Max) that is continues today. Although the Nike Air technology was developed prior to its release, the Air Max 1 was the first model to feature the visible air unit which changed the game forever.",
        price: 2500,
      ),
      Product(
        name: "Nike Dunk",
        detail:
            "Another one of Nike’s hottest sneakers in the market right now, the Nike Dunk was originally introduced in Nike’s catalogue in 1985 along side the aforementioned Air Jordan 1. Utilizing a simple color-blocking schemes intended for collegiate athletes, this pair of shoes was initially made for the hardwood, but has become a staple within today’s skateboard communities.",
        price: 1999,
      ),
      Product(
        name: "Air Jordan 1",
        detail:
            "Arguably the world’s most famous sneaker, the Air Jordan 1 needs no introduction. This shoe was exclusively made for Michael Jordan and features the iconic “Wings” logo which predates Jordan Brand’s “Jumpman” logo. To this day, new colourways and variations are extremely hot sellers.",
        price: 3500,
      ),
      Product(
        name: "The Moon Shoe” - Nike’s First Ever Sneaker",
        detail:
            "The first ever sneaker to be released under the Nike branding was the “Moon Shoe”, which would go on to be known as the Waffle Racer. Known for its innovative rubber waffle sole found underneath, this sneaker changed running shoes forever. Bowerman achieved this by putting rubber into his wife's waffle iron.",
        price: 5500,
      ),
    ];
    prodoucts.assignAll(addProduct);
    Get.log("Create Object " + prodoucts.length.toString());
  }

  Future<void> Load() async {
    await Future.delayed(Duration(seconds: 2));
  }

  void Clear() async {
    prodoucts.clear();
    Get.log("Object Clear " + prodoucts.length.toString());
  }
}
