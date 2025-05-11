import 'package:hive/hive.dart';

part 'jwt.g.dart';

@HiveType(typeId: 1)
class Jwt {
  @HiveField(0)
  final String token;

  @HiveField(1)
  final String refreshToken;

  @HiveField(2)
  final String role;

  Jwt({required this.token, required this.refreshToken, required this.role});
}
