import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:ibuclubs_mobile/auth/token/data/failures/jwt_failure.dart';
import 'package:ibuclubs_mobile/auth/token/domain/models/jwt.dart';
import 'package:ibuclubs_mobile/core/data/storage/box_names.dart';
import 'package:ibuclubs_mobile/core/data/storage/storage.dart';

@lazySingleton
@preResolve
class JwtLocalDataSource {
  static const BoxName _boxName = BoxName.jwt;
  static final _itemKey = BoxName.jwt.toString();
  final Box<Jwt> _box;

  JwtLocalDataSource(this._box);

  @factoryMethod
  static Future<JwtLocalDataSource> initialize() async {
    Hive.registerAdapter<Jwt>(JwtAdapter());
    final box = await Storage.openSecureBox<Jwt>(_boxName);
    return JwtLocalDataSource(box);
  }

  Either<JwtFailure, Jwt> get() {
    final Option<Jwt> jwtResult = optionOf(_box.get(_itemKey));

    return jwtResult.fold(() => left(const NoJwt()), (jwt) => right(jwt));
  }

  Future put(Jwt jwt) => _box.put(_itemKey, jwt);
  Future delete() => _box.delete(_itemKey);

  @disposeMethod
  void dispose() {
    _box.close();
  }
}
