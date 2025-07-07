import 'package:dartz/dartz.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/extensions/object_request_failure_extension.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/extensions/response_request_failure_extension.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/request_failure.dart';
import 'package:ibuclubs_mobile/features/clubs/club_details/domain/model/club_details.dart';
import 'package:ibuclubs_mobile/features/clubs/club_members/domain/model/club_member.dart';
import 'package:ibuclubs_mobile/features/clubs/data/datasources/clubs_remote_datasource.dart';
import 'package:ibuclubs_mobile/features/clubs/data/dto/create_club_dto.dart';
import 'package:ibuclubs_mobile/features/clubs/domain/model/club.dart';
import 'package:ibuclubs_mobile/features/clubs/domain/model/membership.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ClubsRepository {
  final ClubsRemoteDatasource _remoteDatasource;

  ClubsRepository(this._remoteDatasource);

  Future<Either<RequestFailure, List<Membership>>> getMyClubs() async {
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

  Future<Either<RequestFailure, Club?>> getOwnedClub() async {
    try {
      final response = await _remoteDatasource.getOwnedClub();

      if (response.isSuccessful) {
        return right(response.body!.toDomain());
      }

      return left(response.toRequestFailure());
    } catch (e) {
      return left(await e.toRequestFailure());
    }
  }

  Future<Either<RequestFailure, List<ClubMember>>> getMembers(
    String clubId,
  ) async {
    try {
      final response = await _remoteDatasource.getMembersWithRoles(clubId);

      if (response.isSuccessful) {
        return right(
          response.body!.map((member) => member.toDomain()).toList(),
        );
      }

      return left(response.toRequestFailure());
    } catch (e) {
      return left(await e.toRequestFailure());
    }
  }

  Future<Either<RequestFailure, void>> promoteMember(
    String clubId,
    String memberId,
  ) async {
    try {
      final response = await _remoteDatasource.changeMemberRole(
        clubId,
        memberId,
        "Admin",
      );

      if (response.isSuccessful) {
        return right(null);
      }

      return left(response.toRequestFailure());
    } catch (e) {
      return left(await e.toRequestFailure());
    }
  }

  Future<Either<RequestFailure, void>> demoteMember(
    String clubId,
    String memberId,
  ) async {
    try {
      final response = await _remoteDatasource.changeMemberRole(
        clubId,
        memberId,
        "Member",
      );

      if (response.isSuccessful) {
        return right(null);
      }

      return left(response.toRequestFailure());
    } catch (e) {
      return left(await e.toRequestFailure());
    }
  }

  Future<Either<RequestFailure, void>> kickMember(
    String clubId,
    String memberId,
  ) async {
    try {
      final response = await _remoteDatasource.kickMember(clubId, memberId);

      if (response.isSuccessful) {
        return right(null);
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

  Future<Option<RequestFailure>> enrollToClub(String clubId) async {
    try {
      final response = await _remoteDatasource.enrollToClub(clubId);

      if (response.isSuccessful) {
        return none();
      }

      return some(response.toRequestFailure());
    } catch (e) {
      return some(await e.toRequestFailure());
    }
  }

  Future<Option<RequestFailure>> leaveClub(String clubId) async {
    try {
      final response = await _remoteDatasource.leaveClub(clubId);

      if (response.isSuccessful) {
        return none();
      }

      return some(response.toRequestFailure());
    } catch (e) {
      return some(await e.toRequestFailure());
    }
  }

  Future<Option<RequestFailure>> createClub(
    String name,
    String description,
    String socialMediaLink,
  ) async {
    try {
      final model = CreateClubDto(
        (builder) =>
            builder
              ..name = name
              ..description = description
              ..socialMediaLink = socialMediaLink,
      );

      final response = await _remoteDatasource.createClub(model);

      if (response.isSuccessful) {
        return none();
      }

      return some(response.toRequestFailure());
    } catch (e) {
      return some(await e.toRequestFailure());
    }
  }
}
