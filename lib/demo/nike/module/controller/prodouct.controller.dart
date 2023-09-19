import 'package:flutter_show_case/demo/nike/module/images/Logo.dart';
import 'package:get/state_manager.dart';
import '../model/nike_product.dart';

class ProdouctController extends GetxController {
  var prodoucts = <Product>[].obs;
  @override
  void onInit() {
    AddData();
    super.onInit();
  }

  // @override
  // void onClose() {
  //   Clear();
  //   super.onClose();
  // }

  void AddData() async {
    await Load();
    var addProduct = [
      Product(
        image: ImageLogo.image_airmax,
        name: "Air Max 1",
        detail:
            "Debuting in 1987, no one knew then that this shoe was going to be the pair to kickstart an iconic footwear series (Air Max) that is continues today. Although the Nike Air technology was developed prior to its release, the Air Max 1 was the first model to feature the visible air unit which changed the game forever.",
        price: 2500,
      ),
      Product(
        image: ImageLogo.nike_dunk,
        name: "Nike Dunk",
        detail:
            "Another one of Nike’s hottest sneakers in the market right now, the Nike Dunk was originally introduced in Nike’s catalogue in 1985 along side the aforementioned Air Jordan 1. Utilizing a simple color-blocking schemes intended for collegiate athletes, this pair of shoes was initially made for the hardwood, but has become a staple within today’s skateboard communities.",
        price: 1999,
      ),
      Product(
        image: ImageLogo.air_jordan,
        name: "Air Jordan 1",
        detail:
            "Arguably the world’s most famous sneaker, the Air Jordan 1 needs no introduction. This shoe was exclusively made for Michael Jordan and features the iconic “Wings” logo which predates Jordan Brand’s “Jumpman” logo. To this day, new colourways and variations are extremely hot sellers.",
        price: 3500,
      ),
      Product(
        image: ImageLogo.nike_s_sneaker,
        name: "The Moon Shoe” - Nike’s First Ever Sneaker",
        detail:
            "The first ever sneaker to be released under the Nike branding was the “Moon Shoe”, which would go on to be known as the Waffle Racer. Known for its innovative rubber waffle sole found underneath, this sneaker changed running shoes forever. Bowerman achieved this by putting rubber into his wife's waffle iron.",
        price: 5500,
      ),
      Product(
        image: ImageLogo.nike_classic,
        name: "Nike Icon Classic",
        detail:
            "Lifted. Classic hoops detailing. Strappy but easy to wear. Tick all the boxes in the Nike Icon Classic. Its big, bold midsole wows with comfort. The outsole pattern delivers iconic Air Force 1 vibes, while the multiple hook-and-loop straps add a fearless look. Get ready to shine with this new voice in sandal style",
        price: 1200,
      ),
      Product(
        image: ImageLogo.nike_air_max_plus,
        name: "Nike Air Max Plus",
        detail:
            "Unleash your style with a flame-like frame that brings more heat to the streets. While sheer mesh helps keep you cool, the Nike Air Max Plus delivers a more impressive Nike Air experience. Because it helps maintain balance with premium quality and incredible shock absorption",
        price: 4500,
      ),
      Product(
        image: ImageLogo.nike_premium,
        name: "Nike SB Dunk Low Pro Premium",
        detail:
            "Carry full style on your feet. Design for you This carries everything you need line adds a fresh twist to an iconic skate shoe. Featuring a retro look inspired by your favorite '90s backpacks, suede is featured on the flip board. (reminiscent of the bottom half of a timeless bag) paired with durable, textured fabric to combine functionality with comfort",
        price: 5500,
      ),
      Product(
        image: ImageLogo.nike_dunk_low,
        name: "Nike Dunk Low",
        detail:
            "Shiny but not gold, these Dunk Lows are more punchy than your average sneaker but are sporty enough to be worn casually. Wear luxurious fabric as smooth as satin. A classic color combo that pays homage to the Be True to Your School sneaker's original ad campaign returns your look to popular off-court charm. There must be another reason to grab this pair. Are you ready to go",
        price: 7700,
      )
    ];
    prodoucts.assignAll(addProduct);
    Get.log("Create Object " + prodoucts.length.toString());
  }

  Future<void> Load() async {
    await Future.delayed(Duration(seconds: 2));
  }

  // void Clear() async {
  //   prodoucts.clear();
  //   Get.log("Object Clear " + prodoucts.length.toString());
  // }
}
