import 'package:artemis/artemis.dart';
import "package:dio/dio.dart";
import "package:gql_dio_link/gql_dio_link.dart";

class AppGQLClient {
  final Dio dio;

  AppGQLClient(this.dio);

  ArtemisClient init() {
    return ArtemisClient.fromLink(
      DioLink("/graphql", client: dio),
    );
  }
}