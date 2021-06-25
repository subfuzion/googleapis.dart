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

import 'package:googleapis/androidmanagement/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAdvancedSecurityOverrides = 0;
api.AdvancedSecurityOverrides buildAdvancedSecurityOverrides() {
  var o = api.AdvancedSecurityOverrides();
  buildCounterAdvancedSecurityOverrides++;
  if (buildCounterAdvancedSecurityOverrides < 3) {
    o.commonCriteriaMode = 'foo';
    o.developerSettings = 'foo';
    o.googlePlayProtectVerifyApps = 'foo';
    o.untrustedAppsPolicy = 'foo';
  }
  buildCounterAdvancedSecurityOverrides--;
  return o;
}

void checkAdvancedSecurityOverrides(api.AdvancedSecurityOverrides o) {
  buildCounterAdvancedSecurityOverrides++;
  if (buildCounterAdvancedSecurityOverrides < 3) {
    unittest.expect(
      o.commonCriteriaMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.developerSettings!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.googlePlayProtectVerifyApps!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.untrustedAppsPolicy!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdvancedSecurityOverrides--;
}

core.int buildCounterAlwaysOnVpnPackage = 0;
api.AlwaysOnVpnPackage buildAlwaysOnVpnPackage() {
  var o = api.AlwaysOnVpnPackage();
  buildCounterAlwaysOnVpnPackage++;
  if (buildCounterAlwaysOnVpnPackage < 3) {
    o.lockdownEnabled = true;
    o.packageName = 'foo';
  }
  buildCounterAlwaysOnVpnPackage--;
  return o;
}

void checkAlwaysOnVpnPackage(api.AlwaysOnVpnPackage o) {
  buildCounterAlwaysOnVpnPackage++;
  if (buildCounterAlwaysOnVpnPackage < 3) {
    unittest.expect(o.lockdownEnabled!, unittest.isTrue);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
  }
  buildCounterAlwaysOnVpnPackage--;
}

core.int buildCounterApiLevelCondition = 0;
api.ApiLevelCondition buildApiLevelCondition() {
  var o = api.ApiLevelCondition();
  buildCounterApiLevelCondition++;
  if (buildCounterApiLevelCondition < 3) {
    o.minApiLevel = 42;
  }
  buildCounterApiLevelCondition--;
  return o;
}

void checkApiLevelCondition(api.ApiLevelCondition o) {
  buildCounterApiLevelCondition++;
  if (buildCounterApiLevelCondition < 3) {
    unittest.expect(
      o.minApiLevel!,
      unittest.equals(42),
    );
  }
  buildCounterApiLevelCondition--;
}

core.int buildCounterAppTrackInfo = 0;
api.AppTrackInfo buildAppTrackInfo() {
  var o = api.AppTrackInfo();
  buildCounterAppTrackInfo++;
  if (buildCounterAppTrackInfo < 3) {
    o.trackAlias = 'foo';
    o.trackId = 'foo';
  }
  buildCounterAppTrackInfo--;
  return o;
}

void checkAppTrackInfo(api.AppTrackInfo o) {
  buildCounterAppTrackInfo++;
  if (buildCounterAppTrackInfo < 3) {
    unittest.expect(
      o.trackAlias!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppTrackInfo--;
}

core.List<api.AppTrackInfo> buildUnnamed6863() {
  var o = <api.AppTrackInfo>[];
  o.add(buildAppTrackInfo());
  o.add(buildAppTrackInfo());
  return o;
}

void checkUnnamed6863(core.List<api.AppTrackInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppTrackInfo(o[0] as api.AppTrackInfo);
  checkAppTrackInfo(o[1] as api.AppTrackInfo);
}

core.List<api.ManagedProperty> buildUnnamed6864() {
  var o = <api.ManagedProperty>[];
  o.add(buildManagedProperty());
  o.add(buildManagedProperty());
  return o;
}

void checkUnnamed6864(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0] as api.ManagedProperty);
  checkManagedProperty(o[1] as api.ManagedProperty);
}

core.List<api.ApplicationPermission> buildUnnamed6865() {
  var o = <api.ApplicationPermission>[];
  o.add(buildApplicationPermission());
  o.add(buildApplicationPermission());
  return o;
}

void checkUnnamed6865(core.List<api.ApplicationPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationPermission(o[0] as api.ApplicationPermission);
  checkApplicationPermission(o[1] as api.ApplicationPermission);
}

core.int buildCounterApplication = 0;
api.Application buildApplication() {
  var o = api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.appTracks = buildUnnamed6863();
    o.managedProperties = buildUnnamed6864();
    o.name = 'foo';
    o.permissions = buildUnnamed6865();
    o.title = 'foo';
  }
  buildCounterApplication--;
  return o;
}

void checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    checkUnnamed6863(o.appTracks!);
    checkUnnamed6864(o.managedProperties!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6865(o.permissions!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplication--;
}

core.int buildCounterApplicationEvent = 0;
api.ApplicationEvent buildApplicationEvent() {
  var o = api.ApplicationEvent();
  buildCounterApplicationEvent++;
  if (buildCounterApplicationEvent < 3) {
    o.createTime = 'foo';
    o.eventType = 'foo';
  }
  buildCounterApplicationEvent--;
  return o;
}

void checkApplicationEvent(api.ApplicationEvent o) {
  buildCounterApplicationEvent++;
  if (buildCounterApplicationEvent < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplicationEvent--;
}

core.int buildCounterApplicationPermission = 0;
api.ApplicationPermission buildApplicationPermission() {
  var o = api.ApplicationPermission();
  buildCounterApplicationPermission++;
  if (buildCounterApplicationPermission < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.permissionId = 'foo';
  }
  buildCounterApplicationPermission--;
  return o;
}

void checkApplicationPermission(api.ApplicationPermission o) {
  buildCounterApplicationPermission++;
  if (buildCounterApplicationPermission < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permissionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplicationPermission--;
}

core.List<core.String> buildUnnamed6866() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6866(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6867() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6867(core.List<core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed6868() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed6868(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.List<api.PermissionGrant> buildUnnamed6869() {
  var o = <api.PermissionGrant>[];
  o.add(buildPermissionGrant());
  o.add(buildPermissionGrant());
  return o;
}

void checkUnnamed6869(core.List<api.PermissionGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionGrant(o[0] as api.PermissionGrant);
  checkPermissionGrant(o[1] as api.PermissionGrant);
}

core.int buildCounterApplicationPolicy = 0;
api.ApplicationPolicy buildApplicationPolicy() {
  var o = api.ApplicationPolicy();
  buildCounterApplicationPolicy++;
  if (buildCounterApplicationPolicy < 3) {
    o.accessibleTrackIds = buildUnnamed6866();
    o.autoUpdateMode = 'foo';
    o.connectedWorkAndPersonalApp = 'foo';
    o.defaultPermissionPolicy = 'foo';
    o.delegatedScopes = buildUnnamed6867();
    o.disabled = true;
    o.installType = 'foo';
    o.lockTaskAllowed = true;
    o.managedConfiguration = buildUnnamed6868();
    o.managedConfigurationTemplate = buildManagedConfigurationTemplate();
    o.minimumVersionCode = 42;
    o.packageName = 'foo';
    o.permissionGrants = buildUnnamed6869();
  }
  buildCounterApplicationPolicy--;
  return o;
}

void checkApplicationPolicy(api.ApplicationPolicy o) {
  buildCounterApplicationPolicy++;
  if (buildCounterApplicationPolicy < 3) {
    checkUnnamed6866(o.accessibleTrackIds!);
    unittest.expect(
      o.autoUpdateMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectedWorkAndPersonalApp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultPermissionPolicy!,
      unittest.equals('foo'),
    );
    checkUnnamed6867(o.delegatedScopes!);
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.installType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.lockTaskAllowed!, unittest.isTrue);
    checkUnnamed6868(o.managedConfiguration!);
    checkManagedConfigurationTemplate(
        o.managedConfigurationTemplate! as api.ManagedConfigurationTemplate);
    unittest.expect(
      o.minimumVersionCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    checkUnnamed6869(o.permissionGrants!);
  }
  buildCounterApplicationPolicy--;
}

core.List<api.ApplicationEvent> buildUnnamed6870() {
  var o = <api.ApplicationEvent>[];
  o.add(buildApplicationEvent());
  o.add(buildApplicationEvent());
  return o;
}

void checkUnnamed6870(core.List<api.ApplicationEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationEvent(o[0] as api.ApplicationEvent);
  checkApplicationEvent(o[1] as api.ApplicationEvent);
}

core.List<api.KeyedAppState> buildUnnamed6871() {
  var o = <api.KeyedAppState>[];
  o.add(buildKeyedAppState());
  o.add(buildKeyedAppState());
  return o;
}

void checkUnnamed6871(core.List<api.KeyedAppState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyedAppState(o[0] as api.KeyedAppState);
  checkKeyedAppState(o[1] as api.KeyedAppState);
}

core.List<core.String> buildUnnamed6872() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6872(core.List<core.String> o) {
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

core.int buildCounterApplicationReport = 0;
api.ApplicationReport buildApplicationReport() {
  var o = api.ApplicationReport();
  buildCounterApplicationReport++;
  if (buildCounterApplicationReport < 3) {
    o.applicationSource = 'foo';
    o.displayName = 'foo';
    o.events = buildUnnamed6870();
    o.installerPackageName = 'foo';
    o.keyedAppStates = buildUnnamed6871();
    o.packageName = 'foo';
    o.packageSha256Hash = 'foo';
    o.signingKeyCertFingerprints = buildUnnamed6872();
    o.state = 'foo';
    o.versionCode = 42;
    o.versionName = 'foo';
  }
  buildCounterApplicationReport--;
  return o;
}

void checkApplicationReport(api.ApplicationReport o) {
  buildCounterApplicationReport++;
  if (buildCounterApplicationReport < 3) {
    unittest.expect(
      o.applicationSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed6870(o.events!);
    unittest.expect(
      o.installerPackageName!,
      unittest.equals('foo'),
    );
    checkUnnamed6871(o.keyedAppStates!);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageSha256Hash!,
      unittest.equals('foo'),
    );
    checkUnnamed6872(o.signingKeyCertFingerprints!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.versionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplicationReport--;
}

core.int buildCounterApplicationReportingSettings = 0;
api.ApplicationReportingSettings buildApplicationReportingSettings() {
  var o = api.ApplicationReportingSettings();
  buildCounterApplicationReportingSettings++;
  if (buildCounterApplicationReportingSettings < 3) {
    o.includeRemovedApps = true;
  }
  buildCounterApplicationReportingSettings--;
  return o;
}

void checkApplicationReportingSettings(api.ApplicationReportingSettings o) {
  buildCounterApplicationReportingSettings++;
  if (buildCounterApplicationReportingSettings < 3) {
    unittest.expect(o.includeRemovedApps!, unittest.isTrue);
  }
  buildCounterApplicationReportingSettings--;
}

core.int buildCounterBlockAction = 0;
api.BlockAction buildBlockAction() {
  var o = api.BlockAction();
  buildCounterBlockAction++;
  if (buildCounterBlockAction < 3) {
    o.blockAfterDays = 42;
    o.blockScope = 'foo';
  }
  buildCounterBlockAction--;
  return o;
}

void checkBlockAction(api.BlockAction o) {
  buildCounterBlockAction++;
  if (buildCounterBlockAction < 3) {
    unittest.expect(
      o.blockAfterDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.blockScope!,
      unittest.equals('foo'),
    );
  }
  buildCounterBlockAction--;
}

core.List<core.String> buildUnnamed6873() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6873(core.List<core.String> o) {
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

core.int buildCounterChoosePrivateKeyRule = 0;
api.ChoosePrivateKeyRule buildChoosePrivateKeyRule() {
  var o = api.ChoosePrivateKeyRule();
  buildCounterChoosePrivateKeyRule++;
  if (buildCounterChoosePrivateKeyRule < 3) {
    o.packageNames = buildUnnamed6873();
    o.privateKeyAlias = 'foo';
    o.urlPattern = 'foo';
  }
  buildCounterChoosePrivateKeyRule--;
  return o;
}

void checkChoosePrivateKeyRule(api.ChoosePrivateKeyRule o) {
  buildCounterChoosePrivateKeyRule++;
  if (buildCounterChoosePrivateKeyRule < 3) {
    checkUnnamed6873(o.packageNames!);
    unittest.expect(
      o.privateKeyAlias!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.urlPattern!,
      unittest.equals('foo'),
    );
  }
  buildCounterChoosePrivateKeyRule--;
}

core.List<core.String> buildUnnamed6874() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6874(core.List<core.String> o) {
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

core.int buildCounterCommand = 0;
api.Command buildCommand() {
  var o = api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.createTime = 'foo';
    o.duration = 'foo';
    o.errorCode = 'foo';
    o.newPassword = 'foo';
    o.resetPasswordFlags = buildUnnamed6874();
    o.type = 'foo';
    o.userName = 'foo';
  }
  buildCounterCommand--;
  return o;
}

void checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newPassword!,
      unittest.equals('foo'),
    );
    checkUnnamed6874(o.resetPasswordFlags!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userName!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommand--;
}

core.int buildCounterCommonCriteriaModeInfo = 0;
api.CommonCriteriaModeInfo buildCommonCriteriaModeInfo() {
  var o = api.CommonCriteriaModeInfo();
  buildCounterCommonCriteriaModeInfo++;
  if (buildCounterCommonCriteriaModeInfo < 3) {
    o.commonCriteriaModeStatus = 'foo';
  }
  buildCounterCommonCriteriaModeInfo--;
  return o;
}

void checkCommonCriteriaModeInfo(api.CommonCriteriaModeInfo o) {
  buildCounterCommonCriteriaModeInfo++;
  if (buildCounterCommonCriteriaModeInfo < 3) {
    unittest.expect(
      o.commonCriteriaModeStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommonCriteriaModeInfo--;
}

core.List<core.String> buildUnnamed6875() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6875(core.List<core.String> o) {
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

core.int buildCounterComplianceRule = 0;
api.ComplianceRule buildComplianceRule() {
  var o = api.ComplianceRule();
  buildCounterComplianceRule++;
  if (buildCounterComplianceRule < 3) {
    o.apiLevelCondition = buildApiLevelCondition();
    o.disableApps = true;
    o.nonComplianceDetailCondition = buildNonComplianceDetailCondition();
    o.packageNamesToDisable = buildUnnamed6875();
  }
  buildCounterComplianceRule--;
  return o;
}

void checkComplianceRule(api.ComplianceRule o) {
  buildCounterComplianceRule++;
  if (buildCounterComplianceRule < 3) {
    checkApiLevelCondition(o.apiLevelCondition! as api.ApiLevelCondition);
    unittest.expect(o.disableApps!, unittest.isTrue);
    checkNonComplianceDetailCondition(
        o.nonComplianceDetailCondition! as api.NonComplianceDetailCondition);
    checkUnnamed6875(o.packageNamesToDisable!);
  }
  buildCounterComplianceRule--;
}

core.int buildCounterContactInfo = 0;
api.ContactInfo buildContactInfo() {
  var o = api.ContactInfo();
  buildCounterContactInfo++;
  if (buildCounterContactInfo < 3) {
    o.contactEmail = 'foo';
    o.dataProtectionOfficerEmail = 'foo';
    o.dataProtectionOfficerName = 'foo';
    o.dataProtectionOfficerPhone = 'foo';
    o.euRepresentativeEmail = 'foo';
    o.euRepresentativeName = 'foo';
    o.euRepresentativePhone = 'foo';
  }
  buildCounterContactInfo--;
  return o;
}

void checkContactInfo(api.ContactInfo o) {
  buildCounterContactInfo++;
  if (buildCounterContactInfo < 3) {
    unittest.expect(
      o.contactEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataProtectionOfficerEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataProtectionOfficerName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataProtectionOfficerPhone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.euRepresentativeEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.euRepresentativeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.euRepresentativePhone!,
      unittest.equals('foo'),
    );
  }
  buildCounterContactInfo--;
}

core.List<core.String> buildUnnamed6876() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6876(core.List<core.String> o) {
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

core.int buildCounterContentProviderEndpoint = 0;
api.ContentProviderEndpoint buildContentProviderEndpoint() {
  var o = api.ContentProviderEndpoint();
  buildCounterContentProviderEndpoint++;
  if (buildCounterContentProviderEndpoint < 3) {
    o.packageName = 'foo';
    o.signingCertsSha256 = buildUnnamed6876();
    o.uri = 'foo';
  }
  buildCounterContentProviderEndpoint--;
  return o;
}

void checkContentProviderEndpoint(api.ContentProviderEndpoint o) {
  buildCounterContentProviderEndpoint++;
  if (buildCounterContentProviderEndpoint < 3) {
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    checkUnnamed6876(o.signingCertsSha256!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterContentProviderEndpoint--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  var o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterDate--;
}

core.List<api.ApplicationReport> buildUnnamed6877() {
  var o = <api.ApplicationReport>[];
  o.add(buildApplicationReport());
  o.add(buildApplicationReport());
  return o;
}

void checkUnnamed6877(core.List<api.ApplicationReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationReport(o[0] as api.ApplicationReport);
  checkApplicationReport(o[1] as api.ApplicationReport);
}

core.List<api.PasswordRequirements> buildUnnamed6878() {
  var o = <api.PasswordRequirements>[];
  o.add(buildPasswordRequirements());
  o.add(buildPasswordRequirements());
  return o;
}

void checkUnnamed6878(core.List<api.PasswordRequirements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPasswordRequirements(o[0] as api.PasswordRequirements);
  checkPasswordRequirements(o[1] as api.PasswordRequirements);
}

core.List<api.Display> buildUnnamed6879() {
  var o = <api.Display>[];
  o.add(buildDisplay());
  o.add(buildDisplay());
  return o;
}

void checkUnnamed6879(core.List<api.Display> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplay(o[0] as api.Display);
  checkDisplay(o[1] as api.Display);
}

core.List<api.HardwareStatus> buildUnnamed6880() {
  var o = <api.HardwareStatus>[];
  o.add(buildHardwareStatus());
  o.add(buildHardwareStatus());
  return o;
}

void checkUnnamed6880(core.List<api.HardwareStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHardwareStatus(o[0] as api.HardwareStatus);
  checkHardwareStatus(o[1] as api.HardwareStatus);
}

core.List<api.MemoryEvent> buildUnnamed6881() {
  var o = <api.MemoryEvent>[];
  o.add(buildMemoryEvent());
  o.add(buildMemoryEvent());
  return o;
}

void checkUnnamed6881(core.List<api.MemoryEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemoryEvent(o[0] as api.MemoryEvent);
  checkMemoryEvent(o[1] as api.MemoryEvent);
}

core.List<api.NonComplianceDetail> buildUnnamed6882() {
  var o = <api.NonComplianceDetail>[];
  o.add(buildNonComplianceDetail());
  o.add(buildNonComplianceDetail());
  return o;
}

void checkUnnamed6882(core.List<api.NonComplianceDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonComplianceDetail(o[0] as api.NonComplianceDetail);
  checkNonComplianceDetail(o[1] as api.NonComplianceDetail);
}

core.List<api.PowerManagementEvent> buildUnnamed6883() {
  var o = <api.PowerManagementEvent>[];
  o.add(buildPowerManagementEvent());
  o.add(buildPowerManagementEvent());
  return o;
}

void checkUnnamed6883(core.List<api.PowerManagementEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPowerManagementEvent(o[0] as api.PowerManagementEvent);
  checkPowerManagementEvent(o[1] as api.PowerManagementEvent);
}

core.List<core.String> buildUnnamed6884() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6884(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed6885() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6885(core.Map<core.String, core.String> o) {
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

core.int buildCounterDevice = 0;
api.Device buildDevice() {
  var o = api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.apiLevel = 42;
    o.applicationReports = buildUnnamed6877();
    o.appliedPasswordPolicies = buildUnnamed6878();
    o.appliedPolicyName = 'foo';
    o.appliedPolicyVersion = 'foo';
    o.appliedState = 'foo';
    o.commonCriteriaModeInfo = buildCommonCriteriaModeInfo();
    o.deviceSettings = buildDeviceSettings();
    o.disabledReason = buildUserFacingMessage();
    o.displays = buildUnnamed6879();
    o.enrollmentTime = 'foo';
    o.enrollmentTokenData = 'foo';
    o.enrollmentTokenName = 'foo';
    o.hardwareInfo = buildHardwareInfo();
    o.hardwareStatusSamples = buildUnnamed6880();
    o.lastPolicyComplianceReportTime = 'foo';
    o.lastPolicySyncTime = 'foo';
    o.lastStatusReportTime = 'foo';
    o.managementMode = 'foo';
    o.memoryEvents = buildUnnamed6881();
    o.memoryInfo = buildMemoryInfo();
    o.name = 'foo';
    o.networkInfo = buildNetworkInfo();
    o.nonComplianceDetails = buildUnnamed6882();
    o.ownership = 'foo';
    o.policyCompliant = true;
    o.policyName = 'foo';
    o.powerManagementEvents = buildUnnamed6883();
    o.previousDeviceNames = buildUnnamed6884();
    o.securityPosture = buildSecurityPosture();
    o.softwareInfo = buildSoftwareInfo();
    o.state = 'foo';
    o.systemProperties = buildUnnamed6885();
    o.user = buildUser();
    o.userName = 'foo';
  }
  buildCounterDevice--;
  return o;
}

void checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    unittest.expect(
      o.apiLevel!,
      unittest.equals(42),
    );
    checkUnnamed6877(o.applicationReports!);
    checkUnnamed6878(o.appliedPasswordPolicies!);
    unittest.expect(
      o.appliedPolicyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appliedPolicyVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appliedState!,
      unittest.equals('foo'),
    );
    checkCommonCriteriaModeInfo(
        o.commonCriteriaModeInfo! as api.CommonCriteriaModeInfo);
    checkDeviceSettings(o.deviceSettings! as api.DeviceSettings);
    checkUserFacingMessage(o.disabledReason! as api.UserFacingMessage);
    checkUnnamed6879(o.displays!);
    unittest.expect(
      o.enrollmentTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.enrollmentTokenData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.enrollmentTokenName!,
      unittest.equals('foo'),
    );
    checkHardwareInfo(o.hardwareInfo! as api.HardwareInfo);
    checkUnnamed6880(o.hardwareStatusSamples!);
    unittest.expect(
      o.lastPolicyComplianceReportTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastPolicySyncTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastStatusReportTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.managementMode!,
      unittest.equals('foo'),
    );
    checkUnnamed6881(o.memoryEvents!);
    checkMemoryInfo(o.memoryInfo! as api.MemoryInfo);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNetworkInfo(o.networkInfo! as api.NetworkInfo);
    checkUnnamed6882(o.nonComplianceDetails!);
    unittest.expect(
      o.ownership!,
      unittest.equals('foo'),
    );
    unittest.expect(o.policyCompliant!, unittest.isTrue);
    unittest.expect(
      o.policyName!,
      unittest.equals('foo'),
    );
    checkUnnamed6883(o.powerManagementEvents!);
    checkUnnamed6884(o.previousDeviceNames!);
    checkSecurityPosture(o.securityPosture! as api.SecurityPosture);
    checkSoftwareInfo(o.softwareInfo! as api.SoftwareInfo);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed6885(o.systemProperties!);
    checkUser(o.user! as api.User);
    unittest.expect(
      o.userName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDevice--;
}

core.int buildCounterDeviceSettings = 0;
api.DeviceSettings buildDeviceSettings() {
  var o = api.DeviceSettings();
  buildCounterDeviceSettings++;
  if (buildCounterDeviceSettings < 3) {
    o.adbEnabled = true;
    o.developmentSettingsEnabled = true;
    o.encryptionStatus = 'foo';
    o.isDeviceSecure = true;
    o.isEncrypted = true;
    o.unknownSourcesEnabled = true;
    o.verifyAppsEnabled = true;
  }
  buildCounterDeviceSettings--;
  return o;
}

void checkDeviceSettings(api.DeviceSettings o) {
  buildCounterDeviceSettings++;
  if (buildCounterDeviceSettings < 3) {
    unittest.expect(o.adbEnabled!, unittest.isTrue);
    unittest.expect(o.developmentSettingsEnabled!, unittest.isTrue);
    unittest.expect(
      o.encryptionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDeviceSecure!, unittest.isTrue);
    unittest.expect(o.isEncrypted!, unittest.isTrue);
    unittest.expect(o.unknownSourcesEnabled!, unittest.isTrue);
    unittest.expect(o.verifyAppsEnabled!, unittest.isTrue);
  }
  buildCounterDeviceSettings--;
}

core.int buildCounterDisplay = 0;
api.Display buildDisplay() {
  var o = api.Display();
  buildCounterDisplay++;
  if (buildCounterDisplay < 3) {
    o.density = 42;
    o.displayId = 42;
    o.height = 42;
    o.name = 'foo';
    o.refreshRate = 42;
    o.state = 'foo';
    o.width = 42;
  }
  buildCounterDisplay--;
  return o;
}

void checkDisplay(api.Display o) {
  buildCounterDisplay++;
  if (buildCounterDisplay < 3) {
    unittest.expect(
      o.density!,
      unittest.equals(42),
    );
    unittest.expect(
      o.displayId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshRate!,
      unittest.equals(42),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterDisplay--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterEnrollmentToken = 0;
api.EnrollmentToken buildEnrollmentToken() {
  var o = api.EnrollmentToken();
  buildCounterEnrollmentToken++;
  if (buildCounterEnrollmentToken < 3) {
    o.additionalData = 'foo';
    o.allowPersonalUsage = 'foo';
    o.duration = 'foo';
    o.expirationTimestamp = 'foo';
    o.name = 'foo';
    o.oneTimeOnly = true;
    o.policyName = 'foo';
    o.qrCode = 'foo';
    o.user = buildUser();
    o.value = 'foo';
  }
  buildCounterEnrollmentToken--;
  return o;
}

void checkEnrollmentToken(api.EnrollmentToken o) {
  buildCounterEnrollmentToken++;
  if (buildCounterEnrollmentToken < 3) {
    unittest.expect(
      o.additionalData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.allowPersonalUsage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expirationTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.oneTimeOnly!, unittest.isTrue);
    unittest.expect(
      o.policyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.qrCode!,
      unittest.equals('foo'),
    );
    checkUser(o.user! as api.User);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnrollmentToken--;
}

core.List<core.String> buildUnnamed6886() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6886(core.List<core.String> o) {
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

core.List<api.SigninDetail> buildUnnamed6887() {
  var o = <api.SigninDetail>[];
  o.add(buildSigninDetail());
  o.add(buildSigninDetail());
  return o;
}

void checkUnnamed6887(core.List<api.SigninDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSigninDetail(o[0] as api.SigninDetail);
  checkSigninDetail(o[1] as api.SigninDetail);
}

core.List<api.TermsAndConditions> buildUnnamed6888() {
  var o = <api.TermsAndConditions>[];
  o.add(buildTermsAndConditions());
  o.add(buildTermsAndConditions());
  return o;
}

void checkUnnamed6888(core.List<api.TermsAndConditions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTermsAndConditions(o[0] as api.TermsAndConditions);
  checkTermsAndConditions(o[1] as api.TermsAndConditions);
}

core.int buildCounterEnterprise = 0;
api.Enterprise buildEnterprise() {
  var o = api.Enterprise();
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    o.appAutoApprovalEnabled = true;
    o.contactInfo = buildContactInfo();
    o.enabledNotificationTypes = buildUnnamed6886();
    o.enterpriseDisplayName = 'foo';
    o.logo = buildExternalData();
    o.name = 'foo';
    o.primaryColor = 42;
    o.pubsubTopic = 'foo';
    o.signinDetails = buildUnnamed6887();
    o.termsAndConditions = buildUnnamed6888();
  }
  buildCounterEnterprise--;
  return o;
}

void checkEnterprise(api.Enterprise o) {
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    unittest.expect(o.appAutoApprovalEnabled!, unittest.isTrue);
    checkContactInfo(o.contactInfo! as api.ContactInfo);
    checkUnnamed6886(o.enabledNotificationTypes!);
    unittest.expect(
      o.enterpriseDisplayName!,
      unittest.equals('foo'),
    );
    checkExternalData(o.logo! as api.ExternalData);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryColor!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pubsubTopic!,
      unittest.equals('foo'),
    );
    checkUnnamed6887(o.signinDetails!);
    checkUnnamed6888(o.termsAndConditions!);
  }
  buildCounterEnterprise--;
}

core.int buildCounterExternalData = 0;
api.ExternalData buildExternalData() {
  var o = api.ExternalData();
  buildCounterExternalData++;
  if (buildCounterExternalData < 3) {
    o.sha256Hash = 'foo';
    o.url = 'foo';
  }
  buildCounterExternalData--;
  return o;
}

void checkExternalData(api.ExternalData o) {
  buildCounterExternalData++;
  if (buildCounterExternalData < 3) {
    unittest.expect(
      o.sha256Hash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterExternalData--;
}

core.int buildCounterFreezePeriod = 0;
api.FreezePeriod buildFreezePeriod() {
  var o = api.FreezePeriod();
  buildCounterFreezePeriod++;
  if (buildCounterFreezePeriod < 3) {
    o.endDate = buildDate();
    o.startDate = buildDate();
  }
  buildCounterFreezePeriod--;
  return o;
}

void checkFreezePeriod(api.FreezePeriod o) {
  buildCounterFreezePeriod++;
  if (buildCounterFreezePeriod < 3) {
    checkDate(o.endDate! as api.Date);
    checkDate(o.startDate! as api.Date);
  }
  buildCounterFreezePeriod--;
}

core.List<core.double> buildUnnamed6889() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6889(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6890() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6890(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6891() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6891(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6892() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6892(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6893() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6893(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6894() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6894(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6895() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6895(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6896() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6896(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterHardwareInfo = 0;
api.HardwareInfo buildHardwareInfo() {
  var o = api.HardwareInfo();
  buildCounterHardwareInfo++;
  if (buildCounterHardwareInfo < 3) {
    o.batteryShutdownTemperatures = buildUnnamed6889();
    o.batteryThrottlingTemperatures = buildUnnamed6890();
    o.brand = 'foo';
    o.cpuShutdownTemperatures = buildUnnamed6891();
    o.cpuThrottlingTemperatures = buildUnnamed6892();
    o.deviceBasebandVersion = 'foo';
    o.gpuShutdownTemperatures = buildUnnamed6893();
    o.gpuThrottlingTemperatures = buildUnnamed6894();
    o.hardware = 'foo';
    o.manufacturer = 'foo';
    o.model = 'foo';
    o.serialNumber = 'foo';
    o.skinShutdownTemperatures = buildUnnamed6895();
    o.skinThrottlingTemperatures = buildUnnamed6896();
  }
  buildCounterHardwareInfo--;
  return o;
}

void checkHardwareInfo(api.HardwareInfo o) {
  buildCounterHardwareInfo++;
  if (buildCounterHardwareInfo < 3) {
    checkUnnamed6889(o.batteryShutdownTemperatures!);
    checkUnnamed6890(o.batteryThrottlingTemperatures!);
    unittest.expect(
      o.brand!,
      unittest.equals('foo'),
    );
    checkUnnamed6891(o.cpuShutdownTemperatures!);
    checkUnnamed6892(o.cpuThrottlingTemperatures!);
    unittest.expect(
      o.deviceBasebandVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed6893(o.gpuShutdownTemperatures!);
    checkUnnamed6894(o.gpuThrottlingTemperatures!);
    unittest.expect(
      o.hardware!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
    checkUnnamed6895(o.skinShutdownTemperatures!);
    checkUnnamed6896(o.skinThrottlingTemperatures!);
  }
  buildCounterHardwareInfo--;
}

core.List<core.double> buildUnnamed6897() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6897(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6898() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6898(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6899() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6899(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6900() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6900(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6901() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6901(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6902() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6902(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterHardwareStatus = 0;
api.HardwareStatus buildHardwareStatus() {
  var o = api.HardwareStatus();
  buildCounterHardwareStatus++;
  if (buildCounterHardwareStatus < 3) {
    o.batteryTemperatures = buildUnnamed6897();
    o.cpuTemperatures = buildUnnamed6898();
    o.cpuUsages = buildUnnamed6899();
    o.createTime = 'foo';
    o.fanSpeeds = buildUnnamed6900();
    o.gpuTemperatures = buildUnnamed6901();
    o.skinTemperatures = buildUnnamed6902();
  }
  buildCounterHardwareStatus--;
  return o;
}

void checkHardwareStatus(api.HardwareStatus o) {
  buildCounterHardwareStatus++;
  if (buildCounterHardwareStatus < 3) {
    checkUnnamed6897(o.batteryTemperatures!);
    checkUnnamed6898(o.cpuTemperatures!);
    checkUnnamed6899(o.cpuUsages!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed6900(o.fanSpeeds!);
    checkUnnamed6901(o.gpuTemperatures!);
    checkUnnamed6902(o.skinTemperatures!);
  }
  buildCounterHardwareStatus--;
}

core.int buildCounterIssueCommandResponse = 0;
api.IssueCommandResponse buildIssueCommandResponse() {
  var o = api.IssueCommandResponse();
  buildCounterIssueCommandResponse++;
  if (buildCounterIssueCommandResponse < 3) {}
  buildCounterIssueCommandResponse--;
  return o;
}

void checkIssueCommandResponse(api.IssueCommandResponse o) {
  buildCounterIssueCommandResponse++;
  if (buildCounterIssueCommandResponse < 3) {}
  buildCounterIssueCommandResponse--;
}

core.int buildCounterKeyedAppState = 0;
api.KeyedAppState buildKeyedAppState() {
  var o = api.KeyedAppState();
  buildCounterKeyedAppState++;
  if (buildCounterKeyedAppState < 3) {
    o.createTime = 'foo';
    o.data = 'foo';
    o.key = 'foo';
    o.lastUpdateTime = 'foo';
    o.message = 'foo';
    o.severity = 'foo';
  }
  buildCounterKeyedAppState--;
  return o;
}

void checkKeyedAppState(api.KeyedAppState o) {
  buildCounterKeyedAppState++;
  if (buildCounterKeyedAppState < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyedAppState--;
}

core.int buildCounterKioskCustomization = 0;
api.KioskCustomization buildKioskCustomization() {
  var o = api.KioskCustomization();
  buildCounterKioskCustomization++;
  if (buildCounterKioskCustomization < 3) {
    o.deviceSettings = 'foo';
    o.powerButtonActions = 'foo';
    o.statusBar = 'foo';
    o.systemErrorWarnings = 'foo';
    o.systemNavigation = 'foo';
  }
  buildCounterKioskCustomization--;
  return o;
}

void checkKioskCustomization(api.KioskCustomization o) {
  buildCounterKioskCustomization++;
  if (buildCounterKioskCustomization < 3) {
    unittest.expect(
      o.deviceSettings!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.powerButtonActions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusBar!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemErrorWarnings!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemNavigation!,
      unittest.equals('foo'),
    );
  }
  buildCounterKioskCustomization--;
}

core.int buildCounterLaunchAppAction = 0;
api.LaunchAppAction buildLaunchAppAction() {
  var o = api.LaunchAppAction();
  buildCounterLaunchAppAction++;
  if (buildCounterLaunchAppAction < 3) {
    o.packageName = 'foo';
  }
  buildCounterLaunchAppAction--;
  return o;
}

void checkLaunchAppAction(api.LaunchAppAction o) {
  buildCounterLaunchAppAction++;
  if (buildCounterLaunchAppAction < 3) {
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
  }
  buildCounterLaunchAppAction--;
}

core.List<api.Device> buildUnnamed6903() {
  var o = <api.Device>[];
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

void checkUnnamed6903(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0] as api.Device);
  checkDevice(o[1] as api.Device);
}

core.int buildCounterListDevicesResponse = 0;
api.ListDevicesResponse buildListDevicesResponse() {
  var o = api.ListDevicesResponse();
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    o.devices = buildUnnamed6903();
    o.nextPageToken = 'foo';
  }
  buildCounterListDevicesResponse--;
  return o;
}

void checkListDevicesResponse(api.ListDevicesResponse o) {
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    checkUnnamed6903(o.devices!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDevicesResponse--;
}

core.List<api.Enterprise> buildUnnamed6904() {
  var o = <api.Enterprise>[];
  o.add(buildEnterprise());
  o.add(buildEnterprise());
  return o;
}

void checkUnnamed6904(core.List<api.Enterprise> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterprise(o[0] as api.Enterprise);
  checkEnterprise(o[1] as api.Enterprise);
}

core.int buildCounterListEnterprisesResponse = 0;
api.ListEnterprisesResponse buildListEnterprisesResponse() {
  var o = api.ListEnterprisesResponse();
  buildCounterListEnterprisesResponse++;
  if (buildCounterListEnterprisesResponse < 3) {
    o.enterprises = buildUnnamed6904();
    o.nextPageToken = 'foo';
  }
  buildCounterListEnterprisesResponse--;
  return o;
}

void checkListEnterprisesResponse(api.ListEnterprisesResponse o) {
  buildCounterListEnterprisesResponse++;
  if (buildCounterListEnterprisesResponse < 3) {
    checkUnnamed6904(o.enterprises!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListEnterprisesResponse--;
}

core.List<api.Operation> buildUnnamed6905() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed6905(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed6905();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6905(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Policy> buildUnnamed6906() {
  var o = <api.Policy>[];
  o.add(buildPolicy());
  o.add(buildPolicy());
  return o;
}

void checkUnnamed6906(core.List<api.Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicy(o[0] as api.Policy);
  checkPolicy(o[1] as api.Policy);
}

core.int buildCounterListPoliciesResponse = 0;
api.ListPoliciesResponse buildListPoliciesResponse() {
  var o = api.ListPoliciesResponse();
  buildCounterListPoliciesResponse++;
  if (buildCounterListPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.policies = buildUnnamed6906();
  }
  buildCounterListPoliciesResponse--;
  return o;
}

void checkListPoliciesResponse(api.ListPoliciesResponse o) {
  buildCounterListPoliciesResponse++;
  if (buildCounterListPoliciesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6906(o.policies!);
  }
  buildCounterListPoliciesResponse--;
}

core.List<api.WebApp> buildUnnamed6907() {
  var o = <api.WebApp>[];
  o.add(buildWebApp());
  o.add(buildWebApp());
  return o;
}

void checkUnnamed6907(core.List<api.WebApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebApp(o[0] as api.WebApp);
  checkWebApp(o[1] as api.WebApp);
}

core.int buildCounterListWebAppsResponse = 0;
api.ListWebAppsResponse buildListWebAppsResponse() {
  var o = api.ListWebAppsResponse();
  buildCounterListWebAppsResponse++;
  if (buildCounterListWebAppsResponse < 3) {
    o.nextPageToken = 'foo';
    o.webApps = buildUnnamed6907();
  }
  buildCounterListWebAppsResponse--;
  return o;
}

void checkListWebAppsResponse(api.ListWebAppsResponse o) {
  buildCounterListWebAppsResponse++;
  if (buildCounterListWebAppsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6907(o.webApps!);
  }
  buildCounterListWebAppsResponse--;
}

core.Map<core.String, core.String> buildUnnamed6908() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6908(core.Map<core.String, core.String> o) {
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

core.int buildCounterManagedConfigurationTemplate = 0;
api.ManagedConfigurationTemplate buildManagedConfigurationTemplate() {
  var o = api.ManagedConfigurationTemplate();
  buildCounterManagedConfigurationTemplate++;
  if (buildCounterManagedConfigurationTemplate < 3) {
    o.configurationVariables = buildUnnamed6908();
    o.templateId = 'foo';
  }
  buildCounterManagedConfigurationTemplate--;
  return o;
}

void checkManagedConfigurationTemplate(api.ManagedConfigurationTemplate o) {
  buildCounterManagedConfigurationTemplate++;
  if (buildCounterManagedConfigurationTemplate < 3) {
    checkUnnamed6908(o.configurationVariables!);
    unittest.expect(
      o.templateId!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedConfigurationTemplate--;
}

core.List<api.ManagedPropertyEntry> buildUnnamed6909() {
  var o = <api.ManagedPropertyEntry>[];
  o.add(buildManagedPropertyEntry());
  o.add(buildManagedPropertyEntry());
  return o;
}

void checkUnnamed6909(core.List<api.ManagedPropertyEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedPropertyEntry(o[0] as api.ManagedPropertyEntry);
  checkManagedPropertyEntry(o[1] as api.ManagedPropertyEntry);
}

core.List<api.ManagedProperty> buildUnnamed6910() {
  var o = <api.ManagedProperty>[];
  o.add(buildManagedProperty());
  o.add(buildManagedProperty());
  return o;
}

void checkUnnamed6910(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0] as api.ManagedProperty);
  checkManagedProperty(o[1] as api.ManagedProperty);
}

core.int buildCounterManagedProperty = 0;
api.ManagedProperty buildManagedProperty() {
  var o = api.ManagedProperty();
  buildCounterManagedProperty++;
  if (buildCounterManagedProperty < 3) {
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.description = 'foo';
    o.entries = buildUnnamed6909();
    o.key = 'foo';
    o.nestedProperties = buildUnnamed6910();
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterManagedProperty--;
  return o;
}

void checkManagedProperty(api.ManagedProperty o) {
  buildCounterManagedProperty++;
  if (buildCounterManagedProperty < 3) {
    var casted3 = (o.defaultValue!) as core.Map;
    unittest.expect(casted3, unittest.hasLength(3));
    unittest.expect(
      casted3['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted3['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted3['string'],
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed6909(o.entries!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkUnnamed6910(o.nestedProperties!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedProperty--;
}

core.int buildCounterManagedPropertyEntry = 0;
api.ManagedPropertyEntry buildManagedPropertyEntry() {
  var o = api.ManagedPropertyEntry();
  buildCounterManagedPropertyEntry++;
  if (buildCounterManagedPropertyEntry < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterManagedPropertyEntry--;
  return o;
}

void checkManagedPropertyEntry(api.ManagedPropertyEntry o) {
  buildCounterManagedPropertyEntry++;
  if (buildCounterManagedPropertyEntry < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedPropertyEntry--;
}

core.int buildCounterMemoryEvent = 0;
api.MemoryEvent buildMemoryEvent() {
  var o = api.MemoryEvent();
  buildCounterMemoryEvent++;
  if (buildCounterMemoryEvent < 3) {
    o.byteCount = 'foo';
    o.createTime = 'foo';
    o.eventType = 'foo';
  }
  buildCounterMemoryEvent--;
  return o;
}

void checkMemoryEvent(api.MemoryEvent o) {
  buildCounterMemoryEvent++;
  if (buildCounterMemoryEvent < 3) {
    unittest.expect(
      o.byteCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
  }
  buildCounterMemoryEvent--;
}

core.int buildCounterMemoryInfo = 0;
api.MemoryInfo buildMemoryInfo() {
  var o = api.MemoryInfo();
  buildCounterMemoryInfo++;
  if (buildCounterMemoryInfo < 3) {
    o.totalInternalStorage = 'foo';
    o.totalRam = 'foo';
  }
  buildCounterMemoryInfo--;
  return o;
}

void checkMemoryInfo(api.MemoryInfo o) {
  buildCounterMemoryInfo++;
  if (buildCounterMemoryInfo < 3) {
    unittest.expect(
      o.totalInternalStorage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalRam!,
      unittest.equals('foo'),
    );
  }
  buildCounterMemoryInfo--;
}

core.List<api.TelephonyInfo> buildUnnamed6911() {
  var o = <api.TelephonyInfo>[];
  o.add(buildTelephonyInfo());
  o.add(buildTelephonyInfo());
  return o;
}

void checkUnnamed6911(core.List<api.TelephonyInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTelephonyInfo(o[0] as api.TelephonyInfo);
  checkTelephonyInfo(o[1] as api.TelephonyInfo);
}

core.int buildCounterNetworkInfo = 0;
api.NetworkInfo buildNetworkInfo() {
  var o = api.NetworkInfo();
  buildCounterNetworkInfo++;
  if (buildCounterNetworkInfo < 3) {
    o.imei = 'foo';
    o.meid = 'foo';
    o.networkOperatorName = 'foo';
    o.telephonyInfos = buildUnnamed6911();
    o.wifiMacAddress = 'foo';
  }
  buildCounterNetworkInfo--;
  return o;
}

void checkNetworkInfo(api.NetworkInfo o) {
  buildCounterNetworkInfo++;
  if (buildCounterNetworkInfo < 3) {
    unittest.expect(
      o.imei!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.meid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkOperatorName!,
      unittest.equals('foo'),
    );
    checkUnnamed6911(o.telephonyInfos!);
    unittest.expect(
      o.wifiMacAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkInfo--;
}

core.int buildCounterNonComplianceDetail = 0;
api.NonComplianceDetail buildNonComplianceDetail() {
  var o = api.NonComplianceDetail();
  buildCounterNonComplianceDetail++;
  if (buildCounterNonComplianceDetail < 3) {
    o.currentValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.fieldPath = 'foo';
    o.installationFailureReason = 'foo';
    o.nonComplianceReason = 'foo';
    o.packageName = 'foo';
    o.settingName = 'foo';
  }
  buildCounterNonComplianceDetail--;
  return o;
}

void checkNonComplianceDetail(api.NonComplianceDetail o) {
  buildCounterNonComplianceDetail++;
  if (buildCounterNonComplianceDetail < 3) {
    var casted4 = (o.currentValue!) as core.Map;
    unittest.expect(casted4, unittest.hasLength(3));
    unittest.expect(
      casted4['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted4['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted4['string'],
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installationFailureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nonComplianceReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.settingName!,
      unittest.equals('foo'),
    );
  }
  buildCounterNonComplianceDetail--;
}

core.int buildCounterNonComplianceDetailCondition = 0;
api.NonComplianceDetailCondition buildNonComplianceDetailCondition() {
  var o = api.NonComplianceDetailCondition();
  buildCounterNonComplianceDetailCondition++;
  if (buildCounterNonComplianceDetailCondition < 3) {
    o.nonComplianceReason = 'foo';
    o.packageName = 'foo';
    o.settingName = 'foo';
  }
  buildCounterNonComplianceDetailCondition--;
  return o;
}

void checkNonComplianceDetailCondition(api.NonComplianceDetailCondition o) {
  buildCounterNonComplianceDetailCondition++;
  if (buildCounterNonComplianceDetailCondition < 3) {
    unittest.expect(
      o.nonComplianceReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.settingName!,
      unittest.equals('foo'),
    );
  }
  buildCounterNonComplianceDetailCondition--;
}

core.List<core.String> buildUnnamed6912() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6912(core.List<core.String> o) {
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

core.int buildCounterOncCertificateProvider = 0;
api.OncCertificateProvider buildOncCertificateProvider() {
  var o = api.OncCertificateProvider();
  buildCounterOncCertificateProvider++;
  if (buildCounterOncCertificateProvider < 3) {
    o.certificateReferences = buildUnnamed6912();
    o.contentProviderEndpoint = buildContentProviderEndpoint();
  }
  buildCounterOncCertificateProvider--;
  return o;
}

void checkOncCertificateProvider(api.OncCertificateProvider o) {
  buildCounterOncCertificateProvider++;
  if (buildCounterOncCertificateProvider < 3) {
    checkUnnamed6912(o.certificateReferences!);
    checkContentProviderEndpoint(
        o.contentProviderEndpoint! as api.ContentProviderEndpoint);
  }
  buildCounterOncCertificateProvider--;
}

core.Map<core.String, core.Object> buildUnnamed6913() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed6913(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed6914() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed6914(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed6913();
    o.name = 'foo';
    o.response = buildUnnamed6914();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error! as api.Status);
    checkUnnamed6913(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6914(o.response!);
  }
  buildCounterOperation--;
}

core.List<core.String> buildUnnamed6915() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6915(core.List<core.String> o) {
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

core.int buildCounterPackageNameList = 0;
api.PackageNameList buildPackageNameList() {
  var o = api.PackageNameList();
  buildCounterPackageNameList++;
  if (buildCounterPackageNameList < 3) {
    o.packageNames = buildUnnamed6915();
  }
  buildCounterPackageNameList--;
  return o;
}

void checkPackageNameList(api.PackageNameList o) {
  buildCounterPackageNameList++;
  if (buildCounterPackageNameList < 3) {
    checkUnnamed6915(o.packageNames!);
  }
  buildCounterPackageNameList--;
}

core.int buildCounterPasswordRequirements = 0;
api.PasswordRequirements buildPasswordRequirements() {
  var o = api.PasswordRequirements();
  buildCounterPasswordRequirements++;
  if (buildCounterPasswordRequirements < 3) {
    o.maximumFailedPasswordsForWipe = 42;
    o.passwordExpirationTimeout = 'foo';
    o.passwordHistoryLength = 42;
    o.passwordMinimumLength = 42;
    o.passwordMinimumLetters = 42;
    o.passwordMinimumLowerCase = 42;
    o.passwordMinimumNonLetter = 42;
    o.passwordMinimumNumeric = 42;
    o.passwordMinimumSymbols = 42;
    o.passwordMinimumUpperCase = 42;
    o.passwordQuality = 'foo';
    o.passwordScope = 'foo';
    o.requirePasswordUnlock = 'foo';
  }
  buildCounterPasswordRequirements--;
  return o;
}

void checkPasswordRequirements(api.PasswordRequirements o) {
  buildCounterPasswordRequirements++;
  if (buildCounterPasswordRequirements < 3) {
    unittest.expect(
      o.maximumFailedPasswordsForWipe!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordExpirationTimeout!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passwordHistoryLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordMinimumLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordMinimumLetters!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordMinimumLowerCase!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordMinimumNonLetter!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordMinimumNumeric!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordMinimumSymbols!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordMinimumUpperCase!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordQuality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passwordScope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requirePasswordUnlock!,
      unittest.equals('foo'),
    );
  }
  buildCounterPasswordRequirements--;
}

core.int buildCounterPermissionGrant = 0;
api.PermissionGrant buildPermissionGrant() {
  var o = api.PermissionGrant();
  buildCounterPermissionGrant++;
  if (buildCounterPermissionGrant < 3) {
    o.permission = 'foo';
    o.policy = 'foo';
  }
  buildCounterPermissionGrant--;
  return o;
}

void checkPermissionGrant(api.PermissionGrant o) {
  buildCounterPermissionGrant++;
  if (buildCounterPermissionGrant < 3) {
    unittest.expect(
      o.permission!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policy!,
      unittest.equals('foo'),
    );
  }
  buildCounterPermissionGrant--;
}

core.List<core.String> buildUnnamed6916() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6916(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6917() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6917(core.List<core.String> o) {
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

core.int buildCounterPersistentPreferredActivity = 0;
api.PersistentPreferredActivity buildPersistentPreferredActivity() {
  var o = api.PersistentPreferredActivity();
  buildCounterPersistentPreferredActivity++;
  if (buildCounterPersistentPreferredActivity < 3) {
    o.actions = buildUnnamed6916();
    o.categories = buildUnnamed6917();
    o.receiverActivity = 'foo';
  }
  buildCounterPersistentPreferredActivity--;
  return o;
}

void checkPersistentPreferredActivity(api.PersistentPreferredActivity o) {
  buildCounterPersistentPreferredActivity++;
  if (buildCounterPersistentPreferredActivity < 3) {
    checkUnnamed6916(o.actions!);
    checkUnnamed6917(o.categories!);
    unittest.expect(
      o.receiverActivity!,
      unittest.equals('foo'),
    );
  }
  buildCounterPersistentPreferredActivity--;
}

core.int buildCounterPersonalApplicationPolicy = 0;
api.PersonalApplicationPolicy buildPersonalApplicationPolicy() {
  var o = api.PersonalApplicationPolicy();
  buildCounterPersonalApplicationPolicy++;
  if (buildCounterPersonalApplicationPolicy < 3) {
    o.installType = 'foo';
    o.packageName = 'foo';
  }
  buildCounterPersonalApplicationPolicy--;
  return o;
}

void checkPersonalApplicationPolicy(api.PersonalApplicationPolicy o) {
  buildCounterPersonalApplicationPolicy++;
  if (buildCounterPersonalApplicationPolicy < 3) {
    unittest.expect(
      o.installType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
  }
  buildCounterPersonalApplicationPolicy--;
}

core.List<core.String> buildUnnamed6918() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6918(core.List<core.String> o) {
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

core.List<api.PersonalApplicationPolicy> buildUnnamed6919() {
  var o = <api.PersonalApplicationPolicy>[];
  o.add(buildPersonalApplicationPolicy());
  o.add(buildPersonalApplicationPolicy());
  return o;
}

void checkUnnamed6919(core.List<api.PersonalApplicationPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersonalApplicationPolicy(o[0] as api.PersonalApplicationPolicy);
  checkPersonalApplicationPolicy(o[1] as api.PersonalApplicationPolicy);
}

core.int buildCounterPersonalUsagePolicies = 0;
api.PersonalUsagePolicies buildPersonalUsagePolicies() {
  var o = api.PersonalUsagePolicies();
  buildCounterPersonalUsagePolicies++;
  if (buildCounterPersonalUsagePolicies < 3) {
    o.accountTypesWithManagementDisabled = buildUnnamed6918();
    o.cameraDisabled = true;
    o.maxDaysWithWorkOff = 42;
    o.personalApplications = buildUnnamed6919();
    o.personalPlayStoreMode = 'foo';
    o.screenCaptureDisabled = true;
  }
  buildCounterPersonalUsagePolicies--;
  return o;
}

void checkPersonalUsagePolicies(api.PersonalUsagePolicies o) {
  buildCounterPersonalUsagePolicies++;
  if (buildCounterPersonalUsagePolicies < 3) {
    checkUnnamed6918(o.accountTypesWithManagementDisabled!);
    unittest.expect(o.cameraDisabled!, unittest.isTrue);
    unittest.expect(
      o.maxDaysWithWorkOff!,
      unittest.equals(42),
    );
    checkUnnamed6919(o.personalApplications!);
    unittest.expect(
      o.personalPlayStoreMode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.screenCaptureDisabled!, unittest.isTrue);
  }
  buildCounterPersonalUsagePolicies--;
}

core.List<core.String> buildUnnamed6920() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6920(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6921() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6921(core.List<core.String> o) {
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

core.List<api.ApplicationPolicy> buildUnnamed6922() {
  var o = <api.ApplicationPolicy>[];
  o.add(buildApplicationPolicy());
  o.add(buildApplicationPolicy());
  return o;
}

void checkUnnamed6922(core.List<api.ApplicationPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationPolicy(o[0] as api.ApplicationPolicy);
  checkApplicationPolicy(o[1] as api.ApplicationPolicy);
}

core.List<api.ChoosePrivateKeyRule> buildUnnamed6923() {
  var o = <api.ChoosePrivateKeyRule>[];
  o.add(buildChoosePrivateKeyRule());
  o.add(buildChoosePrivateKeyRule());
  return o;
}

void checkUnnamed6923(core.List<api.ChoosePrivateKeyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChoosePrivateKeyRule(o[0] as api.ChoosePrivateKeyRule);
  checkChoosePrivateKeyRule(o[1] as api.ChoosePrivateKeyRule);
}

core.List<api.ComplianceRule> buildUnnamed6924() {
  var o = <api.ComplianceRule>[];
  o.add(buildComplianceRule());
  o.add(buildComplianceRule());
  return o;
}

void checkUnnamed6924(core.List<api.ComplianceRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComplianceRule(o[0] as api.ComplianceRule);
  checkComplianceRule(o[1] as api.ComplianceRule);
}

core.List<core.String> buildUnnamed6925() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6925(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6926() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6926(core.List<core.String> o) {
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

core.List<api.OncCertificateProvider> buildUnnamed6927() {
  var o = <api.OncCertificateProvider>[];
  o.add(buildOncCertificateProvider());
  o.add(buildOncCertificateProvider());
  return o;
}

void checkUnnamed6927(core.List<api.OncCertificateProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOncCertificateProvider(o[0] as api.OncCertificateProvider);
  checkOncCertificateProvider(o[1] as api.OncCertificateProvider);
}

core.Map<core.String, core.Object> buildUnnamed6928() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed6928(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.List<api.PasswordRequirements> buildUnnamed6929() {
  var o = <api.PasswordRequirements>[];
  o.add(buildPasswordRequirements());
  o.add(buildPasswordRequirements());
  return o;
}

void checkUnnamed6929(core.List<api.PasswordRequirements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPasswordRequirements(o[0] as api.PasswordRequirements);
  checkPasswordRequirements(o[1] as api.PasswordRequirements);
}

core.List<api.PermissionGrant> buildUnnamed6930() {
  var o = <api.PermissionGrant>[];
  o.add(buildPermissionGrant());
  o.add(buildPermissionGrant());
  return o;
}

void checkUnnamed6930(core.List<api.PermissionGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionGrant(o[0] as api.PermissionGrant);
  checkPermissionGrant(o[1] as api.PermissionGrant);
}

core.List<api.PersistentPreferredActivity> buildUnnamed6931() {
  var o = <api.PersistentPreferredActivity>[];
  o.add(buildPersistentPreferredActivity());
  o.add(buildPersistentPreferredActivity());
  return o;
}

void checkUnnamed6931(core.List<api.PersistentPreferredActivity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersistentPreferredActivity(o[0] as api.PersistentPreferredActivity);
  checkPersistentPreferredActivity(o[1] as api.PersistentPreferredActivity);
}

core.List<api.PolicyEnforcementRule> buildUnnamed6932() {
  var o = <api.PolicyEnforcementRule>[];
  o.add(buildPolicyEnforcementRule());
  o.add(buildPolicyEnforcementRule());
  return o;
}

void checkUnnamed6932(core.List<api.PolicyEnforcementRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyEnforcementRule(o[0] as api.PolicyEnforcementRule);
  checkPolicyEnforcementRule(o[1] as api.PolicyEnforcementRule);
}

core.List<api.SetupAction> buildUnnamed6933() {
  var o = <api.SetupAction>[];
  o.add(buildSetupAction());
  o.add(buildSetupAction());
  return o;
}

void checkUnnamed6933(core.List<api.SetupAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSetupAction(o[0] as api.SetupAction);
  checkSetupAction(o[1] as api.SetupAction);
}

core.List<core.String> buildUnnamed6934() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6934(core.List<core.String> o) {
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

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.accountTypesWithManagementDisabled = buildUnnamed6920();
    o.addUserDisabled = true;
    o.adjustVolumeDisabled = true;
    o.advancedSecurityOverrides = buildAdvancedSecurityOverrides();
    o.alwaysOnVpnPackage = buildAlwaysOnVpnPackage();
    o.androidDevicePolicyTracks = buildUnnamed6921();
    o.appAutoUpdatePolicy = 'foo';
    o.applications = buildUnnamed6922();
    o.autoDateAndTimeZone = 'foo';
    o.autoTimeRequired = true;
    o.blockApplicationsEnabled = true;
    o.bluetoothConfigDisabled = true;
    o.bluetoothContactSharingDisabled = true;
    o.bluetoothDisabled = true;
    o.cameraDisabled = true;
    o.cellBroadcastsConfigDisabled = true;
    o.choosePrivateKeyRules = buildUnnamed6923();
    o.complianceRules = buildUnnamed6924();
    o.createWindowsDisabled = true;
    o.credentialsConfigDisabled = true;
    o.dataRoamingDisabled = true;
    o.debuggingFeaturesAllowed = true;
    o.defaultPermissionPolicy = 'foo';
    o.deviceOwnerLockScreenInfo = buildUserFacingMessage();
    o.encryptionPolicy = 'foo';
    o.ensureVerifyAppsEnabled = true;
    o.factoryResetDisabled = true;
    o.frpAdminEmails = buildUnnamed6925();
    o.funDisabled = true;
    o.installAppsDisabled = true;
    o.installUnknownSourcesAllowed = true;
    o.keyguardDisabled = true;
    o.keyguardDisabledFeatures = buildUnnamed6926();
    o.kioskCustomLauncherEnabled = true;
    o.kioskCustomization = buildKioskCustomization();
    o.locationMode = 'foo';
    o.longSupportMessage = buildUserFacingMessage();
    o.maximumTimeToLock = 'foo';
    o.minimumApiLevel = 42;
    o.mobileNetworksConfigDisabled = true;
    o.modifyAccountsDisabled = true;
    o.mountPhysicalMediaDisabled = true;
    o.name = 'foo';
    o.networkEscapeHatchEnabled = true;
    o.networkResetDisabled = true;
    o.oncCertificateProviders = buildUnnamed6927();
    o.openNetworkConfiguration = buildUnnamed6928();
    o.outgoingBeamDisabled = true;
    o.outgoingCallsDisabled = true;
    o.passwordPolicies = buildUnnamed6929();
    o.passwordRequirements = buildPasswordRequirements();
    o.permissionGrants = buildUnnamed6930();
    o.permittedAccessibilityServices = buildPackageNameList();
    o.permittedInputMethods = buildPackageNameList();
    o.persistentPreferredActivities = buildUnnamed6931();
    o.personalUsagePolicies = buildPersonalUsagePolicies();
    o.playStoreMode = 'foo';
    o.policyEnforcementRules = buildUnnamed6932();
    o.privateKeySelectionEnabled = true;
    o.recommendedGlobalProxy = buildProxyInfo();
    o.removeUserDisabled = true;
    o.safeBootDisabled = true;
    o.screenCaptureDisabled = true;
    o.setUserIconDisabled = true;
    o.setWallpaperDisabled = true;
    o.setupActions = buildUnnamed6933();
    o.shareLocationDisabled = true;
    o.shortSupportMessage = buildUserFacingMessage();
    o.skipFirstUseHintsEnabled = true;
    o.smsDisabled = true;
    o.statusBarDisabled = true;
    o.statusReportingSettings = buildStatusReportingSettings();
    o.stayOnPluggedModes = buildUnnamed6934();
    o.systemUpdate = buildSystemUpdate();
    o.tetheringConfigDisabled = true;
    o.uninstallAppsDisabled = true;
    o.unmuteMicrophoneDisabled = true;
    o.usbFileTransferDisabled = true;
    o.usbMassStorageEnabled = true;
    o.version = 'foo';
    o.vpnConfigDisabled = true;
    o.wifiConfigDisabled = true;
    o.wifiConfigsLockdownEnabled = true;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed6920(o.accountTypesWithManagementDisabled!);
    unittest.expect(o.addUserDisabled!, unittest.isTrue);
    unittest.expect(o.adjustVolumeDisabled!, unittest.isTrue);
    checkAdvancedSecurityOverrides(
        o.advancedSecurityOverrides! as api.AdvancedSecurityOverrides);
    checkAlwaysOnVpnPackage(o.alwaysOnVpnPackage! as api.AlwaysOnVpnPackage);
    checkUnnamed6921(o.androidDevicePolicyTracks!);
    unittest.expect(
      o.appAutoUpdatePolicy!,
      unittest.equals('foo'),
    );
    checkUnnamed6922(o.applications!);
    unittest.expect(
      o.autoDateAndTimeZone!,
      unittest.equals('foo'),
    );
    unittest.expect(o.autoTimeRequired!, unittest.isTrue);
    unittest.expect(o.blockApplicationsEnabled!, unittest.isTrue);
    unittest.expect(o.bluetoothConfigDisabled!, unittest.isTrue);
    unittest.expect(o.bluetoothContactSharingDisabled!, unittest.isTrue);
    unittest.expect(o.bluetoothDisabled!, unittest.isTrue);
    unittest.expect(o.cameraDisabled!, unittest.isTrue);
    unittest.expect(o.cellBroadcastsConfigDisabled!, unittest.isTrue);
    checkUnnamed6923(o.choosePrivateKeyRules!);
    checkUnnamed6924(o.complianceRules!);
    unittest.expect(o.createWindowsDisabled!, unittest.isTrue);
    unittest.expect(o.credentialsConfigDisabled!, unittest.isTrue);
    unittest.expect(o.dataRoamingDisabled!, unittest.isTrue);
    unittest.expect(o.debuggingFeaturesAllowed!, unittest.isTrue);
    unittest.expect(
      o.defaultPermissionPolicy!,
      unittest.equals('foo'),
    );
    checkUserFacingMessage(
        o.deviceOwnerLockScreenInfo! as api.UserFacingMessage);
    unittest.expect(
      o.encryptionPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ensureVerifyAppsEnabled!, unittest.isTrue);
    unittest.expect(o.factoryResetDisabled!, unittest.isTrue);
    checkUnnamed6925(o.frpAdminEmails!);
    unittest.expect(o.funDisabled!, unittest.isTrue);
    unittest.expect(o.installAppsDisabled!, unittest.isTrue);
    unittest.expect(o.installUnknownSourcesAllowed!, unittest.isTrue);
    unittest.expect(o.keyguardDisabled!, unittest.isTrue);
    checkUnnamed6926(o.keyguardDisabledFeatures!);
    unittest.expect(o.kioskCustomLauncherEnabled!, unittest.isTrue);
    checkKioskCustomization(o.kioskCustomization! as api.KioskCustomization);
    unittest.expect(
      o.locationMode!,
      unittest.equals('foo'),
    );
    checkUserFacingMessage(o.longSupportMessage! as api.UserFacingMessage);
    unittest.expect(
      o.maximumTimeToLock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimumApiLevel!,
      unittest.equals(42),
    );
    unittest.expect(o.mobileNetworksConfigDisabled!, unittest.isTrue);
    unittest.expect(o.modifyAccountsDisabled!, unittest.isTrue);
    unittest.expect(o.mountPhysicalMediaDisabled!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.networkEscapeHatchEnabled!, unittest.isTrue);
    unittest.expect(o.networkResetDisabled!, unittest.isTrue);
    checkUnnamed6927(o.oncCertificateProviders!);
    checkUnnamed6928(o.openNetworkConfiguration!);
    unittest.expect(o.outgoingBeamDisabled!, unittest.isTrue);
    unittest.expect(o.outgoingCallsDisabled!, unittest.isTrue);
    checkUnnamed6929(o.passwordPolicies!);
    checkPasswordRequirements(
        o.passwordRequirements! as api.PasswordRequirements);
    checkUnnamed6930(o.permissionGrants!);
    checkPackageNameList(
        o.permittedAccessibilityServices! as api.PackageNameList);
    checkPackageNameList(o.permittedInputMethods! as api.PackageNameList);
    checkUnnamed6931(o.persistentPreferredActivities!);
    checkPersonalUsagePolicies(
        o.personalUsagePolicies! as api.PersonalUsagePolicies);
    unittest.expect(
      o.playStoreMode!,
      unittest.equals('foo'),
    );
    checkUnnamed6932(o.policyEnforcementRules!);
    unittest.expect(o.privateKeySelectionEnabled!, unittest.isTrue);
    checkProxyInfo(o.recommendedGlobalProxy! as api.ProxyInfo);
    unittest.expect(o.removeUserDisabled!, unittest.isTrue);
    unittest.expect(o.safeBootDisabled!, unittest.isTrue);
    unittest.expect(o.screenCaptureDisabled!, unittest.isTrue);
    unittest.expect(o.setUserIconDisabled!, unittest.isTrue);
    unittest.expect(o.setWallpaperDisabled!, unittest.isTrue);
    checkUnnamed6933(o.setupActions!);
    unittest.expect(o.shareLocationDisabled!, unittest.isTrue);
    checkUserFacingMessage(o.shortSupportMessage! as api.UserFacingMessage);
    unittest.expect(o.skipFirstUseHintsEnabled!, unittest.isTrue);
    unittest.expect(o.smsDisabled!, unittest.isTrue);
    unittest.expect(o.statusBarDisabled!, unittest.isTrue);
    checkStatusReportingSettings(
        o.statusReportingSettings! as api.StatusReportingSettings);
    checkUnnamed6934(o.stayOnPluggedModes!);
    checkSystemUpdate(o.systemUpdate! as api.SystemUpdate);
    unittest.expect(o.tetheringConfigDisabled!, unittest.isTrue);
    unittest.expect(o.uninstallAppsDisabled!, unittest.isTrue);
    unittest.expect(o.unmuteMicrophoneDisabled!, unittest.isTrue);
    unittest.expect(o.usbFileTransferDisabled!, unittest.isTrue);
    unittest.expect(o.usbMassStorageEnabled!, unittest.isTrue);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
    unittest.expect(o.vpnConfigDisabled!, unittest.isTrue);
    unittest.expect(o.wifiConfigDisabled!, unittest.isTrue);
    unittest.expect(o.wifiConfigsLockdownEnabled!, unittest.isTrue);
  }
  buildCounterPolicy--;
}

core.int buildCounterPolicyEnforcementRule = 0;
api.PolicyEnforcementRule buildPolicyEnforcementRule() {
  var o = api.PolicyEnforcementRule();
  buildCounterPolicyEnforcementRule++;
  if (buildCounterPolicyEnforcementRule < 3) {
    o.blockAction = buildBlockAction();
    o.settingName = 'foo';
    o.wipeAction = buildWipeAction();
  }
  buildCounterPolicyEnforcementRule--;
  return o;
}

void checkPolicyEnforcementRule(api.PolicyEnforcementRule o) {
  buildCounterPolicyEnforcementRule++;
  if (buildCounterPolicyEnforcementRule < 3) {
    checkBlockAction(o.blockAction! as api.BlockAction);
    unittest.expect(
      o.settingName!,
      unittest.equals('foo'),
    );
    checkWipeAction(o.wipeAction! as api.WipeAction);
  }
  buildCounterPolicyEnforcementRule--;
}

core.List<api.UserFacingMessage> buildUnnamed6935() {
  var o = <api.UserFacingMessage>[];
  o.add(buildUserFacingMessage());
  o.add(buildUserFacingMessage());
  return o;
}

void checkUnnamed6935(core.List<api.UserFacingMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserFacingMessage(o[0] as api.UserFacingMessage);
  checkUserFacingMessage(o[1] as api.UserFacingMessage);
}

core.int buildCounterPostureDetail = 0;
api.PostureDetail buildPostureDetail() {
  var o = api.PostureDetail();
  buildCounterPostureDetail++;
  if (buildCounterPostureDetail < 3) {
    o.advice = buildUnnamed6935();
    o.securityRisk = 'foo';
  }
  buildCounterPostureDetail--;
  return o;
}

void checkPostureDetail(api.PostureDetail o) {
  buildCounterPostureDetail++;
  if (buildCounterPostureDetail < 3) {
    checkUnnamed6935(o.advice!);
    unittest.expect(
      o.securityRisk!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostureDetail--;
}

core.int buildCounterPowerManagementEvent = 0;
api.PowerManagementEvent buildPowerManagementEvent() {
  var o = api.PowerManagementEvent();
  buildCounterPowerManagementEvent++;
  if (buildCounterPowerManagementEvent < 3) {
    o.batteryLevel = 42.0;
    o.createTime = 'foo';
    o.eventType = 'foo';
  }
  buildCounterPowerManagementEvent--;
  return o;
}

void checkPowerManagementEvent(api.PowerManagementEvent o) {
  buildCounterPowerManagementEvent++;
  if (buildCounterPowerManagementEvent < 3) {
    unittest.expect(
      o.batteryLevel!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
  }
  buildCounterPowerManagementEvent--;
}

core.List<core.String> buildUnnamed6936() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6936(core.List<core.String> o) {
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

core.int buildCounterProxyInfo = 0;
api.ProxyInfo buildProxyInfo() {
  var o = api.ProxyInfo();
  buildCounterProxyInfo++;
  if (buildCounterProxyInfo < 3) {
    o.excludedHosts = buildUnnamed6936();
    o.host = 'foo';
    o.pacUri = 'foo';
    o.port = 42;
  }
  buildCounterProxyInfo--;
  return o;
}

void checkProxyInfo(api.ProxyInfo o) {
  buildCounterProxyInfo++;
  if (buildCounterProxyInfo < 3) {
    checkUnnamed6936(o.excludedHosts!);
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pacUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
  }
  buildCounterProxyInfo--;
}

core.List<api.PostureDetail> buildUnnamed6937() {
  var o = <api.PostureDetail>[];
  o.add(buildPostureDetail());
  o.add(buildPostureDetail());
  return o;
}

void checkUnnamed6937(core.List<api.PostureDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostureDetail(o[0] as api.PostureDetail);
  checkPostureDetail(o[1] as api.PostureDetail);
}

core.int buildCounterSecurityPosture = 0;
api.SecurityPosture buildSecurityPosture() {
  var o = api.SecurityPosture();
  buildCounterSecurityPosture++;
  if (buildCounterSecurityPosture < 3) {
    o.devicePosture = 'foo';
    o.postureDetails = buildUnnamed6937();
  }
  buildCounterSecurityPosture--;
  return o;
}

void checkSecurityPosture(api.SecurityPosture o) {
  buildCounterSecurityPosture++;
  if (buildCounterSecurityPosture < 3) {
    unittest.expect(
      o.devicePosture!,
      unittest.equals('foo'),
    );
    checkUnnamed6937(o.postureDetails!);
  }
  buildCounterSecurityPosture--;
}

core.int buildCounterSetupAction = 0;
api.SetupAction buildSetupAction() {
  var o = api.SetupAction();
  buildCounterSetupAction++;
  if (buildCounterSetupAction < 3) {
    o.description = buildUserFacingMessage();
    o.launchApp = buildLaunchAppAction();
    o.title = buildUserFacingMessage();
  }
  buildCounterSetupAction--;
  return o;
}

void checkSetupAction(api.SetupAction o) {
  buildCounterSetupAction++;
  if (buildCounterSetupAction < 3) {
    checkUserFacingMessage(o.description! as api.UserFacingMessage);
    checkLaunchAppAction(o.launchApp! as api.LaunchAppAction);
    checkUserFacingMessage(o.title! as api.UserFacingMessage);
  }
  buildCounterSetupAction--;
}

core.int buildCounterSigninDetail = 0;
api.SigninDetail buildSigninDetail() {
  var o = api.SigninDetail();
  buildCounterSigninDetail++;
  if (buildCounterSigninDetail < 3) {
    o.allowPersonalUsage = 'foo';
    o.qrCode = 'foo';
    o.signinEnrollmentToken = 'foo';
    o.signinUrl = 'foo';
  }
  buildCounterSigninDetail--;
  return o;
}

void checkSigninDetail(api.SigninDetail o) {
  buildCounterSigninDetail++;
  if (buildCounterSigninDetail < 3) {
    unittest.expect(
      o.allowPersonalUsage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.qrCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signinEnrollmentToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signinUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterSigninDetail--;
}

core.int buildCounterSignupUrl = 0;
api.SignupUrl buildSignupUrl() {
  var o = api.SignupUrl();
  buildCounterSignupUrl++;
  if (buildCounterSignupUrl < 3) {
    o.name = 'foo';
    o.url = 'foo';
  }
  buildCounterSignupUrl--;
  return o;
}

void checkSignupUrl(api.SignupUrl o) {
  buildCounterSignupUrl++;
  if (buildCounterSignupUrl < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterSignupUrl--;
}

core.int buildCounterSoftwareInfo = 0;
api.SoftwareInfo buildSoftwareInfo() {
  var o = api.SoftwareInfo();
  buildCounterSoftwareInfo++;
  if (buildCounterSoftwareInfo < 3) {
    o.androidBuildNumber = 'foo';
    o.androidBuildTime = 'foo';
    o.androidDevicePolicyVersionCode = 42;
    o.androidDevicePolicyVersionName = 'foo';
    o.androidVersion = 'foo';
    o.bootloaderVersion = 'foo';
    o.deviceBuildSignature = 'foo';
    o.deviceKernelVersion = 'foo';
    o.primaryLanguageCode = 'foo';
    o.securityPatchLevel = 'foo';
    o.systemUpdateInfo = buildSystemUpdateInfo();
  }
  buildCounterSoftwareInfo--;
  return o;
}

void checkSoftwareInfo(api.SoftwareInfo o) {
  buildCounterSoftwareInfo++;
  if (buildCounterSoftwareInfo < 3) {
    unittest.expect(
      o.androidBuildNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.androidBuildTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.androidDevicePolicyVersionCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.androidDevicePolicyVersionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.androidVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bootloaderVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceBuildSignature!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceKernelVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.securityPatchLevel!,
      unittest.equals('foo'),
    );
    checkSystemUpdateInfo(o.systemUpdateInfo! as api.SystemUpdateInfo);
  }
  buildCounterSoftwareInfo--;
}

core.Map<core.String, core.Object> buildUnnamed6938() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed6938(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed6939() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6938());
  o.add(buildUnnamed6938());
  return o;
}

void checkUnnamed6939(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6938(o[0]);
  checkUnnamed6938(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6939();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed6939(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStatusReportingSettings = 0;
api.StatusReportingSettings buildStatusReportingSettings() {
  var o = api.StatusReportingSettings();
  buildCounterStatusReportingSettings++;
  if (buildCounterStatusReportingSettings < 3) {
    o.applicationReportingSettings = buildApplicationReportingSettings();
    o.applicationReportsEnabled = true;
    o.commonCriteriaModeEnabled = true;
    o.deviceSettingsEnabled = true;
    o.displayInfoEnabled = true;
    o.hardwareStatusEnabled = true;
    o.memoryInfoEnabled = true;
    o.networkInfoEnabled = true;
    o.powerManagementEventsEnabled = true;
    o.softwareInfoEnabled = true;
    o.systemPropertiesEnabled = true;
  }
  buildCounterStatusReportingSettings--;
  return o;
}

void checkStatusReportingSettings(api.StatusReportingSettings o) {
  buildCounterStatusReportingSettings++;
  if (buildCounterStatusReportingSettings < 3) {
    checkApplicationReportingSettings(
        o.applicationReportingSettings! as api.ApplicationReportingSettings);
    unittest.expect(o.applicationReportsEnabled!, unittest.isTrue);
    unittest.expect(o.commonCriteriaModeEnabled!, unittest.isTrue);
    unittest.expect(o.deviceSettingsEnabled!, unittest.isTrue);
    unittest.expect(o.displayInfoEnabled!, unittest.isTrue);
    unittest.expect(o.hardwareStatusEnabled!, unittest.isTrue);
    unittest.expect(o.memoryInfoEnabled!, unittest.isTrue);
    unittest.expect(o.networkInfoEnabled!, unittest.isTrue);
    unittest.expect(o.powerManagementEventsEnabled!, unittest.isTrue);
    unittest.expect(o.softwareInfoEnabled!, unittest.isTrue);
    unittest.expect(o.systemPropertiesEnabled!, unittest.isTrue);
  }
  buildCounterStatusReportingSettings--;
}

core.List<api.FreezePeriod> buildUnnamed6940() {
  var o = <api.FreezePeriod>[];
  o.add(buildFreezePeriod());
  o.add(buildFreezePeriod());
  return o;
}

void checkUnnamed6940(core.List<api.FreezePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFreezePeriod(o[0] as api.FreezePeriod);
  checkFreezePeriod(o[1] as api.FreezePeriod);
}

core.int buildCounterSystemUpdate = 0;
api.SystemUpdate buildSystemUpdate() {
  var o = api.SystemUpdate();
  buildCounterSystemUpdate++;
  if (buildCounterSystemUpdate < 3) {
    o.endMinutes = 42;
    o.freezePeriods = buildUnnamed6940();
    o.startMinutes = 42;
    o.type = 'foo';
  }
  buildCounterSystemUpdate--;
  return o;
}

void checkSystemUpdate(api.SystemUpdate o) {
  buildCounterSystemUpdate++;
  if (buildCounterSystemUpdate < 3) {
    unittest.expect(
      o.endMinutes!,
      unittest.equals(42),
    );
    checkUnnamed6940(o.freezePeriods!);
    unittest.expect(
      o.startMinutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSystemUpdate--;
}

core.int buildCounterSystemUpdateInfo = 0;
api.SystemUpdateInfo buildSystemUpdateInfo() {
  var o = api.SystemUpdateInfo();
  buildCounterSystemUpdateInfo++;
  if (buildCounterSystemUpdateInfo < 3) {
    o.updateReceivedTime = 'foo';
    o.updateStatus = 'foo';
  }
  buildCounterSystemUpdateInfo--;
  return o;
}

void checkSystemUpdateInfo(api.SystemUpdateInfo o) {
  buildCounterSystemUpdateInfo++;
  if (buildCounterSystemUpdateInfo < 3) {
    unittest.expect(
      o.updateReceivedTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterSystemUpdateInfo--;
}

core.int buildCounterTelephonyInfo = 0;
api.TelephonyInfo buildTelephonyInfo() {
  var o = api.TelephonyInfo();
  buildCounterTelephonyInfo++;
  if (buildCounterTelephonyInfo < 3) {
    o.carrierName = 'foo';
    o.phoneNumber = 'foo';
  }
  buildCounterTelephonyInfo--;
  return o;
}

void checkTelephonyInfo(api.TelephonyInfo o) {
  buildCounterTelephonyInfo++;
  if (buildCounterTelephonyInfo < 3) {
    unittest.expect(
      o.carrierName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterTelephonyInfo--;
}

core.int buildCounterTermsAndConditions = 0;
api.TermsAndConditions buildTermsAndConditions() {
  var o = api.TermsAndConditions();
  buildCounterTermsAndConditions++;
  if (buildCounterTermsAndConditions < 3) {
    o.content = buildUserFacingMessage();
    o.header = buildUserFacingMessage();
  }
  buildCounterTermsAndConditions--;
  return o;
}

void checkTermsAndConditions(api.TermsAndConditions o) {
  buildCounterTermsAndConditions++;
  if (buildCounterTermsAndConditions < 3) {
    checkUserFacingMessage(o.content! as api.UserFacingMessage);
    checkUserFacingMessage(o.header! as api.UserFacingMessage);
  }
  buildCounterTermsAndConditions--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  var o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.accountIdentifier = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(
      o.accountIdentifier!,
      unittest.equals('foo'),
    );
  }
  buildCounterUser--;
}

core.Map<core.String, core.String> buildUnnamed6941() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6941(core.Map<core.String, core.String> o) {
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

core.int buildCounterUserFacingMessage = 0;
api.UserFacingMessage buildUserFacingMessage() {
  var o = api.UserFacingMessage();
  buildCounterUserFacingMessage++;
  if (buildCounterUserFacingMessage < 3) {
    o.defaultMessage = 'foo';
    o.localizedMessages = buildUnnamed6941();
  }
  buildCounterUserFacingMessage--;
  return o;
}

void checkUserFacingMessage(api.UserFacingMessage o) {
  buildCounterUserFacingMessage++;
  if (buildCounterUserFacingMessage < 3) {
    unittest.expect(
      o.defaultMessage!,
      unittest.equals('foo'),
    );
    checkUnnamed6941(o.localizedMessages!);
  }
  buildCounterUserFacingMessage--;
}

core.List<api.WebAppIcon> buildUnnamed6942() {
  var o = <api.WebAppIcon>[];
  o.add(buildWebAppIcon());
  o.add(buildWebAppIcon());
  return o;
}

void checkUnnamed6942(core.List<api.WebAppIcon> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebAppIcon(o[0] as api.WebAppIcon);
  checkWebAppIcon(o[1] as api.WebAppIcon);
}

core.int buildCounterWebApp = 0;
api.WebApp buildWebApp() {
  var o = api.WebApp();
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    o.displayMode = 'foo';
    o.icons = buildUnnamed6942();
    o.name = 'foo';
    o.startUrl = 'foo';
    o.title = 'foo';
    o.versionCode = 'foo';
  }
  buildCounterWebApp--;
  return o;
}

void checkWebApp(api.WebApp o) {
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    unittest.expect(
      o.displayMode!,
      unittest.equals('foo'),
    );
    checkUnnamed6942(o.icons!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebApp--;
}

core.int buildCounterWebAppIcon = 0;
api.WebAppIcon buildWebAppIcon() {
  var o = api.WebAppIcon();
  buildCounterWebAppIcon++;
  if (buildCounterWebAppIcon < 3) {
    o.imageData = 'foo';
  }
  buildCounterWebAppIcon--;
  return o;
}

void checkWebAppIcon(api.WebAppIcon o) {
  buildCounterWebAppIcon++;
  if (buildCounterWebAppIcon < 3) {
    unittest.expect(
      o.imageData!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebAppIcon--;
}

core.List<core.String> buildUnnamed6943() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6943(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6944() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6944(core.List<core.String> o) {
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

core.int buildCounterWebToken = 0;
api.WebToken buildWebToken() {
  var o = api.WebToken();
  buildCounterWebToken++;
  if (buildCounterWebToken < 3) {
    o.enabledFeatures = buildUnnamed6943();
    o.name = 'foo';
    o.parentFrameUrl = 'foo';
    o.permissions = buildUnnamed6944();
    o.value = 'foo';
  }
  buildCounterWebToken--;
  return o;
}

void checkWebToken(api.WebToken o) {
  buildCounterWebToken++;
  if (buildCounterWebToken < 3) {
    checkUnnamed6943(o.enabledFeatures!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentFrameUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed6944(o.permissions!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebToken--;
}

core.int buildCounterWipeAction = 0;
api.WipeAction buildWipeAction() {
  var o = api.WipeAction();
  buildCounterWipeAction++;
  if (buildCounterWipeAction < 3) {
    o.preserveFrp = true;
    o.wipeAfterDays = 42;
  }
  buildCounterWipeAction--;
  return o;
}

void checkWipeAction(api.WipeAction o) {
  buildCounterWipeAction++;
  if (buildCounterWipeAction < 3) {
    unittest.expect(o.preserveFrp!, unittest.isTrue);
    unittest.expect(
      o.wipeAfterDays!,
      unittest.equals(42),
    );
  }
  buildCounterWipeAction--;
}

core.List<core.String> buildUnnamed6945() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6945(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-AdvancedSecurityOverrides', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAdvancedSecurityOverrides();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AdvancedSecurityOverrides.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvancedSecurityOverrides(od as api.AdvancedSecurityOverrides);
    });
  });

  unittest.group('obj-schema-AlwaysOnVpnPackage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAlwaysOnVpnPackage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AlwaysOnVpnPackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAlwaysOnVpnPackage(od as api.AlwaysOnVpnPackage);
    });
  });

  unittest.group('obj-schema-ApiLevelCondition', () {
    unittest.test('to-json--from-json', () async {
      var o = buildApiLevelCondition();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ApiLevelCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApiLevelCondition(od as api.ApiLevelCondition);
    });
  });

  unittest.group('obj-schema-AppTrackInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAppTrackInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AppTrackInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppTrackInfo(od as api.AppTrackInfo);
    });
  });

  unittest.group('obj-schema-Application', () {
    unittest.test('to-json--from-json', () async {
      var o = buildApplication();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Application.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplication(od as api.Application);
    });
  });

  unittest.group('obj-schema-ApplicationEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildApplicationEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ApplicationEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationEvent(od as api.ApplicationEvent);
    });
  });

  unittest.group('obj-schema-ApplicationPermission', () {
    unittest.test('to-json--from-json', () async {
      var o = buildApplicationPermission();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ApplicationPermission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationPermission(od as api.ApplicationPermission);
    });
  });

  unittest.group('obj-schema-ApplicationPolicy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildApplicationPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ApplicationPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationPolicy(od as api.ApplicationPolicy);
    });
  });

  unittest.group('obj-schema-ApplicationReport', () {
    unittest.test('to-json--from-json', () async {
      var o = buildApplicationReport();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ApplicationReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationReport(od as api.ApplicationReport);
    });
  });

  unittest.group('obj-schema-ApplicationReportingSettings', () {
    unittest.test('to-json--from-json', () async {
      var o = buildApplicationReportingSettings();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ApplicationReportingSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationReportingSettings(od as api.ApplicationReportingSettings);
    });
  });

  unittest.group('obj-schema-BlockAction', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBlockAction();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BlockAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBlockAction(od as api.BlockAction);
    });
  });

  unittest.group('obj-schema-ChoosePrivateKeyRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildChoosePrivateKeyRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ChoosePrivateKeyRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChoosePrivateKeyRule(od as api.ChoosePrivateKeyRule);
    });
  });

  unittest.group('obj-schema-Command', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCommand();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Command.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCommand(od as api.Command);
    });
  });

  unittest.group('obj-schema-CommonCriteriaModeInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCommonCriteriaModeInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CommonCriteriaModeInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommonCriteriaModeInfo(od as api.CommonCriteriaModeInfo);
    });
  });

  unittest.group('obj-schema-ComplianceRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildComplianceRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ComplianceRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComplianceRule(od as api.ComplianceRule);
    });
  });

  unittest.group('obj-schema-ContactInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildContactInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ContactInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContactInfo(od as api.ContactInfo);
    });
  });

  unittest.group('obj-schema-ContentProviderEndpoint', () {
    unittest.test('to-json--from-json', () async {
      var o = buildContentProviderEndpoint();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ContentProviderEndpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContentProviderEndpoint(od as api.ContentProviderEndpoint);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od as api.Date);
    });
  });

  unittest.group('obj-schema-Device', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDevice();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Device.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDevice(od as api.Device);
    });
  });

  unittest.group('obj-schema-DeviceSettings', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDeviceSettings();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DeviceSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceSettings(od as api.DeviceSettings);
    });
  });

  unittest.group('obj-schema-Display', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDisplay();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Display.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDisplay(od as api.Display);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-EnrollmentToken', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEnrollmentToken();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.EnrollmentToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnrollmentToken(od as api.EnrollmentToken);
    });
  });

  unittest.group('obj-schema-Enterprise', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEnterprise();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Enterprise.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterprise(od as api.Enterprise);
    });
  });

  unittest.group('obj-schema-ExternalData', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExternalData();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ExternalData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalData(od as api.ExternalData);
    });
  });

  unittest.group('obj-schema-FreezePeriod', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFreezePeriod();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FreezePeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFreezePeriod(od as api.FreezePeriod);
    });
  });

  unittest.group('obj-schema-HardwareInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildHardwareInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.HardwareInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHardwareInfo(od as api.HardwareInfo);
    });
  });

  unittest.group('obj-schema-HardwareStatus', () {
    unittest.test('to-json--from-json', () async {
      var o = buildHardwareStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.HardwareStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHardwareStatus(od as api.HardwareStatus);
    });
  });

  unittest.group('obj-schema-IssueCommandResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIssueCommandResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.IssueCommandResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIssueCommandResponse(od as api.IssueCommandResponse);
    });
  });

  unittest.group('obj-schema-KeyedAppState', () {
    unittest.test('to-json--from-json', () async {
      var o = buildKeyedAppState();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.KeyedAppState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyedAppState(od as api.KeyedAppState);
    });
  });

  unittest.group('obj-schema-KioskCustomization', () {
    unittest.test('to-json--from-json', () async {
      var o = buildKioskCustomization();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.KioskCustomization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKioskCustomization(od as api.KioskCustomization);
    });
  });

  unittest.group('obj-schema-LaunchAppAction', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLaunchAppAction();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.LaunchAppAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLaunchAppAction(od as api.LaunchAppAction);
    });
  });

  unittest.group('obj-schema-ListDevicesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListDevicesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListDevicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDevicesResponse(od as api.ListDevicesResponse);
    });
  });

  unittest.group('obj-schema-ListEnterprisesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListEnterprisesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListEnterprisesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEnterprisesResponse(od as api.ListEnterprisesResponse);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListOperationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-ListPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListPoliciesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPoliciesResponse(od as api.ListPoliciesResponse);
    });
  });

  unittest.group('obj-schema-ListWebAppsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListWebAppsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListWebAppsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWebAppsResponse(od as api.ListWebAppsResponse);
    });
  });

  unittest.group('obj-schema-ManagedConfigurationTemplate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildManagedConfigurationTemplate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ManagedConfigurationTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedConfigurationTemplate(od as api.ManagedConfigurationTemplate);
    });
  });

  unittest.group('obj-schema-ManagedProperty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildManagedProperty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ManagedProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedProperty(od as api.ManagedProperty);
    });
  });

  unittest.group('obj-schema-ManagedPropertyEntry', () {
    unittest.test('to-json--from-json', () async {
      var o = buildManagedPropertyEntry();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ManagedPropertyEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedPropertyEntry(od as api.ManagedPropertyEntry);
    });
  });

  unittest.group('obj-schema-MemoryEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMemoryEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MemoryEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMemoryEvent(od as api.MemoryEvent);
    });
  });

  unittest.group('obj-schema-MemoryInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMemoryInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.MemoryInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMemoryInfo(od as api.MemoryInfo);
    });
  });

  unittest.group('obj-schema-NetworkInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNetworkInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.NetworkInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkInfo(od as api.NetworkInfo);
    });
  });

  unittest.group('obj-schema-NonComplianceDetail', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNonComplianceDetail();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.NonComplianceDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonComplianceDetail(od as api.NonComplianceDetail);
    });
  });

  unittest.group('obj-schema-NonComplianceDetailCondition', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNonComplianceDetailCondition();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.NonComplianceDetailCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonComplianceDetailCondition(od as api.NonComplianceDetailCondition);
    });
  });

  unittest.group('obj-schema-OncCertificateProvider', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOncCertificateProvider();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.OncCertificateProvider.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOncCertificateProvider(od as api.OncCertificateProvider);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-PackageNameList', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPackageNameList();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PackageNameList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPackageNameList(od as api.PackageNameList);
    });
  });

  unittest.group('obj-schema-PasswordRequirements', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPasswordRequirements();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PasswordRequirements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPasswordRequirements(od as api.PasswordRequirements);
    });
  });

  unittest.group('obj-schema-PermissionGrant', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPermissionGrant();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PermissionGrant.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPermissionGrant(od as api.PermissionGrant);
    });
  });

  unittest.group('obj-schema-PersistentPreferredActivity', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPersistentPreferredActivity();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PersistentPreferredActivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersistentPreferredActivity(od as api.PersistentPreferredActivity);
    });
  });

  unittest.group('obj-schema-PersonalApplicationPolicy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPersonalApplicationPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PersonalApplicationPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersonalApplicationPolicy(od as api.PersonalApplicationPolicy);
    });
  });

  unittest.group('obj-schema-PersonalUsagePolicies', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPersonalUsagePolicies();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PersonalUsagePolicies.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersonalUsagePolicies(od as api.PersonalUsagePolicies);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-PolicyEnforcementRule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPolicyEnforcementRule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PolicyEnforcementRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyEnforcementRule(od as api.PolicyEnforcementRule);
    });
  });

  unittest.group('obj-schema-PostureDetail', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPostureDetail();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PostureDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostureDetail(od as api.PostureDetail);
    });
  });

  unittest.group('obj-schema-PowerManagementEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPowerManagementEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PowerManagementEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPowerManagementEvent(od as api.PowerManagementEvent);
    });
  });

  unittest.group('obj-schema-ProxyInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProxyInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.ProxyInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProxyInfo(od as api.ProxyInfo);
    });
  });

  unittest.group('obj-schema-SecurityPosture', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSecurityPosture();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SecurityPosture.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecurityPosture(od as api.SecurityPosture);
    });
  });

  unittest.group('obj-schema-SetupAction', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSetupAction();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SetupAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetupAction(od as api.SetupAction);
    });
  });

  unittest.group('obj-schema-SigninDetail', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSigninDetail();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SigninDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSigninDetail(od as api.SigninDetail);
    });
  });

  unittest.group('obj-schema-SignupUrl', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSignupUrl();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.SignupUrl.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSignupUrl(od as api.SignupUrl);
    });
  });

  unittest.group('obj-schema-SoftwareInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSoftwareInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SoftwareInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSoftwareInfo(od as api.SoftwareInfo);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-StatusReportingSettings', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStatusReportingSettings();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.StatusReportingSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStatusReportingSettings(od as api.StatusReportingSettings);
    });
  });

  unittest.group('obj-schema-SystemUpdate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSystemUpdate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SystemUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemUpdate(od as api.SystemUpdate);
    });
  });

  unittest.group('obj-schema-SystemUpdateInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSystemUpdateInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SystemUpdateInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemUpdateInfo(od as api.SystemUpdateInfo);
    });
  });

  unittest.group('obj-schema-TelephonyInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTelephonyInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TelephonyInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTelephonyInfo(od as api.TelephonyInfo);
    });
  });

  unittest.group('obj-schema-TermsAndConditions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTermsAndConditions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TermsAndConditions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTermsAndConditions(od as api.TermsAndConditions);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUser();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od as api.User);
    });
  });

  unittest.group('obj-schema-UserFacingMessage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUserFacingMessage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UserFacingMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserFacingMessage(od as api.UserFacingMessage);
    });
  });

  unittest.group('obj-schema-WebApp', () {
    unittest.test('to-json--from-json', () async {
      var o = buildWebApp();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.WebApp.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebApp(od as api.WebApp);
    });
  });

  unittest.group('obj-schema-WebAppIcon', () {
    unittest.test('to-json--from-json', () async {
      var o = buildWebAppIcon();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.WebAppIcon.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebAppIcon(od as api.WebAppIcon);
    });
  });

  unittest.group('obj-schema-WebToken', () {
    unittest.test('to-json--from-json', () async {
      var o = buildWebToken();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.WebToken.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebToken(od as api.WebToken);
    });
  });

  unittest.group('obj-schema-WipeAction', () {
    unittest.test('to-json--from-json', () async {
      var o = buildWipeAction();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.WipeAction.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWipeAction(od as api.WipeAction);
    });
  });

  unittest.group('resource-EnterprisesResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises;
      var arg_request = buildEnterprise();
      var arg_agreementAccepted = true;
      var arg_enterpriseToken = 'foo';
      var arg_projectId = 'foo';
      var arg_signupUrlName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Enterprise.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnterprise(obj as api.Enterprise);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals("v1/enterprises"),
        );
        pathOffset += 14;

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
          queryMap["agreementAccepted"]!.first,
          unittest.equals("$arg_agreementAccepted"),
        );
        unittest.expect(
          queryMap["enterpriseToken"]!.first,
          unittest.equals(arg_enterpriseToken),
        );
        unittest.expect(
          queryMap["projectId"]!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap["signupUrlName"]!.first,
          unittest.equals(arg_signupUrlName),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEnterprise());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request,
          agreementAccepted: arg_agreementAccepted,
          enterpriseToken: arg_enterpriseToken,
          projectId: arg_projectId,
          signupUrlName: arg_signupUrlName,
          $fields: arg_$fields);
      checkEnterprise(response as api.Enterprise);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises;
      var arg_name = 'foo';
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises;
      var arg_name = 'foo';
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEnterprise());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEnterprise(response as api.Enterprise);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_projectId = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals("v1/enterprises"),
        );
        pathOffset += 14;

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
          queryMap["projectId"]!.first,
          unittest.equals(arg_projectId),
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
        var resp = convert.json.encode(buildListEnterprisesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          projectId: arg_projectId,
          view: arg_view,
          $fields: arg_$fields);
      checkListEnterprisesResponse(response as api.ListEnterprisesResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises;
      var arg_request = buildEnterprise();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Enterprise.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnterprise(obj as api.Enterprise);

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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEnterprise());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkEnterprise(response as api.Enterprise);
    });
  });

  unittest.group('resource-EnterprisesApplicationsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.applications;
      var arg_name = 'foo';
      var arg_languageCode = 'foo';
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
          queryMap["languageCode"]!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApplication());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkApplication(response as api.Application);
    });
  });

  unittest.group('resource-EnterprisesDevicesResource', () {
    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.devices;
      var arg_name = 'foo';
      var arg_wipeDataFlags = buildUnnamed6945();
      var arg_wipeReasonMessage = 'foo';
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
          queryMap["wipeDataFlags"]!,
          unittest.equals(arg_wipeDataFlags),
        );
        unittest.expect(
          queryMap["wipeReasonMessage"]!.first,
          unittest.equals(arg_wipeReasonMessage),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          wipeDataFlags: arg_wipeDataFlags,
          wipeReasonMessage: arg_wipeReasonMessage,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.devices;
      var arg_name = 'foo';
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDevice(response as api.Device);
    });

    unittest.test('method--issueCommand', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.devices;
      var arg_request = buildCommand();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Command.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCommand(obj as api.Command);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.issueCommand(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.devices;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDevicesResponse(response as api.ListDevicesResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.devices;
      var arg_request = buildDevice();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Device.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDevice(obj as api.Device);

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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkDevice(response as api.Device);
    });
  });

  unittest.group('resource-EnterprisesDevicesOperationsResource', () {
    unittest.test('method--cancel', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.devices.operations;
      var arg_name = 'foo';
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.devices.operations;
      var arg_name = 'foo';
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.devices.operations;
      var arg_name = 'foo';
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.devices.operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-EnterprisesEnrollmentTokensResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.enrollmentTokens;
      var arg_request = buildEnrollmentToken();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.EnrollmentToken.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnrollmentToken(obj as api.EnrollmentToken);

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
        var resp = convert.json.encode(buildEnrollmentToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkEnrollmentToken(response as api.EnrollmentToken);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.enrollmentTokens;
      var arg_name = 'foo';
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-EnterprisesPoliciesResource', () {
    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.policies;
      var arg_name = 'foo';
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.policies;
      var arg_name = 'foo';
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.policies;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPoliciesResponse(response as api.ListPoliciesResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.policies;
      var arg_request = buildPolicy();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Policy.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPolicy(obj as api.Policy);

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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });
  });

  unittest.group('resource-EnterprisesWebAppsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.webApps;
      var arg_request = buildWebApp();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.WebApp.fromJson(json as core.Map<core.String, core.dynamic>);
        checkWebApp(obj as api.WebApp);

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
        var resp = convert.json.encode(buildWebApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkWebApp(response as api.WebApp);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.webApps;
      var arg_name = 'foo';
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.webApps;
      var arg_name = 'foo';
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildWebApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWebApp(response as api.WebApp);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.webApps;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListWebAppsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListWebAppsResponse(response as api.ListWebAppsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.webApps;
      var arg_request = buildWebApp();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.WebApp.fromJson(json as core.Map<core.String, core.dynamic>);
        checkWebApp(obj as api.WebApp);

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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildWebApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkWebApp(response as api.WebApp);
    });
  });

  unittest.group('resource-EnterprisesWebTokensResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).enterprises.webTokens;
      var arg_request = buildWebToken();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.WebToken.fromJson(json as core.Map<core.String, core.dynamic>);
        checkWebToken(obj as api.WebToken);

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
        var resp = convert.json.encode(buildWebToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkWebToken(response as api.WebToken);
    });
  });

  unittest.group('resource-SignupUrlsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.AndroidManagementApi(mock).signupUrls;
      var arg_callbackUrl = 'foo';
      var arg_projectId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("v1/signupUrls"),
        );
        pathOffset += 13;

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
          queryMap["callbackUrl"]!.first,
          unittest.equals(arg_callbackUrl),
        );
        unittest.expect(
          queryMap["projectId"]!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSignupUrl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          callbackUrl: arg_callbackUrl,
          projectId: arg_projectId,
          $fields: arg_$fields);
      checkSignupUrl(response as api.SignupUrl);
    });
  });
}
