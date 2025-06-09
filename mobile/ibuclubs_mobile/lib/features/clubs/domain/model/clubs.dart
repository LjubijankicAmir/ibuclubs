import 'package:ibuclubs_mobile/features/clubs/domain/model/club.dart';
import 'package:ibuclubs_mobile/features/clubs/domain/model/membership.dart';

class Clubs {
  final List<Membership> myClubs;
  final List<Club> allClubs;

  Clubs({required this.myClubs, required this.allClubs});
}
