import 'package:dartz/dartz.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/extensions/object_request_failure_extension.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/extensions/response_request_failure_extension.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/request_failure.dart';
import 'package:ibuclubs_mobile/features/clubs/club_details/domain/model/club_details.dart';
import 'package:ibuclubs_mobile/features/clubs/data/datasources/clubs_remote_datasource.dart';
import 'package:ibuclubs_mobile/features/clubs/domain/model/club.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ClubsRepository {
  final ClubsRemoteDatasource _remoteDatasource;

  ClubsRepository(this._remoteDatasource);

  Future<Either<RequestFailure, List<Club>>> getMyClubs() async {
    try {
      final response = await _remoteDatasource.getMyClubs();

      if (response.isSuccessful) {
        return right(response.body!.map((club) => club.toDomain()).toList());
      }

      return left(response.toRequestFailure());
    } catch (e) {
      return left(await e.toRequestFailure());
    }
  }

  Future<Either<RequestFailure, List<Club>>> getAllClubs() async {
    try {
      final response = await _remoteDatasource.getAllClubs();

      if (response.isSuccessful) {
        return right(response.body!.map((club) => club.toDomain()).toList());
      }

      return left(response.toRequestFailure());
    } catch (e) {
      return left(await e.toRequestFailure());
    }
  }

  Future<Either<RequestFailure, ClubDetails>> getClubById(String clubId) async {
    try {
      final response = await _remoteDatasource.getClubById(clubId);

      if (response.isSuccessful) {
        return right(response.body!.toDomain());
      }

      return left(response.toRequestFailure());
    } catch (e) {
      return left(await e.toRequestFailure());
    }
  }
}
