import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:property_rental_2/Pages/Our_Team_Details_Page/our_team_details_page.dart';

class RoutingPage{

  static String ourTeamDetailsPage = "ourTeamDetailsPage";

  static List<GetPage> pages = [
    GetPage(
        name: ourTeamDetailsPage,
        page: () => OurTeamDetailsPage(),
    ),
  ];
}