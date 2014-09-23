library googleapis.gamesManagement.v1management.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis/common/common.dart' as common;
import 'package:googleapis/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis/gamesmanagement/v1management.dart' as api;



buildUnnamed456() {
  var o = new core.List<api.AchievementResetResponse>();
  o.add(buildAchievementResetResponse());
  o.add(buildAchievementResetResponse());
  return o;
}

checkUnnamed456(core.List<api.AchievementResetResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAchievementResetResponse(o[0]);
  checkAchievementResetResponse(o[1]);
}

core.int buildCounterAchievementResetAllResponse = 0;
buildAchievementResetAllResponse() {
  var o = new api.AchievementResetAllResponse();
  buildCounterAchievementResetAllResponse++;
  if (buildCounterAchievementResetAllResponse < 3) {
    o.kind = "foo";
    o.results = buildUnnamed456();
  }
  buildCounterAchievementResetAllResponse--;
  return o;
}

checkAchievementResetAllResponse(api.AchievementResetAllResponse o) {
  buildCounterAchievementResetAllResponse++;
  if (buildCounterAchievementResetAllResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed456(o.results);
  }
  buildCounterAchievementResetAllResponse--;
}

core.int buildCounterAchievementResetResponse = 0;
buildAchievementResetResponse() {
  var o = new api.AchievementResetResponse();
  buildCounterAchievementResetResponse++;
  if (buildCounterAchievementResetResponse < 3) {
    o.currentState = "foo";
    o.definitionId = "foo";
    o.kind = "foo";
    o.updateOccurred = true;
  }
  buildCounterAchievementResetResponse--;
  return o;
}

checkAchievementResetResponse(api.AchievementResetResponse o) {
  buildCounterAchievementResetResponse++;
  if (buildCounterAchievementResetResponse < 3) {
    unittest.expect(o.currentState, unittest.equals('foo'));
    unittest.expect(o.definitionId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.updateOccurred, unittest.isTrue);
  }
  buildCounterAchievementResetResponse--;
}

core.int buildCounterGamesPlayedResource = 0;
buildGamesPlayedResource() {
  var o = new api.GamesPlayedResource();
  buildCounterGamesPlayedResource++;
  if (buildCounterGamesPlayedResource < 3) {
    o.autoMatched = true;
    o.timeMillis = "foo";
  }
  buildCounterGamesPlayedResource--;
  return o;
}

checkGamesPlayedResource(api.GamesPlayedResource o) {
  buildCounterGamesPlayedResource++;
  if (buildCounterGamesPlayedResource < 3) {
    unittest.expect(o.autoMatched, unittest.isTrue);
    unittest.expect(o.timeMillis, unittest.equals('foo'));
  }
  buildCounterGamesPlayedResource--;
}

core.int buildCounterGamesPlayerExperienceInfoResource = 0;
buildGamesPlayerExperienceInfoResource() {
  var o = new api.GamesPlayerExperienceInfoResource();
  buildCounterGamesPlayerExperienceInfoResource++;
  if (buildCounterGamesPlayerExperienceInfoResource < 3) {
    o.currentExperiencePoints = "foo";
    o.currentLevel = buildGamesPlayerLevelResource();
    o.lastLevelUpTimestampMillis = "foo";
    o.nextLevel = buildGamesPlayerLevelResource();
  }
  buildCounterGamesPlayerExperienceInfoResource--;
  return o;
}

checkGamesPlayerExperienceInfoResource(api.GamesPlayerExperienceInfoResource o) {
  buildCounterGamesPlayerExperienceInfoResource++;
  if (buildCounterGamesPlayerExperienceInfoResource < 3) {
    unittest.expect(o.currentExperiencePoints, unittest.equals('foo'));
    checkGamesPlayerLevelResource(o.currentLevel);
    unittest.expect(o.lastLevelUpTimestampMillis, unittest.equals('foo'));
    checkGamesPlayerLevelResource(o.nextLevel);
  }
  buildCounterGamesPlayerExperienceInfoResource--;
}

core.int buildCounterGamesPlayerLevelResource = 0;
buildGamesPlayerLevelResource() {
  var o = new api.GamesPlayerLevelResource();
  buildCounterGamesPlayerLevelResource++;
  if (buildCounterGamesPlayerLevelResource < 3) {
    o.level = 42;
    o.maxExperiencePoints = "foo";
    o.minExperiencePoints = "foo";
  }
  buildCounterGamesPlayerLevelResource--;
  return o;
}

checkGamesPlayerLevelResource(api.GamesPlayerLevelResource o) {
  buildCounterGamesPlayerLevelResource++;
  if (buildCounterGamesPlayerLevelResource < 3) {
    unittest.expect(o.level, unittest.equals(42));
    unittest.expect(o.maxExperiencePoints, unittest.equals('foo'));
    unittest.expect(o.minExperiencePoints, unittest.equals('foo'));
  }
  buildCounterGamesPlayerLevelResource--;
}

core.int buildCounterHiddenPlayer = 0;
buildHiddenPlayer() {
  var o = new api.HiddenPlayer();
  buildCounterHiddenPlayer++;
  if (buildCounterHiddenPlayer < 3) {
    o.hiddenTimeMillis = "foo";
    o.kind = "foo";
    o.player = buildPlayer();
  }
  buildCounterHiddenPlayer--;
  return o;
}

checkHiddenPlayer(api.HiddenPlayer o) {
  buildCounterHiddenPlayer++;
  if (buildCounterHiddenPlayer < 3) {
    unittest.expect(o.hiddenTimeMillis, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPlayer(o.player);
  }
  buildCounterHiddenPlayer--;
}

buildUnnamed457() {
  var o = new core.List<api.HiddenPlayer>();
  o.add(buildHiddenPlayer());
  o.add(buildHiddenPlayer());
  return o;
}

checkUnnamed457(core.List<api.HiddenPlayer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHiddenPlayer(o[0]);
  checkHiddenPlayer(o[1]);
}

core.int buildCounterHiddenPlayerList = 0;
buildHiddenPlayerList() {
  var o = new api.HiddenPlayerList();
  buildCounterHiddenPlayerList++;
  if (buildCounterHiddenPlayerList < 3) {
    o.items = buildUnnamed457();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterHiddenPlayerList--;
  return o;
}

checkHiddenPlayerList(api.HiddenPlayerList o) {
  buildCounterHiddenPlayerList++;
  if (buildCounterHiddenPlayerList < 3) {
    checkUnnamed457(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterHiddenPlayerList--;
}

core.int buildCounterPlayerName = 0;
buildPlayerName() {
  var o = new api.PlayerName();
  buildCounterPlayerName++;
  if (buildCounterPlayerName < 3) {
    o.familyName = "foo";
    o.givenName = "foo";
  }
  buildCounterPlayerName--;
  return o;
}

checkPlayerName(api.PlayerName o) {
  buildCounterPlayerName++;
  if (buildCounterPlayerName < 3) {
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
  }
  buildCounterPlayerName--;
}

core.int buildCounterPlayer = 0;
buildPlayer() {
  var o = new api.Player();
  buildCounterPlayer++;
  if (buildCounterPlayer < 3) {
    o.avatarImageUrl = "foo";
    o.displayName = "foo";
    o.experienceInfo = buildGamesPlayerExperienceInfoResource();
    o.kind = "foo";
    o.lastPlayedWith = buildGamesPlayedResource();
    o.name = buildPlayerName();
    o.playerId = "foo";
    o.title = "foo";
  }
  buildCounterPlayer--;
  return o;
}

checkPlayer(api.Player o) {
  buildCounterPlayer++;
  if (buildCounterPlayer < 3) {
    unittest.expect(o.avatarImageUrl, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkGamesPlayerExperienceInfoResource(o.experienceInfo);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkGamesPlayedResource(o.lastPlayedWith);
    checkPlayerName(o.name);
    unittest.expect(o.playerId, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterPlayer--;
}

buildUnnamed458() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed458(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPlayerScoreResetResponse = 0;
buildPlayerScoreResetResponse() {
  var o = new api.PlayerScoreResetResponse();
  buildCounterPlayerScoreResetResponse++;
  if (buildCounterPlayerScoreResetResponse < 3) {
    o.kind = "foo";
    o.resetScoreTimeSpans = buildUnnamed458();
  }
  buildCounterPlayerScoreResetResponse--;
  return o;
}

checkPlayerScoreResetResponse(api.PlayerScoreResetResponse o) {
  buildCounterPlayerScoreResetResponse++;
  if (buildCounterPlayerScoreResetResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed458(o.resetScoreTimeSpans);
  }
  buildCounterPlayerScoreResetResponse--;
}


main() {
  unittest.group("obj-schema-AchievementResetAllResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementResetAllResponse();
      var od = new api.AchievementResetAllResponse.fromJson(o.toJson());
      checkAchievementResetAllResponse(od);
    });
  });


  unittest.group("obj-schema-AchievementResetResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAchievementResetResponse();
      var od = new api.AchievementResetResponse.fromJson(o.toJson());
      checkAchievementResetResponse(od);
    });
  });


  unittest.group("obj-schema-GamesPlayedResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGamesPlayedResource();
      var od = new api.GamesPlayedResource.fromJson(o.toJson());
      checkGamesPlayedResource(od);
    });
  });


  unittest.group("obj-schema-GamesPlayerExperienceInfoResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGamesPlayerExperienceInfoResource();
      var od = new api.GamesPlayerExperienceInfoResource.fromJson(o.toJson());
      checkGamesPlayerExperienceInfoResource(od);
    });
  });


  unittest.group("obj-schema-GamesPlayerLevelResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildGamesPlayerLevelResource();
      var od = new api.GamesPlayerLevelResource.fromJson(o.toJson());
      checkGamesPlayerLevelResource(od);
    });
  });


  unittest.group("obj-schema-HiddenPlayer", () {
    unittest.test("to-json--from-json", () {
      var o = buildHiddenPlayer();
      var od = new api.HiddenPlayer.fromJson(o.toJson());
      checkHiddenPlayer(od);
    });
  });


  unittest.group("obj-schema-HiddenPlayerList", () {
    unittest.test("to-json--from-json", () {
      var o = buildHiddenPlayerList();
      var od = new api.HiddenPlayerList.fromJson(o.toJson());
      checkHiddenPlayerList(od);
    });
  });


  unittest.group("obj-schema-PlayerName", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerName();
      var od = new api.PlayerName.fromJson(o.toJson());
      checkPlayerName(od);
    });
  });


  unittest.group("obj-schema-Player", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayer();
      var od = new api.Player.fromJson(o.toJson());
      checkPlayer(od);
    });
  });


  unittest.group("obj-schema-PlayerScoreResetResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlayerScoreResetResponse();
      var od = new api.PlayerScoreResetResponse.fromJson(o.toJson());
      checkPlayerScoreResetResponse(od);
    });
  });


  unittest.group("resource-AchievementsResourceApi", () {
    unittest.test("method--reset", () {

      var mock = new common_test.HttpServerMock();
      api.AchievementsResourceApi res = new api.GamesManagementApi(mock).achievements;
      var arg_achievementId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("games/v1management/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("achievements/"));
        pathOffset += 13;
        index = path.indexOf("/reset", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_achievementId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/reset"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAchievementResetResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.reset(arg_achievementId).then(unittest.expectAsync(((api.AchievementResetResponse response) {
        checkAchievementResetResponse(response);
      })));
    });

    unittest.test("method--resetAll", () {

      var mock = new common_test.HttpServerMock();
      api.AchievementsResourceApi res = new api.GamesManagementApi(mock).achievements;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("games/v1management/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("achievements/reset"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAchievementResetAllResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.resetAll().then(unittest.expectAsync(((api.AchievementResetAllResponse response) {
        checkAchievementResetAllResponse(response);
      })));
    });

    unittest.test("method--resetForAllPlayers", () {

      var mock = new common_test.HttpServerMock();
      api.AchievementsResourceApi res = new api.GamesManagementApi(mock).achievements;
      var arg_achievementId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("games/v1management/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("achievements/"));
        pathOffset += 13;
        index = path.indexOf("/resetForAllPlayers", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_achievementId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("/resetForAllPlayers"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.resetForAllPlayers(arg_achievementId).then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-ApplicationsResourceApi", () {
    unittest.test("method--listHidden", () {

      var mock = new common_test.HttpServerMock();
      api.ApplicationsResourceApi res = new api.GamesManagementApi(mock).applications;
      var arg_applicationId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("games/v1management/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("applications/"));
        pathOffset += 13;
        index = path.indexOf("/players/hidden", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_applicationId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/players/hidden"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildHiddenPlayerList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.listHidden(arg_applicationId, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.HiddenPlayerList response) {
        checkHiddenPlayerList(response);
      })));
    });

  });


  unittest.group("resource-EventsResourceApi", () {
    unittest.test("method--reset", () {

      var mock = new common_test.HttpServerMock();
      api.EventsResourceApi res = new api.GamesManagementApi(mock).events;
      var arg_eventId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("games/v1management/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("events/"));
        pathOffset += 7;
        index = path.indexOf("/reset", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_eventId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/reset"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.reset(arg_eventId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--resetAll", () {

      var mock = new common_test.HttpServerMock();
      api.EventsResourceApi res = new api.GamesManagementApi(mock).events;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("games/v1management/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("events/reset"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.resetAll().then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--resetForAllPlayers", () {

      var mock = new common_test.HttpServerMock();
      api.EventsResourceApi res = new api.GamesManagementApi(mock).events;
      var arg_eventId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("games/v1management/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("events/"));
        pathOffset += 7;
        index = path.indexOf("/resetForAllPlayers", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_eventId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("/resetForAllPlayers"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.resetForAllPlayers(arg_eventId).then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-PlayersResourceApi", () {
    unittest.test("method--hide", () {

      var mock = new common_test.HttpServerMock();
      api.PlayersResourceApi res = new api.GamesManagementApi(mock).players;
      var arg_applicationId = "foo";
      var arg_playerId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("games/v1management/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("applications/"));
        pathOffset += 13;
        index = path.indexOf("/players/hidden/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_applicationId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("/players/hidden/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_playerId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.hide(arg_applicationId, arg_playerId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--unhide", () {

      var mock = new common_test.HttpServerMock();
      api.PlayersResourceApi res = new api.GamesManagementApi(mock).players;
      var arg_applicationId = "foo";
      var arg_playerId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("games/v1management/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("applications/"));
        pathOffset += 13;
        index = path.indexOf("/players/hidden/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_applicationId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("/players/hidden/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_playerId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.unhide(arg_applicationId, arg_playerId).then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-QuestsResourceApi", () {
    unittest.test("method--reset", () {

      var mock = new common_test.HttpServerMock();
      api.QuestsResourceApi res = new api.GamesManagementApi(mock).quests;
      var arg_questId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("games/v1management/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("quests/"));
        pathOffset += 7;
        index = path.indexOf("/reset", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_questId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/reset"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.reset(arg_questId).then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-RoomsResourceApi", () {
    unittest.test("method--reset", () {

      var mock = new common_test.HttpServerMock();
      api.RoomsResourceApi res = new api.GamesManagementApi(mock).rooms;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("games/v1management/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("rooms/reset"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.reset().then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-ScoresResourceApi", () {
    unittest.test("method--reset", () {

      var mock = new common_test.HttpServerMock();
      api.ScoresResourceApi res = new api.GamesManagementApi(mock).scores;
      var arg_leaderboardId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("games/v1management/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("leaderboards/"));
        pathOffset += 13;
        index = path.indexOf("/scores/reset", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_leaderboardId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/scores/reset"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPlayerScoreResetResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.reset(arg_leaderboardId).then(unittest.expectAsync(((api.PlayerScoreResetResponse response) {
        checkPlayerScoreResetResponse(response);
      })));
    });

    unittest.test("method--resetForAllPlayers", () {

      var mock = new common_test.HttpServerMock();
      api.ScoresResourceApi res = new api.GamesManagementApi(mock).scores;
      var arg_leaderboardId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("games/v1management/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("leaderboards/"));
        pathOffset += 13;
        index = path.indexOf("/scores/resetForAllPlayers", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_leaderboardId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 26), unittest.equals("/scores/resetForAllPlayers"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.resetForAllPlayers(arg_leaderboardId).then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-TurnBasedMatchesResourceApi", () {
    unittest.test("method--reset", () {

      var mock = new common_test.HttpServerMock();
      api.TurnBasedMatchesResourceApi res = new api.GamesManagementApi(mock).turnBasedMatches;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("games/v1management/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 22), unittest.equals("turnbasedmatches/reset"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.reset().then(unittest.expectAsync((_) {}));
    });

  });


}

