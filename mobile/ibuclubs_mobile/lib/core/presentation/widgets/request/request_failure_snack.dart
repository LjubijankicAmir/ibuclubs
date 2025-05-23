import 'package:flutter/material.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/request_failure.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/floating_snack_bar.dart';

class RequestFailureSnack {
  static void show(BuildContext context, RequestFailure failure) {
    ScaffoldMessenger.of(context).showSnackBar(
      FloatingSnackBar(
        text: failure.when(
          badRequest: (e) => "Something went wrong",
          unauthorized: () => "Unauthorized",
          jwtExpired: () => "Session expired",
          notFound: () => "Not found",
          serverError: () => "Server error",
          unexpectedError: () => "Unexpected error",
        ),
        color: Colors.red,
      ).buildSnackbar(),
    );
  }
}

class AppLocalizations {}
