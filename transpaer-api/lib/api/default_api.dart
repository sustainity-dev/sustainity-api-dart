//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Health check
  ///
  /// Service health check.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> checkHealthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Health check
  ///
  /// Service health check.
  Future<void> checkHealth() async {
    final response = await checkHealthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get product alternatives.
  ///
  /// Returns a list of alternative products for each of products category.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProductIdVariant] productIdVariant (required):
  ///   Variant of a product ID.
  ///
  /// * [String] id (required):
  ///   ID of a resource.
  ///
  /// * [String] region:
  ///   Region code.
  Future<Response> getAlternativesWithHttpInfo(ProductIdVariant productIdVariant, String id, { String? region, }) async {
    // ignore: prefer_const_declarations
    final path = r'/product/{productIdVariant}:{id}/alternatives'
      .replaceAll('{productIdVariant}', productIdVariant.toString())
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (region != null) {
      queryParams.addAll(_queryParams('', 'region', region));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get product alternatives.
  ///
  /// Returns a list of alternative products for each of products category.
  ///
  /// Parameters:
  ///
  /// * [ProductIdVariant] productIdVariant (required):
  ///   Variant of a product ID.
  ///
  /// * [String] id (required):
  ///   ID of a resource.
  ///
  /// * [String] region:
  ///   Region code.
  Future<List<CategoryAlternatives>?> getAlternatives(ProductIdVariant productIdVariant, String id, { String? region, }) async {
    final response = await getAlternativesWithHttpInfo(productIdVariant, id,  region: region, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CategoryAlternatives>') as List)
        .cast<CategoryAlternatives>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get category.
  ///
  /// Returns full info about a specified category.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] category (required):
  ///   Category path.
  Future<Response> getCategoryWithHttpInfo(String category,) async {
    // ignore: prefer_const_declarations
    final path = r'/category/{category}'
      .replaceAll('{category}', category);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get category.
  ///
  /// Returns full info about a specified category.
  ///
  /// Parameters:
  ///
  /// * [String] category (required):
  ///   Category path.
  Future<CategoryFull?> getCategory(String category,) async {
    final response = await getCategoryWithHttpInfo(category,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CategoryFull',) as CategoryFull;
    
    }
    return null;
  }

  /// Get library contents.
  ///
  /// Returns a list of summaries of all library items.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getLibraryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/library';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get library contents.
  ///
  /// Returns a list of summaries of all library items.
  Future<LibraryContents?> getLibrary() async {
    final response = await getLibraryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LibraryContents',) as LibraryContents;
    
    }
    return null;
  }

  /// Get library item.
  ///
  /// Returns a full library item.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] topic (required):
  ///   Library topic.
  Future<Response> getLibraryItemWithHttpInfo(String topic,) async {
    // ignore: prefer_const_declarations
    final path = r'/library/{topic}'
      .replaceAll('{topic}', topic);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get library item.
  ///
  /// Returns a full library item.
  ///
  /// Parameters:
  ///
  /// * [String] topic (required):
  ///   Library topic.
  Future<LibraryItemFull?> getLibraryItem(String topic,) async {
    final response = await getLibraryItemWithHttpInfo(topic,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LibraryItemFull',) as LibraryItemFull;
    
    }
    return null;
  }

  /// Get organisation.
  ///
  /// Returns full info about a specified organisation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrganisationIdVariant] organisationIdVariant (required):
  ///   Variant of an organisation ID.
  ///
  /// * [String] id (required):
  ///   ID of a resource.
  Future<Response> getOrganisationWithHttpInfo(OrganisationIdVariant organisationIdVariant, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/organisation/{organisationIdVariant}:{id}'
      .replaceAll('{organisationIdVariant}', organisationIdVariant.toString())
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get organisation.
  ///
  /// Returns full info about a specified organisation.
  ///
  /// Parameters:
  ///
  /// * [OrganisationIdVariant] organisationIdVariant (required):
  ///   Variant of an organisation ID.
  ///
  /// * [String] id (required):
  ///   ID of a resource.
  Future<OrganisationFull?> getOrganisation(OrganisationIdVariant organisationIdVariant, String id,) async {
    final response = await getOrganisationWithHttpInfo(organisationIdVariant, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrganisationFull',) as OrganisationFull;
    
    }
    return null;
  }

  /// Get product.
  ///
  /// Returns full info about a specified product.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProductIdVariant] productIdVariant (required):
  ///   Variant of a product ID.
  ///
  /// * [String] id (required):
  ///   ID of a resource.
  ///
  /// * [String] region:
  ///   Region code.
  Future<Response> getProductWithHttpInfo(ProductIdVariant productIdVariant, String id, { String? region, }) async {
    // ignore: prefer_const_declarations
    final path = r'/product/{productIdVariant}:{id}'
      .replaceAll('{productIdVariant}', productIdVariant.toString())
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (region != null) {
      queryParams.addAll(_queryParams('', 'region', region));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get product.
  ///
  /// Returns full info about a specified product.
  ///
  /// Parameters:
  ///
  /// * [ProductIdVariant] productIdVariant (required):
  ///   Variant of a product ID.
  ///
  /// * [String] id (required):
  ///   ID of a resource.
  ///
  /// * [String] region:
  ///   Region code.
  Future<ProductFull?> getProduct(ProductIdVariant productIdVariant, String id, { String? region, }) async {
    final response = await getProductWithHttpInfo(productIdVariant, id,  region: region, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProductFull',) as ProductFull;
    
    }
    return null;
  }

  /// Text search.
  ///
  /// Returns results of a search using a text query.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   Text query for search.
  Future<Response> searchByTextWithHttpInfo(String query,) async {
    // ignore: prefer_const_declarations
    final path = r'/search/text';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'query', query));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Text search.
  ///
  /// Returns results of a search using a text query.
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///   Text query for search.
  Future<TextSearchResults?> searchByText(String query,) async {
    final response = await searchByTextWithHttpInfo(query,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TextSearchResults',) as TextSearchResults;
    
    }
    return null;
  }
}
