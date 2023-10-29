//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProductFull {
  /// Returns a new [ProductFull] instance.
  ProductFull({
    required this.productId,
    this.gtins = const [],
    this.names = const [],
    this.descriptions = const [],
    this.images = const [],
    this.manufacturers = const [],
    this.alternatives = const [],
    this.medallions = const [],
  });

  /// ID of a resource.
  String productId;

  List<String> gtins;

  List<ShortText> names;

  List<LongText> descriptions;

  List<Image> images;

  List<OrganisationShort> manufacturers;

  List<CategoryAlternatives> alternatives;

  List<Medallion> medallions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductFull &&
    other.productId == productId &&
    _deepEquality.equals(other.gtins, gtins) &&
    _deepEquality.equals(other.names, names) &&
    _deepEquality.equals(other.descriptions, descriptions) &&
    _deepEquality.equals(other.images, images) &&
    _deepEquality.equals(other.manufacturers, manufacturers) &&
    _deepEquality.equals(other.alternatives, alternatives) &&
    _deepEquality.equals(other.medallions, medallions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (productId.hashCode) +
    (gtins.hashCode) +
    (names.hashCode) +
    (descriptions.hashCode) +
    (images.hashCode) +
    (manufacturers.hashCode) +
    (alternatives.hashCode) +
    (medallions.hashCode);

  @override
  String toString() => 'ProductFull[productId=$productId, gtins=$gtins, names=$names, descriptions=$descriptions, images=$images, manufacturers=$manufacturers, alternatives=$alternatives, medallions=$medallions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'productId'] = this.productId;
      json[r'gtins'] = this.gtins;
      json[r'names'] = this.names;
      json[r'descriptions'] = this.descriptions;
      json[r'images'] = this.images;
      json[r'manufacturers'] = this.manufacturers;
      json[r'alternatives'] = this.alternatives;
      json[r'medallions'] = this.medallions;
    return json;
  }

  /// Returns a new [ProductFull] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductFull? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductFull[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductFull[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductFull(
        productId: mapValueOfType<String>(json, r'productId')!,
        gtins: json[r'gtins'] is Iterable
            ? (json[r'gtins'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        names: ShortText.listFromJson(json[r'names']),
        descriptions: LongText.listFromJson(json[r'descriptions']),
        images: Image.listFromJson(json[r'images']),
        manufacturers: OrganisationShort.listFromJson(json[r'manufacturers']),
        alternatives: CategoryAlternatives.listFromJson(json[r'alternatives']),
        medallions: Medallion.listFromJson(json[r'medallions']),
      );
    }
    return null;
  }

  static List<ProductFull> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductFull>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductFull.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductFull> mapFromJson(dynamic json) {
    final map = <String, ProductFull>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductFull.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductFull-objects as value to a dart map
  static Map<String, List<ProductFull>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductFull>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductFull.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'productId',
    'images',
    'manufacturers',
    'alternatives',
    'medallions',
  };
}

