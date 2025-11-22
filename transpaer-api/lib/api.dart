//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/default_api.dart';

part 'model/b_corp_medallion.dart';
part 'model/badge_name.dart';
part 'model/category_alternatives.dart';
part 'model/category_full.dart';
part 'model/category_short.dart';
part 'model/category_status.dart';
part 'model/data_source.dart';
part 'model/eu_ecolabel_medallion.dart';
part 'model/fti_medallion.dart';
part 'model/image.dart';
part 'model/library_contents.dart';
part 'model/library_item_full.dart';
part 'model/library_item_short.dart';
part 'model/long_text.dart';
part 'model/medallion.dart';
part 'model/medallion_variant.dart';
part 'model/medium.dart';
part 'model/mention.dart';
part 'model/organisation_full.dart';
part 'model/organisation_id_variant.dart';
part 'model/organisation_ids.dart';
part 'model/organisation_short.dart';
part 'model/presentation.dart';
part 'model/presentation_entry.dart';
part 'model/product_full.dart';
part 'model/product_id_variant.dart';
part 'model/product_ids.dart';
part 'model/product_short.dart';
part 'model/reference_link.dart';
part 'model/score.dart';
part 'model/scorer_name.dart';
part 'model/shopping_entry.dart';
part 'model/short_text.dart';
part 'model/tco_medallion.dart';
part 'model/text_search_link_hack.dart';
part 'model/text_search_result.dart';
part 'model/text_search_results.dart';
part 'model/transpaer_medallion.dart';
part 'model/transpaer_score.dart';
part 'model/transpaer_score_branch.dart';
part 'model/transpaer_score_category.dart';
part 'model/verified_shop.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
