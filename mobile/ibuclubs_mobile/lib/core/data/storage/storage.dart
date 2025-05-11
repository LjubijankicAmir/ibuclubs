import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

import 'package:ibuclubs_mobile/core/data/storage/box_names.dart';

class Storage {
  static Future<Box<T>> openSecureBox<T>(BoxName boxName) async {
    const secureStorage = FlutterSecureStorage();

    final secureStorageResult = optionOf(
      await secureStorage.read(key: boxName.toString()),
    );

    final String base64Key = await secureStorageResult.fold(
      () async {
        final base64Key = base64Url.encode(Hive.generateSecureKey());
        await secureStorage.write(key: boxName.toString(), value: base64Key);
        return base64Key;
      },
      (base64Key) {
        return base64Key;
      },
    );

    final encryptionKey = base64Url.decode(base64Key);

    return Hive.openBox<T>(
      boxName.toString(),
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }

  static Future<Box<T>> openBox<T>(BoxName boxName) async =>
      Hive.openBox<T>(boxName.toString());
}
