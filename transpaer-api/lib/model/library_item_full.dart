//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LibraryItemFull {
  /// Returns a new [LibraryItemFull] instance.
  LibraryItemFull({
    required this.id,
    required this.title,
    required this.summary,
    required this.article,
    this.links = const [],
    this.presentation,
  });

  /// Name of a topic in the library.
  String id;

  /// Short string for labels, titles, summaries...
  String title;

  /// Short string for labels, titles, summaries...
  String summary;

  /// Long string for descriptions, articles...
  String article;

  List<ReferenceLink> links;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Presentation? presentation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LibraryItemFull &&
    other.id == id &&
    other.title == title &&
    other.summary == summary &&
    other.article == article &&
    _deepEquality.equals(other.links, links) &&
    other.presentation == presentation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (summary.hashCode) +
    (article.hashCode) +
    (links.hashCode) +
    (presentation == null ? 0 : presentation!.hashCode);

  @override
  String toString() => 'LibraryItemFull[id=$id, title=$title, summary=$summary, article=$article, links=$links, presentation=$presentation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'summary'] = this.summary;
      json[r'article'] = this.article;
      json[r'links'] = this.links;
    if (this.presentation != null) {
      json[r'presentation'] = this.presentation;
    } else {
      json[r'presentation'] = null;
    }
    return json;
  }

  /// Returns a new [LibraryItemFull] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LibraryItemFull? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LibraryItemFull[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LibraryItemFull[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LibraryItemFull(
        id: mapValueOfType<String>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        summary: mapValueOfType<String>(json, r'summary')!,
        article: mapValueOfType<String>(json, r'article')!,
        links: ReferenceLink.listFromJson(json[r'links']),
        presentation: Presentation.fromJson(json[r'presentation']),
      );
    }
    return null;
  }

  static List<LibraryItemFull> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LibraryItemFull>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LibraryItemFull.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LibraryItemFull> mapFromJson(dynamic json) {
    final map = <String, LibraryItemFull>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LibraryItemFull.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LibraryItemFull-objects as value to a dart map
  static Map<String, List<LibraryItemFull>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LibraryItemFull>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LibraryItemFull.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'summary',
    'article',
    'links',
  };
}

