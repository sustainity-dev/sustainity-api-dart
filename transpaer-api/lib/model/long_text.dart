//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LongText {
  /// Returns a new [LongText] instance.
  LongText({
    required this.text,
    this.sources = const [],
  });

  /// Long string for descriptions, articles...
  String text;

  /// Describes where the related data was retrieved from.
  List<String> sources;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LongText &&
    other.text == text &&
    _deepEquality.equals(other.sources, sources);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (text.hashCode) +
    (sources.hashCode);

  @override
  String toString() => 'LongText[text=$text, sources=$sources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'text'] = this.text;
      json[r'sources'] = this.sources;
    return json;
  }

  /// Returns a new [LongText] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LongText? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LongText[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LongText[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LongText(
        text: mapValueOfType<String>(json, r'text')!,
        sources: json[r'sources'] is Iterable
            ? (json[r'sources'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<LongText> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LongText>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LongText.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LongText> mapFromJson(dynamic json) {
    final map = <String, LongText>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LongText.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LongText-objects as value to a dart map
  static Map<String, List<LongText>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LongText>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LongText.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'text',
    'sources',
  };
}

