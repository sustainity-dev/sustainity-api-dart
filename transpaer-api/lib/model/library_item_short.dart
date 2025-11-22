//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LibraryItemShort {
  /// Returns a new [LibraryItemShort] instance.
  LibraryItemShort({
    required this.id,
    required this.title,
    required this.summary,
  });

  /// Name of a topic in the library.
  String id;

  /// Short string for labels, titles, summaries...
  String title;

  /// Short string for labels, titles, summaries...
  String summary;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LibraryItemShort &&
    other.id == id &&
    other.title == title &&
    other.summary == summary;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (summary.hashCode);

  @override
  String toString() => 'LibraryItemShort[id=$id, title=$title, summary=$summary]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'summary'] = this.summary;
    return json;
  }

  /// Returns a new [LibraryItemShort] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LibraryItemShort? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LibraryItemShort[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LibraryItemShort[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LibraryItemShort(
        id: mapValueOfType<String>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        summary: mapValueOfType<String>(json, r'summary')!,
      );
    }
    return null;
  }

  static List<LibraryItemShort> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LibraryItemShort>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LibraryItemShort.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LibraryItemShort> mapFromJson(dynamic json) {
    final map = <String, LibraryItemShort>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LibraryItemShort.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LibraryItemShort-objects as value to a dart map
  static Map<String, List<LibraryItemShort>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LibraryItemShort>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LibraryItemShort.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'summary',
  };
}

