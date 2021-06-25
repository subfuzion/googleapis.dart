// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/resourcesettings/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.GoogleCloudResourcesettingsV1Setting> buildUnnamed5995() {
  var o = <api.GoogleCloudResourcesettingsV1Setting>[];
  o.add(buildGoogleCloudResourcesettingsV1Setting());
  o.add(buildGoogleCloudResourcesettingsV1Setting());
  return o;
}

void checkUnnamed5995(core.List<api.GoogleCloudResourcesettingsV1Setting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudResourcesettingsV1Setting(
      o[0] as api.GoogleCloudResourcesettingsV1Setting);
  checkGoogleCloudResourcesettingsV1Setting(
      o[1] as api.GoogleCloudResourcesettingsV1Setting);
}

core.int buildCounterGoogleCloudResourcesettingsV1ListSettingsResponse = 0;
api.GoogleCloudResourcesettingsV1ListSettingsResponse
    buildGoogleCloudResourcesettingsV1ListSettingsResponse() {
  var o = api.GoogleCloudResourcesettingsV1ListSettingsResponse();
  buildCounterGoogleCloudResourcesettingsV1ListSettingsResponse++;
  if (buildCounterGoogleCloudResourcesettingsV1ListSettingsResponse < 3) {
    o.nextPageToken = 'foo';
    o.settings = buildUnnamed5995();
  }
  buildCounterGoogleCloudResourcesettingsV1ListSettingsResponse--;
  return o;
}

void checkGoogleCloudResourcesettingsV1ListSettingsResponse(
    api.GoogleCloudResourcesettingsV1ListSettingsResponse o) {
  buildCounterGoogleCloudResourcesettingsV1ListSettingsResponse++;
  if (buildCounterGoogleCloudResourcesettingsV1ListSettingsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5995(o.settings!);
  }
  buildCounterGoogleCloudResourcesettingsV1ListSettingsResponse--;
}

core.int buildCounterGoogleCloudResourcesettingsV1Setting = 0;
api.GoogleCloudResourcesettingsV1Setting
    buildGoogleCloudResourcesettingsV1Setting() {
  var o = api.GoogleCloudResourcesettingsV1Setting();
  buildCounterGoogleCloudResourcesettingsV1Setting++;
  if (buildCounterGoogleCloudResourcesettingsV1Setting < 3) {
    o.effectiveValue = buildGoogleCloudResourcesettingsV1Value();
    o.etag = 'foo';
    o.localValue = buildGoogleCloudResourcesettingsV1Value();
    o.metadata = buildGoogleCloudResourcesettingsV1SettingMetadata();
    o.name = 'foo';
  }
  buildCounterGoogleCloudResourcesettingsV1Setting--;
  return o;
}

void checkGoogleCloudResourcesettingsV1Setting(
    api.GoogleCloudResourcesettingsV1Setting o) {
  buildCounterGoogleCloudResourcesettingsV1Setting++;
  if (buildCounterGoogleCloudResourcesettingsV1Setting < 3) {
    checkGoogleCloudResourcesettingsV1Value(
        o.effectiveValue! as api.GoogleCloudResourcesettingsV1Value);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkGoogleCloudResourcesettingsV1Value(
        o.localValue! as api.GoogleCloudResourcesettingsV1Value);
    checkGoogleCloudResourcesettingsV1SettingMetadata(
        o.metadata! as api.GoogleCloudResourcesettingsV1SettingMetadata);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudResourcesettingsV1Setting--;
}

core.int buildCounterGoogleCloudResourcesettingsV1SettingMetadata = 0;
api.GoogleCloudResourcesettingsV1SettingMetadata
    buildGoogleCloudResourcesettingsV1SettingMetadata() {
  var o = api.GoogleCloudResourcesettingsV1SettingMetadata();
  buildCounterGoogleCloudResourcesettingsV1SettingMetadata++;
  if (buildCounterGoogleCloudResourcesettingsV1SettingMetadata < 3) {
    o.dataType = 'foo';
    o.defaultValue = buildGoogleCloudResourcesettingsV1Value();
    o.description = 'foo';
    o.displayName = 'foo';
    o.readOnly = true;
  }
  buildCounterGoogleCloudResourcesettingsV1SettingMetadata--;
  return o;
}

void checkGoogleCloudResourcesettingsV1SettingMetadata(
    api.GoogleCloudResourcesettingsV1SettingMetadata o) {
  buildCounterGoogleCloudResourcesettingsV1SettingMetadata++;
  if (buildCounterGoogleCloudResourcesettingsV1SettingMetadata < 3) {
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudResourcesettingsV1Value(
        o.defaultValue! as api.GoogleCloudResourcesettingsV1Value);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.readOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudResourcesettingsV1SettingMetadata--;
}

core.int buildCounterGoogleCloudResourcesettingsV1Value = 0;
api.GoogleCloudResourcesettingsV1Value
    buildGoogleCloudResourcesettingsV1Value() {
  var o = api.GoogleCloudResourcesettingsV1Value();
  buildCounterGoogleCloudResourcesettingsV1Value++;
  if (buildCounterGoogleCloudResourcesettingsV1Value < 3) {
    o.booleanValue = true;
    o.durationValue = 'foo';
    o.enumValue = buildGoogleCloudResourcesettingsV1ValueEnumValue();
    o.stringMapValue = buildGoogleCloudResourcesettingsV1ValueStringMap();
    o.stringSetValue = buildGoogleCloudResourcesettingsV1ValueStringSet();
    o.stringValue = 'foo';
  }
  buildCounterGoogleCloudResourcesettingsV1Value--;
  return o;
}

void checkGoogleCloudResourcesettingsV1Value(
    api.GoogleCloudResourcesettingsV1Value o) {
  buildCounterGoogleCloudResourcesettingsV1Value++;
  if (buildCounterGoogleCloudResourcesettingsV1Value < 3) {
    unittest.expect(o.booleanValue!, unittest.isTrue);
    unittest.expect(
      o.durationValue!,
      unittest.equals('foo'),
    );
    checkGoogleCloudResourcesettingsV1ValueEnumValue(
        o.enumValue! as api.GoogleCloudResourcesettingsV1ValueEnumValue);
    checkGoogleCloudResourcesettingsV1ValueStringMap(
        o.stringMapValue! as api.GoogleCloudResourcesettingsV1ValueStringMap);
    checkGoogleCloudResourcesettingsV1ValueStringSet(
        o.stringSetValue! as api.GoogleCloudResourcesettingsV1ValueStringSet);
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudResourcesettingsV1Value--;
}

core.int buildCounterGoogleCloudResourcesettingsV1ValueEnumValue = 0;
api.GoogleCloudResourcesettingsV1ValueEnumValue
    buildGoogleCloudResourcesettingsV1ValueEnumValue() {
  var o = api.GoogleCloudResourcesettingsV1ValueEnumValue();
  buildCounterGoogleCloudResourcesettingsV1ValueEnumValue++;
  if (buildCounterGoogleCloudResourcesettingsV1ValueEnumValue < 3) {
    o.value = 'foo';
  }
  buildCounterGoogleCloudResourcesettingsV1ValueEnumValue--;
  return o;
}

void checkGoogleCloudResourcesettingsV1ValueEnumValue(
    api.GoogleCloudResourcesettingsV1ValueEnumValue o) {
  buildCounterGoogleCloudResourcesettingsV1ValueEnumValue++;
  if (buildCounterGoogleCloudResourcesettingsV1ValueEnumValue < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudResourcesettingsV1ValueEnumValue--;
}

core.Map<core.String, core.String> buildUnnamed5996() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5996(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudResourcesettingsV1ValueStringMap = 0;
api.GoogleCloudResourcesettingsV1ValueStringMap
    buildGoogleCloudResourcesettingsV1ValueStringMap() {
  var o = api.GoogleCloudResourcesettingsV1ValueStringMap();
  buildCounterGoogleCloudResourcesettingsV1ValueStringMap++;
  if (buildCounterGoogleCloudResourcesettingsV1ValueStringMap < 3) {
    o.mappings = buildUnnamed5996();
  }
  buildCounterGoogleCloudResourcesettingsV1ValueStringMap--;
  return o;
}

void checkGoogleCloudResourcesettingsV1ValueStringMap(
    api.GoogleCloudResourcesettingsV1ValueStringMap o) {
  buildCounterGoogleCloudResourcesettingsV1ValueStringMap++;
  if (buildCounterGoogleCloudResourcesettingsV1ValueStringMap < 3) {
    checkUnnamed5996(o.mappings!);
  }
  buildCounterGoogleCloudResourcesettingsV1ValueStringMap--;
}

core.List<core.String> buildUnnamed5997() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5997(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudResourcesettingsV1ValueStringSet = 0;
api.GoogleCloudResourcesettingsV1ValueStringSet
    buildGoogleCloudResourcesettingsV1ValueStringSet() {
  var o = api.GoogleCloudResourcesettingsV1ValueStringSet();
  buildCounterGoogleCloudResourcesettingsV1ValueStringSet++;
  if (buildCounterGoogleCloudResourcesettingsV1ValueStringSet < 3) {
    o.values = buildUnnamed5997();
  }
  buildCounterGoogleCloudResourcesettingsV1ValueStringSet--;
  return o;
}

void checkGoogleCloudResourcesettingsV1ValueStringSet(
    api.GoogleCloudResourcesettingsV1ValueStringSet o) {
  buildCounterGoogleCloudResourcesettingsV1ValueStringSet++;
  if (buildCounterGoogleCloudResourcesettingsV1ValueStringSet < 3) {
    checkUnnamed5997(o.values!);
  }
  buildCounterGoogleCloudResourcesettingsV1ValueStringSet--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudResourcesettingsV1ListSettingsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudResourcesettingsV1ListSettingsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudResourcesettingsV1ListSettingsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudResourcesettingsV1ListSettingsResponse(
          od as api.GoogleCloudResourcesettingsV1ListSettingsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudResourcesettingsV1Setting', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudResourcesettingsV1Setting();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudResourcesettingsV1Setting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudResourcesettingsV1Setting(
          od as api.GoogleCloudResourcesettingsV1Setting);
    });
  });

  unittest.group('obj-schema-GoogleCloudResourcesettingsV1SettingMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudResourcesettingsV1SettingMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudResourcesettingsV1SettingMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudResourcesettingsV1SettingMetadata(
          od as api.GoogleCloudResourcesettingsV1SettingMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudResourcesettingsV1Value', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudResourcesettingsV1Value();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudResourcesettingsV1Value.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudResourcesettingsV1Value(
          od as api.GoogleCloudResourcesettingsV1Value);
    });
  });

  unittest.group('obj-schema-GoogleCloudResourcesettingsV1ValueEnumValue', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudResourcesettingsV1ValueEnumValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudResourcesettingsV1ValueEnumValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudResourcesettingsV1ValueEnumValue(
          od as api.GoogleCloudResourcesettingsV1ValueEnumValue);
    });
  });

  unittest.group('obj-schema-GoogleCloudResourcesettingsV1ValueStringMap', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudResourcesettingsV1ValueStringMap();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudResourcesettingsV1ValueStringMap.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudResourcesettingsV1ValueStringMap(
          od as api.GoogleCloudResourcesettingsV1ValueStringMap);
    });
  });

  unittest.group('obj-schema-GoogleCloudResourcesettingsV1ValueStringSet', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleCloudResourcesettingsV1ValueStringSet();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleCloudResourcesettingsV1ValueStringSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudResourcesettingsV1ValueStringSet(
          od as api.GoogleCloudResourcesettingsV1ValueStringSet);
    });
  });

  unittest.group('resource-FoldersSettingsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.ResourceSettingsApi(mock).folders.settings;
      var arg_name = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["view"]!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudResourcesettingsV1Setting());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkGoogleCloudResourcesettingsV1Setting(
          response as api.GoogleCloudResourcesettingsV1Setting);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ResourceSettingsApi(mock).folders.settings;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["view"]!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudResourcesettingsV1ListSettingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkGoogleCloudResourcesettingsV1ListSettingsResponse(
          response as api.GoogleCloudResourcesettingsV1ListSettingsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.ResourceSettingsApi(mock).folders.settings;
      var arg_request = buildGoogleCloudResourcesettingsV1Setting();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudResourcesettingsV1Setting.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudResourcesettingsV1Setting(
            obj as api.GoogleCloudResourcesettingsV1Setting);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudResourcesettingsV1Setting());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudResourcesettingsV1Setting(
          response as api.GoogleCloudResourcesettingsV1Setting);
    });
  });

  unittest.group('resource-OrganizationsSettingsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.ResourceSettingsApi(mock).organizations.settings;
      var arg_name = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["view"]!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudResourcesettingsV1Setting());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkGoogleCloudResourcesettingsV1Setting(
          response as api.GoogleCloudResourcesettingsV1Setting);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ResourceSettingsApi(mock).organizations.settings;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["view"]!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudResourcesettingsV1ListSettingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkGoogleCloudResourcesettingsV1ListSettingsResponse(
          response as api.GoogleCloudResourcesettingsV1ListSettingsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.ResourceSettingsApi(mock).organizations.settings;
      var arg_request = buildGoogleCloudResourcesettingsV1Setting();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudResourcesettingsV1Setting.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudResourcesettingsV1Setting(
            obj as api.GoogleCloudResourcesettingsV1Setting);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudResourcesettingsV1Setting());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudResourcesettingsV1Setting(
          response as api.GoogleCloudResourcesettingsV1Setting);
    });
  });

  unittest.group('resource-ProjectsSettingsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.ResourceSettingsApi(mock).projects.settings;
      var arg_name = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["view"]!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudResourcesettingsV1Setting());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkGoogleCloudResourcesettingsV1Setting(
          response as api.GoogleCloudResourcesettingsV1Setting);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.ResourceSettingsApi(mock).projects.settings;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["view"]!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudResourcesettingsV1ListSettingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkGoogleCloudResourcesettingsV1ListSettingsResponse(
          response as api.GoogleCloudResourcesettingsV1ListSettingsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.ResourceSettingsApi(mock).projects.settings;
      var arg_request = buildGoogleCloudResourcesettingsV1Setting();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudResourcesettingsV1Setting.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudResourcesettingsV1Setting(
            obj as api.GoogleCloudResourcesettingsV1Setting);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudResourcesettingsV1Setting());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudResourcesettingsV1Setting(
          response as api.GoogleCloudResourcesettingsV1Setting);
    });
  });
}
