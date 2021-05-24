library swagger.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/user_api.dart';
part 'model/country.dart';
part 'model/error.dart';
part 'model/pagination.dart';
part 'model/phone_number.dart';
part 'model/user.dart';

ApiClient defaultApiClient = new ApiClient();
