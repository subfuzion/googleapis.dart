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

import 'package:googleapis_beta/transcoder/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAdBreak = 0;
api.AdBreak buildAdBreak() {
  var o = api.AdBreak();
  buildCounterAdBreak++;
  if (buildCounterAdBreak < 3) {
    o.startTimeOffset = 'foo';
  }
  buildCounterAdBreak--;
  return o;
}

void checkAdBreak(api.AdBreak o) {
  buildCounterAdBreak++;
  if (buildCounterAdBreak < 3) {
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdBreak--;
}

core.int buildCounterAes128Encryption = 0;
api.Aes128Encryption buildAes128Encryption() {
  var o = api.Aes128Encryption();
  buildCounterAes128Encryption++;
  if (buildCounterAes128Encryption < 3) {
    o.keyUri = 'foo';
  }
  buildCounterAes128Encryption--;
  return o;
}

void checkAes128Encryption(api.Aes128Encryption o) {
  buildCounterAes128Encryption++;
  if (buildCounterAes128Encryption < 3) {
    unittest.expect(
      o.keyUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAes128Encryption--;
}

core.int buildCounterAnimation = 0;
api.Animation buildAnimation() {
  var o = api.Animation();
  buildCounterAnimation++;
  if (buildCounterAnimation < 3) {
    o.animationEnd = buildAnimationEnd();
    o.animationFade = buildAnimationFade();
    o.animationStatic = buildAnimationStatic();
  }
  buildCounterAnimation--;
  return o;
}

void checkAnimation(api.Animation o) {
  buildCounterAnimation++;
  if (buildCounterAnimation < 3) {
    checkAnimationEnd(o.animationEnd! as api.AnimationEnd);
    checkAnimationFade(o.animationFade! as api.AnimationFade);
    checkAnimationStatic(o.animationStatic! as api.AnimationStatic);
  }
  buildCounterAnimation--;
}

core.int buildCounterAnimationEnd = 0;
api.AnimationEnd buildAnimationEnd() {
  var o = api.AnimationEnd();
  buildCounterAnimationEnd++;
  if (buildCounterAnimationEnd < 3) {
    o.startTimeOffset = 'foo';
  }
  buildCounterAnimationEnd--;
  return o;
}

void checkAnimationEnd(api.AnimationEnd o) {
  buildCounterAnimationEnd++;
  if (buildCounterAnimationEnd < 3) {
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnimationEnd--;
}

core.int buildCounterAnimationFade = 0;
api.AnimationFade buildAnimationFade() {
  var o = api.AnimationFade();
  buildCounterAnimationFade++;
  if (buildCounterAnimationFade < 3) {
    o.endTimeOffset = 'foo';
    o.fadeType = 'foo';
    o.startTimeOffset = 'foo';
    o.xy = buildNormalizedCoordinate();
  }
  buildCounterAnimationFade--;
  return o;
}

void checkAnimationFade(api.AnimationFade o) {
  buildCounterAnimationFade++;
  if (buildCounterAnimationFade < 3) {
    unittest.expect(
      o.endTimeOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fadeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
    checkNormalizedCoordinate(o.xy! as api.NormalizedCoordinate);
  }
  buildCounterAnimationFade--;
}

core.int buildCounterAnimationStatic = 0;
api.AnimationStatic buildAnimationStatic() {
  var o = api.AnimationStatic();
  buildCounterAnimationStatic++;
  if (buildCounterAnimationStatic < 3) {
    o.startTimeOffset = 'foo';
    o.xy = buildNormalizedCoordinate();
  }
  buildCounterAnimationStatic--;
  return o;
}

void checkAnimationStatic(api.AnimationStatic o) {
  buildCounterAnimationStatic++;
  if (buildCounterAnimationStatic < 3) {
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
    checkNormalizedCoordinate(o.xy! as api.NormalizedCoordinate);
  }
  buildCounterAnimationStatic--;
}

core.int buildCounterAudio = 0;
api.Audio buildAudio() {
  var o = api.Audio();
  buildCounterAudio++;
  if (buildCounterAudio < 3) {
    o.highBoost = true;
    o.lowBoost = true;
    o.lufs = 42.0;
  }
  buildCounterAudio--;
  return o;
}

void checkAudio(api.Audio o) {
  buildCounterAudio++;
  if (buildCounterAudio < 3) {
    unittest.expect(o.highBoost!, unittest.isTrue);
    unittest.expect(o.lowBoost!, unittest.isTrue);
    unittest.expect(
      o.lufs!,
      unittest.equals(42.0),
    );
  }
  buildCounterAudio--;
}

core.List<api.AudioChannel> buildUnnamed8447() {
  var o = <api.AudioChannel>[];
  o.add(buildAudioChannel());
  o.add(buildAudioChannel());
  return o;
}

void checkUnnamed8447(core.List<api.AudioChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAudioChannel(o[0] as api.AudioChannel);
  checkAudioChannel(o[1] as api.AudioChannel);
}

core.int buildCounterAudioAtom = 0;
api.AudioAtom buildAudioAtom() {
  var o = api.AudioAtom();
  buildCounterAudioAtom++;
  if (buildCounterAudioAtom < 3) {
    o.channels = buildUnnamed8447();
    o.key = 'foo';
  }
  buildCounterAudioAtom--;
  return o;
}

void checkAudioAtom(api.AudioAtom o) {
  buildCounterAudioAtom++;
  if (buildCounterAudioAtom < 3) {
    checkUnnamed8447(o.channels!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterAudioAtom--;
}

core.List<api.AudioChannelInput> buildUnnamed8448() {
  var o = <api.AudioChannelInput>[];
  o.add(buildAudioChannelInput());
  o.add(buildAudioChannelInput());
  return o;
}

void checkUnnamed8448(core.List<api.AudioChannelInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAudioChannelInput(o[0] as api.AudioChannelInput);
  checkAudioChannelInput(o[1] as api.AudioChannelInput);
}

core.int buildCounterAudioChannel = 0;
api.AudioChannel buildAudioChannel() {
  var o = api.AudioChannel();
  buildCounterAudioChannel++;
  if (buildCounterAudioChannel < 3) {
    o.inputs = buildUnnamed8448();
  }
  buildCounterAudioChannel--;
  return o;
}

void checkAudioChannel(api.AudioChannel o) {
  buildCounterAudioChannel++;
  if (buildCounterAudioChannel < 3) {
    checkUnnamed8448(o.inputs!);
  }
  buildCounterAudioChannel--;
}

core.int buildCounterAudioChannelInput = 0;
api.AudioChannelInput buildAudioChannelInput() {
  var o = api.AudioChannelInput();
  buildCounterAudioChannelInput++;
  if (buildCounterAudioChannelInput < 3) {
    o.channel = 42;
    o.gainDb = 42.0;
    o.key = 'foo';
    o.track = 42;
  }
  buildCounterAudioChannelInput--;
  return o;
}

void checkAudioChannelInput(api.AudioChannelInput o) {
  buildCounterAudioChannelInput++;
  if (buildCounterAudioChannelInput < 3) {
    unittest.expect(
      o.channel!,
      unittest.equals(42),
    );
    unittest.expect(
      o.gainDb!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.track!,
      unittest.equals(42),
    );
  }
  buildCounterAudioChannelInput--;
}

core.List<core.String> buildUnnamed8449() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8449(core.List<core.String> o) {
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

core.List<api.AudioAtom> buildUnnamed8450() {
  var o = <api.AudioAtom>[];
  o.add(buildAudioAtom());
  o.add(buildAudioAtom());
  return o;
}

void checkUnnamed8450(core.List<api.AudioAtom> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAudioAtom(o[0] as api.AudioAtom);
  checkAudioAtom(o[1] as api.AudioAtom);
}

core.int buildCounterAudioStream = 0;
api.AudioStream buildAudioStream() {
  var o = api.AudioStream();
  buildCounterAudioStream++;
  if (buildCounterAudioStream < 3) {
    o.bitrateBps = 42;
    o.channelCount = 42;
    o.channelLayout = buildUnnamed8449();
    o.codec = 'foo';
    o.mapping = buildUnnamed8450();
    o.sampleRateHertz = 42;
  }
  buildCounterAudioStream--;
  return o;
}

void checkAudioStream(api.AudioStream o) {
  buildCounterAudioStream++;
  if (buildCounterAudioStream < 3) {
    unittest.expect(
      o.bitrateBps!,
      unittest.equals(42),
    );
    unittest.expect(
      o.channelCount!,
      unittest.equals(42),
    );
    checkUnnamed8449(o.channelLayout!);
    unittest.expect(
      o.codec!,
      unittest.equals('foo'),
    );
    checkUnnamed8450(o.mapping!);
    unittest.expect(
      o.sampleRateHertz!,
      unittest.equals(42),
    );
  }
  buildCounterAudioStream--;
}

core.int buildCounterColor = 0;
api.Color buildColor() {
  var o = api.Color();
  buildCounterColor++;
  if (buildCounterColor < 3) {
    o.brightness = 42.0;
    o.contrast = 42.0;
    o.saturation = 42.0;
  }
  buildCounterColor--;
  return o;
}

void checkColor(api.Color o) {
  buildCounterColor++;
  if (buildCounterColor < 3) {
    unittest.expect(
      o.brightness!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.contrast!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.saturation!,
      unittest.equals(42.0),
    );
  }
  buildCounterColor--;
}

core.int buildCounterCrop = 0;
api.Crop buildCrop() {
  var o = api.Crop();
  buildCounterCrop++;
  if (buildCounterCrop < 3) {
    o.bottomPixels = 42;
    o.leftPixels = 42;
    o.rightPixels = 42;
    o.topPixels = 42;
  }
  buildCounterCrop--;
  return o;
}

void checkCrop(api.Crop o) {
  buildCounterCrop++;
  if (buildCounterCrop < 3) {
    unittest.expect(
      o.bottomPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.leftPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rightPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.topPixels!,
      unittest.equals(42),
    );
  }
  buildCounterCrop--;
}

core.int buildCounterDeblock = 0;
api.Deblock buildDeblock() {
  var o = api.Deblock();
  buildCounterDeblock++;
  if (buildCounterDeblock < 3) {
    o.enabled = true;
    o.strength = 42.0;
  }
  buildCounterDeblock--;
  return o;
}

void checkDeblock(api.Deblock o) {
  buildCounterDeblock++;
  if (buildCounterDeblock < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.strength!,
      unittest.equals(42.0),
    );
  }
  buildCounterDeblock--;
}

core.int buildCounterDenoise = 0;
api.Denoise buildDenoise() {
  var o = api.Denoise();
  buildCounterDenoise++;
  if (buildCounterDenoise < 3) {
    o.strength = 42.0;
    o.tune = 'foo';
  }
  buildCounterDenoise--;
  return o;
}

void checkDenoise(api.Denoise o) {
  buildCounterDenoise++;
  if (buildCounterDenoise < 3) {
    unittest.expect(
      o.strength!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.tune!,
      unittest.equals('foo'),
    );
  }
  buildCounterDenoise--;
}

core.List<core.String> buildUnnamed8451() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8451(core.List<core.String> o) {
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

core.int buildCounterEditAtom = 0;
api.EditAtom buildEditAtom() {
  var o = api.EditAtom();
  buildCounterEditAtom++;
  if (buildCounterEditAtom < 3) {
    o.endTimeOffset = 'foo';
    o.inputs = buildUnnamed8451();
    o.key = 'foo';
    o.startTimeOffset = 'foo';
  }
  buildCounterEditAtom--;
  return o;
}

void checkEditAtom(api.EditAtom o) {
  buildCounterEditAtom++;
  if (buildCounterEditAtom < 3) {
    unittest.expect(
      o.endTimeOffset!,
      unittest.equals('foo'),
    );
    checkUnnamed8451(o.inputs!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterEditAtom--;
}

core.int buildCounterElementaryStream = 0;
api.ElementaryStream buildElementaryStream() {
  var o = api.ElementaryStream();
  buildCounterElementaryStream++;
  if (buildCounterElementaryStream < 3) {
    o.audioStream = buildAudioStream();
    o.key = 'foo';
    o.textStream = buildTextStream();
    o.videoStream = buildVideoStream();
  }
  buildCounterElementaryStream--;
  return o;
}

void checkElementaryStream(api.ElementaryStream o) {
  buildCounterElementaryStream++;
  if (buildCounterElementaryStream < 3) {
    checkAudioStream(o.audioStream! as api.AudioStream);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkTextStream(o.textStream! as api.TextStream);
    checkVideoStream(o.videoStream! as api.VideoStream);
  }
  buildCounterElementaryStream--;
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

core.int buildCounterEncryption = 0;
api.Encryption buildEncryption() {
  var o = api.Encryption();
  buildCounterEncryption++;
  if (buildCounterEncryption < 3) {
    o.aes128 = buildAes128Encryption();
    o.iv = 'foo';
    o.key = 'foo';
    o.mpegCenc = buildMpegCommonEncryption();
    o.sampleAes = buildSampleAesEncryption();
  }
  buildCounterEncryption--;
  return o;
}

void checkEncryption(api.Encryption o) {
  buildCounterEncryption++;
  if (buildCounterEncryption < 3) {
    checkAes128Encryption(o.aes128! as api.Aes128Encryption);
    unittest.expect(
      o.iv!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkMpegCommonEncryption(o.mpegCenc! as api.MpegCommonEncryption);
    checkSampleAesEncryption(o.sampleAes! as api.SampleAesEncryption);
  }
  buildCounterEncryption--;
}

core.int buildCounterFailureDetail = 0;
api.FailureDetail buildFailureDetail() {
  var o = api.FailureDetail();
  buildCounterFailureDetail++;
  if (buildCounterFailureDetail < 3) {
    o.description = 'foo';
  }
  buildCounterFailureDetail--;
  return o;
}

void checkFailureDetail(api.FailureDetail o) {
  buildCounterFailureDetail++;
  if (buildCounterFailureDetail < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
  }
  buildCounterFailureDetail--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  var o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.alpha = 42.0;
    o.resolution = buildNormalizedCoordinate();
    o.uri = 'foo';
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(
      o.alpha!,
      unittest.equals(42.0),
    );
    checkNormalizedCoordinate(o.resolution! as api.NormalizedCoordinate);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterImage--;
}

core.int buildCounterInput = 0;
api.Input buildInput() {
  var o = api.Input();
  buildCounterInput++;
  if (buildCounterInput < 3) {
    o.key = 'foo';
    o.preprocessingConfig = buildPreprocessingConfig();
    o.uri = 'foo';
  }
  buildCounterInput--;
  return o;
}

void checkInput(api.Input o) {
  buildCounterInput++;
  if (buildCounterInput < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkPreprocessingConfig(o.preprocessingConfig! as api.PreprocessingConfig);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterInput--;
}

core.List<api.FailureDetail> buildUnnamed8452() {
  var o = <api.FailureDetail>[];
  o.add(buildFailureDetail());
  o.add(buildFailureDetail());
  return o;
}

void checkUnnamed8452(core.List<api.FailureDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFailureDetail(o[0] as api.FailureDetail);
  checkFailureDetail(o[1] as api.FailureDetail);
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  var o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.config = buildJobConfig();
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.failureDetails = buildUnnamed8452();
    o.failureReason = 'foo';
    o.inputUri = 'foo';
    o.name = 'foo';
    o.originUri = buildOriginUri();
    o.outputUri = 'foo';
    o.priority = 42;
    o.progress = buildProgress();
    o.startTime = 'foo';
    o.state = 'foo';
    o.templateId = 'foo';
    o.ttlAfterCompletionDays = 42;
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkJobConfig(o.config! as api.JobConfig);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkUnnamed8452(o.failureDetails!);
    unittest.expect(
      o.failureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOriginUri(o.originUri! as api.OriginUri);
    unittest.expect(
      o.outputUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priority!,
      unittest.equals(42),
    );
    checkProgress(o.progress! as api.Progress);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.templateId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttlAfterCompletionDays!,
      unittest.equals(42),
    );
  }
  buildCounterJob--;
}

core.List<api.AdBreak> buildUnnamed8453() {
  var o = <api.AdBreak>[];
  o.add(buildAdBreak());
  o.add(buildAdBreak());
  return o;
}

void checkUnnamed8453(core.List<api.AdBreak> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdBreak(o[0] as api.AdBreak);
  checkAdBreak(o[1] as api.AdBreak);
}

core.List<api.EditAtom> buildUnnamed8454() {
  var o = <api.EditAtom>[];
  o.add(buildEditAtom());
  o.add(buildEditAtom());
  return o;
}

void checkUnnamed8454(core.List<api.EditAtom> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEditAtom(o[0] as api.EditAtom);
  checkEditAtom(o[1] as api.EditAtom);
}

core.List<api.ElementaryStream> buildUnnamed8455() {
  var o = <api.ElementaryStream>[];
  o.add(buildElementaryStream());
  o.add(buildElementaryStream());
  return o;
}

void checkUnnamed8455(core.List<api.ElementaryStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElementaryStream(o[0] as api.ElementaryStream);
  checkElementaryStream(o[1] as api.ElementaryStream);
}

core.List<api.Input> buildUnnamed8456() {
  var o = <api.Input>[];
  o.add(buildInput());
  o.add(buildInput());
  return o;
}

void checkUnnamed8456(core.List<api.Input> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInput(o[0] as api.Input);
  checkInput(o[1] as api.Input);
}

core.List<api.Manifest> buildUnnamed8457() {
  var o = <api.Manifest>[];
  o.add(buildManifest());
  o.add(buildManifest());
  return o;
}

void checkUnnamed8457(core.List<api.Manifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManifest(o[0] as api.Manifest);
  checkManifest(o[1] as api.Manifest);
}

core.List<api.MuxStream> buildUnnamed8458() {
  var o = <api.MuxStream>[];
  o.add(buildMuxStream());
  o.add(buildMuxStream());
  return o;
}

void checkUnnamed8458(core.List<api.MuxStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMuxStream(o[0] as api.MuxStream);
  checkMuxStream(o[1] as api.MuxStream);
}

core.List<api.Overlay> buildUnnamed8459() {
  var o = <api.Overlay>[];
  o.add(buildOverlay());
  o.add(buildOverlay());
  return o;
}

void checkUnnamed8459(core.List<api.Overlay> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOverlay(o[0] as api.Overlay);
  checkOverlay(o[1] as api.Overlay);
}

core.List<api.SpriteSheet> buildUnnamed8460() {
  var o = <api.SpriteSheet>[];
  o.add(buildSpriteSheet());
  o.add(buildSpriteSheet());
  return o;
}

void checkUnnamed8460(core.List<api.SpriteSheet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpriteSheet(o[0] as api.SpriteSheet);
  checkSpriteSheet(o[1] as api.SpriteSheet);
}

core.int buildCounterJobConfig = 0;
api.JobConfig buildJobConfig() {
  var o = api.JobConfig();
  buildCounterJobConfig++;
  if (buildCounterJobConfig < 3) {
    o.adBreaks = buildUnnamed8453();
    o.editList = buildUnnamed8454();
    o.elementaryStreams = buildUnnamed8455();
    o.inputs = buildUnnamed8456();
    o.manifests = buildUnnamed8457();
    o.muxStreams = buildUnnamed8458();
    o.output = buildOutput();
    o.overlays = buildUnnamed8459();
    o.pubsubDestination = buildPubsubDestination();
    o.spriteSheets = buildUnnamed8460();
  }
  buildCounterJobConfig--;
  return o;
}

void checkJobConfig(api.JobConfig o) {
  buildCounterJobConfig++;
  if (buildCounterJobConfig < 3) {
    checkUnnamed8453(o.adBreaks!);
    checkUnnamed8454(o.editList!);
    checkUnnamed8455(o.elementaryStreams!);
    checkUnnamed8456(o.inputs!);
    checkUnnamed8457(o.manifests!);
    checkUnnamed8458(o.muxStreams!);
    checkOutput(o.output! as api.Output);
    checkUnnamed8459(o.overlays!);
    checkPubsubDestination(o.pubsubDestination! as api.PubsubDestination);
    checkUnnamed8460(o.spriteSheets!);
  }
  buildCounterJobConfig--;
}

core.int buildCounterJobTemplate = 0;
api.JobTemplate buildJobTemplate() {
  var o = api.JobTemplate();
  buildCounterJobTemplate++;
  if (buildCounterJobTemplate < 3) {
    o.config = buildJobConfig();
    o.name = 'foo';
  }
  buildCounterJobTemplate--;
  return o;
}

void checkJobTemplate(api.JobTemplate o) {
  buildCounterJobTemplate++;
  if (buildCounterJobTemplate < 3) {
    checkJobConfig(o.config! as api.JobConfig);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobTemplate--;
}

core.List<api.JobTemplate> buildUnnamed8461() {
  var o = <api.JobTemplate>[];
  o.add(buildJobTemplate());
  o.add(buildJobTemplate());
  return o;
}

void checkUnnamed8461(core.List<api.JobTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobTemplate(o[0] as api.JobTemplate);
  checkJobTemplate(o[1] as api.JobTemplate);
}

core.int buildCounterListJobTemplatesResponse = 0;
api.ListJobTemplatesResponse buildListJobTemplatesResponse() {
  var o = api.ListJobTemplatesResponse();
  buildCounterListJobTemplatesResponse++;
  if (buildCounterListJobTemplatesResponse < 3) {
    o.jobTemplates = buildUnnamed8461();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobTemplatesResponse--;
  return o;
}

void checkListJobTemplatesResponse(api.ListJobTemplatesResponse o) {
  buildCounterListJobTemplatesResponse++;
  if (buildCounterListJobTemplatesResponse < 3) {
    checkUnnamed8461(o.jobTemplates!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListJobTemplatesResponse--;
}

core.List<api.Job> buildUnnamed8462() {
  var o = <api.Job>[];
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

void checkUnnamed8462(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0] as api.Job);
  checkJob(o[1] as api.Job);
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  var o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed8462();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed8462(o.jobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListJobsResponse--;
}

core.List<core.String> buildUnnamed8463() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8463(core.List<core.String> o) {
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

core.int buildCounterManifest = 0;
api.Manifest buildManifest() {
  var o = api.Manifest();
  buildCounterManifest++;
  if (buildCounterManifest < 3) {
    o.fileName = 'foo';
    o.muxStreams = buildUnnamed8463();
    o.type = 'foo';
  }
  buildCounterManifest--;
  return o;
}

void checkManifest(api.Manifest o) {
  buildCounterManifest++;
  if (buildCounterManifest < 3) {
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    checkUnnamed8463(o.muxStreams!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterManifest--;
}

core.int buildCounterMpegCommonEncryption = 0;
api.MpegCommonEncryption buildMpegCommonEncryption() {
  var o = api.MpegCommonEncryption();
  buildCounterMpegCommonEncryption++;
  if (buildCounterMpegCommonEncryption < 3) {
    o.keyId = 'foo';
    o.scheme = 'foo';
  }
  buildCounterMpegCommonEncryption--;
  return o;
}

void checkMpegCommonEncryption(api.MpegCommonEncryption o) {
  buildCounterMpegCommonEncryption++;
  if (buildCounterMpegCommonEncryption < 3) {
    unittest.expect(
      o.keyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheme!,
      unittest.equals('foo'),
    );
  }
  buildCounterMpegCommonEncryption--;
}

core.List<core.String> buildUnnamed8464() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8464(core.List<core.String> o) {
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

core.int buildCounterMuxStream = 0;
api.MuxStream buildMuxStream() {
  var o = api.MuxStream();
  buildCounterMuxStream++;
  if (buildCounterMuxStream < 3) {
    o.container = 'foo';
    o.elementaryStreams = buildUnnamed8464();
    o.encryption = buildEncryption();
    o.fileName = 'foo';
    o.key = 'foo';
    o.segmentSettings = buildSegmentSettings();
  }
  buildCounterMuxStream--;
  return o;
}

void checkMuxStream(api.MuxStream o) {
  buildCounterMuxStream++;
  if (buildCounterMuxStream < 3) {
    unittest.expect(
      o.container!,
      unittest.equals('foo'),
    );
    checkUnnamed8464(o.elementaryStreams!);
    checkEncryption(o.encryption! as api.Encryption);
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkSegmentSettings(o.segmentSettings! as api.SegmentSettings);
  }
  buildCounterMuxStream--;
}

core.int buildCounterNormalizedCoordinate = 0;
api.NormalizedCoordinate buildNormalizedCoordinate() {
  var o = api.NormalizedCoordinate();
  buildCounterNormalizedCoordinate++;
  if (buildCounterNormalizedCoordinate < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterNormalizedCoordinate--;
  return o;
}

void checkNormalizedCoordinate(api.NormalizedCoordinate o) {
  buildCounterNormalizedCoordinate++;
  if (buildCounterNormalizedCoordinate < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterNormalizedCoordinate--;
}

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  var o = api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.apiVersion = 'foo';
    o.cancelRequested = true;
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.statusDetail = 'foo';
    o.target = 'foo';
    o.verb = 'foo';
  }
  buildCounterOperationMetadata--;
  return o;
}

void checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.cancelRequested!, unittest.isTrue);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusDetail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verb!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationMetadata--;
}

core.int buildCounterOriginUri = 0;
api.OriginUri buildOriginUri() {
  var o = api.OriginUri();
  buildCounterOriginUri++;
  if (buildCounterOriginUri < 3) {
    o.dash = 'foo';
    o.hls = 'foo';
  }
  buildCounterOriginUri--;
  return o;
}

void checkOriginUri(api.OriginUri o) {
  buildCounterOriginUri++;
  if (buildCounterOriginUri < 3) {
    unittest.expect(
      o.dash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hls!,
      unittest.equals('foo'),
    );
  }
  buildCounterOriginUri--;
}

core.int buildCounterOutput = 0;
api.Output buildOutput() {
  var o = api.Output();
  buildCounterOutput++;
  if (buildCounterOutput < 3) {
    o.uri = 'foo';
  }
  buildCounterOutput--;
  return o;
}

void checkOutput(api.Output o) {
  buildCounterOutput++;
  if (buildCounterOutput < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterOutput--;
}

core.List<api.Animation> buildUnnamed8465() {
  var o = <api.Animation>[];
  o.add(buildAnimation());
  o.add(buildAnimation());
  return o;
}

void checkUnnamed8465(core.List<api.Animation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnimation(o[0] as api.Animation);
  checkAnimation(o[1] as api.Animation);
}

core.int buildCounterOverlay = 0;
api.Overlay buildOverlay() {
  var o = api.Overlay();
  buildCounterOverlay++;
  if (buildCounterOverlay < 3) {
    o.animations = buildUnnamed8465();
    o.image = buildImage();
  }
  buildCounterOverlay--;
  return o;
}

void checkOverlay(api.Overlay o) {
  buildCounterOverlay++;
  if (buildCounterOverlay < 3) {
    checkUnnamed8465(o.animations!);
    checkImage(o.image! as api.Image);
  }
  buildCounterOverlay--;
}

core.int buildCounterPad = 0;
api.Pad buildPad() {
  var o = api.Pad();
  buildCounterPad++;
  if (buildCounterPad < 3) {
    o.bottomPixels = 42;
    o.leftPixels = 42;
    o.rightPixels = 42;
    o.topPixels = 42;
  }
  buildCounterPad--;
  return o;
}

void checkPad(api.Pad o) {
  buildCounterPad++;
  if (buildCounterPad < 3) {
    unittest.expect(
      o.bottomPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.leftPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rightPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.topPixels!,
      unittest.equals(42),
    );
  }
  buildCounterPad--;
}

core.int buildCounterPreprocessingConfig = 0;
api.PreprocessingConfig buildPreprocessingConfig() {
  var o = api.PreprocessingConfig();
  buildCounterPreprocessingConfig++;
  if (buildCounterPreprocessingConfig < 3) {
    o.audio = buildAudio();
    o.color = buildColor();
    o.crop = buildCrop();
    o.deblock = buildDeblock();
    o.denoise = buildDenoise();
    o.pad = buildPad();
  }
  buildCounterPreprocessingConfig--;
  return o;
}

void checkPreprocessingConfig(api.PreprocessingConfig o) {
  buildCounterPreprocessingConfig++;
  if (buildCounterPreprocessingConfig < 3) {
    checkAudio(o.audio! as api.Audio);
    checkColor(o.color! as api.Color);
    checkCrop(o.crop! as api.Crop);
    checkDeblock(o.deblock! as api.Deblock);
    checkDenoise(o.denoise! as api.Denoise);
    checkPad(o.pad! as api.Pad);
  }
  buildCounterPreprocessingConfig--;
}

core.int buildCounterProgress = 0;
api.Progress buildProgress() {
  var o = api.Progress();
  buildCounterProgress++;
  if (buildCounterProgress < 3) {
    o.analyzed = 42.0;
    o.encoded = 42.0;
    o.notified = 42.0;
    o.uploaded = 42.0;
  }
  buildCounterProgress--;
  return o;
}

void checkProgress(api.Progress o) {
  buildCounterProgress++;
  if (buildCounterProgress < 3) {
    unittest.expect(
      o.analyzed!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.encoded!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.notified!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.uploaded!,
      unittest.equals(42.0),
    );
  }
  buildCounterProgress--;
}

core.int buildCounterPubsubDestination = 0;
api.PubsubDestination buildPubsubDestination() {
  var o = api.PubsubDestination();
  buildCounterPubsubDestination++;
  if (buildCounterPubsubDestination < 3) {
    o.topic = 'foo';
  }
  buildCounterPubsubDestination--;
  return o;
}

void checkPubsubDestination(api.PubsubDestination o) {
  buildCounterPubsubDestination++;
  if (buildCounterPubsubDestination < 3) {
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterPubsubDestination--;
}

core.int buildCounterSampleAesEncryption = 0;
api.SampleAesEncryption buildSampleAesEncryption() {
  var o = api.SampleAesEncryption();
  buildCounterSampleAesEncryption++;
  if (buildCounterSampleAesEncryption < 3) {
    o.keyUri = 'foo';
  }
  buildCounterSampleAesEncryption--;
  return o;
}

void checkSampleAesEncryption(api.SampleAesEncryption o) {
  buildCounterSampleAesEncryption++;
  if (buildCounterSampleAesEncryption < 3) {
    unittest.expect(
      o.keyUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterSampleAesEncryption--;
}

core.int buildCounterSegmentSettings = 0;
api.SegmentSettings buildSegmentSettings() {
  var o = api.SegmentSettings();
  buildCounterSegmentSettings++;
  if (buildCounterSegmentSettings < 3) {
    o.individualSegments = true;
    o.segmentDuration = 'foo';
  }
  buildCounterSegmentSettings--;
  return o;
}

void checkSegmentSettings(api.SegmentSettings o) {
  buildCounterSegmentSettings++;
  if (buildCounterSegmentSettings < 3) {
    unittest.expect(o.individualSegments!, unittest.isTrue);
    unittest.expect(
      o.segmentDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterSegmentSettings--;
}

core.int buildCounterSpriteSheet = 0;
api.SpriteSheet buildSpriteSheet() {
  var o = api.SpriteSheet();
  buildCounterSpriteSheet++;
  if (buildCounterSpriteSheet < 3) {
    o.columnCount = 42;
    o.endTimeOffset = 'foo';
    o.filePrefix = 'foo';
    o.format = 'foo';
    o.interval = 'foo';
    o.quality = 42;
    o.rowCount = 42;
    o.spriteHeightPixels = 42;
    o.spriteWidthPixels = 42;
    o.startTimeOffset = 'foo';
    o.totalCount = 42;
  }
  buildCounterSpriteSheet--;
  return o;
}

void checkSpriteSheet(api.SpriteSheet o) {
  buildCounterSpriteSheet++;
  if (buildCounterSpriteSheet < 3) {
    unittest.expect(
      o.columnCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.endTimeOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filePrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.interval!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quality!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.spriteHeightPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.spriteWidthPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalCount!,
      unittest.equals(42),
    );
  }
  buildCounterSpriteSheet--;
}

core.List<api.TextInput> buildUnnamed8466() {
  var o = <api.TextInput>[];
  o.add(buildTextInput());
  o.add(buildTextInput());
  return o;
}

void checkUnnamed8466(core.List<api.TextInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextInput(o[0] as api.TextInput);
  checkTextInput(o[1] as api.TextInput);
}

core.int buildCounterTextAtom = 0;
api.TextAtom buildTextAtom() {
  var o = api.TextAtom();
  buildCounterTextAtom++;
  if (buildCounterTextAtom < 3) {
    o.inputs = buildUnnamed8466();
    o.key = 'foo';
  }
  buildCounterTextAtom--;
  return o;
}

void checkTextAtom(api.TextAtom o) {
  buildCounterTextAtom++;
  if (buildCounterTextAtom < 3) {
    checkUnnamed8466(o.inputs!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextAtom--;
}

core.int buildCounterTextInput = 0;
api.TextInput buildTextInput() {
  var o = api.TextInput();
  buildCounterTextInput++;
  if (buildCounterTextInput < 3) {
    o.key = 'foo';
    o.track = 42;
  }
  buildCounterTextInput--;
  return o;
}

void checkTextInput(api.TextInput o) {
  buildCounterTextInput++;
  if (buildCounterTextInput < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.track!,
      unittest.equals(42),
    );
  }
  buildCounterTextInput--;
}

core.List<api.TextAtom> buildUnnamed8467() {
  var o = <api.TextAtom>[];
  o.add(buildTextAtom());
  o.add(buildTextAtom());
  return o;
}

void checkUnnamed8467(core.List<api.TextAtom> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextAtom(o[0] as api.TextAtom);
  checkTextAtom(o[1] as api.TextAtom);
}

core.int buildCounterTextStream = 0;
api.TextStream buildTextStream() {
  var o = api.TextStream();
  buildCounterTextStream++;
  if (buildCounterTextStream < 3) {
    o.codec = 'foo';
    o.languageCode = 'foo';
    o.mapping = buildUnnamed8467();
  }
  buildCounterTextStream--;
  return o;
}

void checkTextStream(api.TextStream o) {
  buildCounterTextStream++;
  if (buildCounterTextStream < 3) {
    unittest.expect(
      o.codec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkUnnamed8467(o.mapping!);
  }
  buildCounterTextStream--;
}

core.int buildCounterVideoStream = 0;
api.VideoStream buildVideoStream() {
  var o = api.VideoStream();
  buildCounterVideoStream++;
  if (buildCounterVideoStream < 3) {
    o.allowOpenGop = true;
    o.aqStrength = 42.0;
    o.bFrameCount = 42;
    o.bPyramid = true;
    o.bitrateBps = 42;
    o.codec = 'foo';
    o.crfLevel = 42;
    o.enableTwoPass = true;
    o.entropyCoder = 'foo';
    o.frameRate = 42.0;
    o.gopDuration = 'foo';
    o.gopFrameCount = 42;
    o.heightPixels = 42;
    o.pixelFormat = 'foo';
    o.preset = 'foo';
    o.profile = 'foo';
    o.rateControlMode = 'foo';
    o.tune = 'foo';
    o.vbvFullnessBits = 42;
    o.vbvSizeBits = 42;
    o.widthPixels = 42;
  }
  buildCounterVideoStream--;
  return o;
}

void checkVideoStream(api.VideoStream o) {
  buildCounterVideoStream++;
  if (buildCounterVideoStream < 3) {
    unittest.expect(o.allowOpenGop!, unittest.isTrue);
    unittest.expect(
      o.aqStrength!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.bFrameCount!,
      unittest.equals(42),
    );
    unittest.expect(o.bPyramid!, unittest.isTrue);
    unittest.expect(
      o.bitrateBps!,
      unittest.equals(42),
    );
    unittest.expect(
      o.codec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crfLevel!,
      unittest.equals(42),
    );
    unittest.expect(o.enableTwoPass!, unittest.isTrue);
    unittest.expect(
      o.entropyCoder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.frameRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.gopDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gopFrameCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.heightPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pixelFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.preset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rateControlMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tune!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vbvFullnessBits!,
      unittest.equals(42),
    );
    unittest.expect(
      o.vbvSizeBits!,
      unittest.equals(42),
    );
    unittest.expect(
      o.widthPixels!,
      unittest.equals(42),
    );
  }
  buildCounterVideoStream--;
}

void main() {
  unittest.group('obj-schema-AdBreak', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAdBreak();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.AdBreak.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdBreak(od as api.AdBreak);
    });
  });

  unittest.group('obj-schema-Aes128Encryption', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAes128Encryption();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Aes128Encryption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAes128Encryption(od as api.Aes128Encryption);
    });
  });

  unittest.group('obj-schema-Animation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAnimation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Animation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAnimation(od as api.Animation);
    });
  });

  unittest.group('obj-schema-AnimationEnd', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAnimationEnd();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AnimationEnd.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnimationEnd(od as api.AnimationEnd);
    });
  });

  unittest.group('obj-schema-AnimationFade', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAnimationFade();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AnimationFade.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnimationFade(od as api.AnimationFade);
    });
  });

  unittest.group('obj-schema-AnimationStatic', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAnimationStatic();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AnimationStatic.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnimationStatic(od as api.AnimationStatic);
    });
  });

  unittest.group('obj-schema-Audio', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAudio();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Audio.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAudio(od as api.Audio);
    });
  });

  unittest.group('obj-schema-AudioAtom', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAudioAtom();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.AudioAtom.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAudioAtom(od as api.AudioAtom);
    });
  });

  unittest.group('obj-schema-AudioChannel', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAudioChannel();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AudioChannel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAudioChannel(od as api.AudioChannel);
    });
  });

  unittest.group('obj-schema-AudioChannelInput', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAudioChannelInput();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AudioChannelInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAudioChannelInput(od as api.AudioChannelInput);
    });
  });

  unittest.group('obj-schema-AudioStream', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAudioStream();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AudioStream.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAudioStream(od as api.AudioStream);
    });
  });

  unittest.group('obj-schema-Color', () {
    unittest.test('to-json--from-json', () async {
      var o = buildColor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Color.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkColor(od as api.Color);
    });
  });

  unittest.group('obj-schema-Crop', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCrop();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Crop.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCrop(od as api.Crop);
    });
  });

  unittest.group('obj-schema-Deblock', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDeblock();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Deblock.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeblock(od as api.Deblock);
    });
  });

  unittest.group('obj-schema-Denoise', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDenoise();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Denoise.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDenoise(od as api.Denoise);
    });
  });

  unittest.group('obj-schema-EditAtom', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEditAtom();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.EditAtom.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEditAtom(od as api.EditAtom);
    });
  });

  unittest.group('obj-schema-ElementaryStream', () {
    unittest.test('to-json--from-json', () async {
      var o = buildElementaryStream();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ElementaryStream.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkElementaryStream(od as api.ElementaryStream);
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

  unittest.group('obj-schema-Encryption', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEncryption();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Encryption.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEncryption(od as api.Encryption);
    });
  });

  unittest.group('obj-schema-FailureDetail', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFailureDetail();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FailureDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailureDetail(od as api.FailureDetail);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od as api.Image);
    });
  });

  unittest.group('obj-schema-Input', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInput();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Input.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInput(od as api.Input);
    });
  });

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () async {
      var o = buildJob();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Job.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJob(od as api.Job);
    });
  });

  unittest.group('obj-schema-JobConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildJobConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.JobConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobConfig(od as api.JobConfig);
    });
  });

  unittest.group('obj-schema-JobTemplate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildJobTemplate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.JobTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobTemplate(od as api.JobTemplate);
    });
  });

  unittest.group('obj-schema-ListJobTemplatesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListJobTemplatesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListJobTemplatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListJobTemplatesResponse(od as api.ListJobTemplatesResponse);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListJobsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListJobsResponse(od as api.ListJobsResponse);
    });
  });

  unittest.group('obj-schema-Manifest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildManifest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Manifest.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkManifest(od as api.Manifest);
    });
  });

  unittest.group('obj-schema-MpegCommonEncryption', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMpegCommonEncryption();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.MpegCommonEncryption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMpegCommonEncryption(od as api.MpegCommonEncryption);
    });
  });

  unittest.group('obj-schema-MuxStream', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMuxStream();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.MuxStream.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMuxStream(od as api.MuxStream);
    });
  });

  unittest.group('obj-schema-NormalizedCoordinate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildNormalizedCoordinate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.NormalizedCoordinate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNormalizedCoordinate(od as api.NormalizedCoordinate);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationMetadata(od as api.OperationMetadata);
    });
  });

  unittest.group('obj-schema-OriginUri', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOriginUri();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.OriginUri.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOriginUri(od as api.OriginUri);
    });
  });

  unittest.group('obj-schema-Output', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOutput();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Output.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOutput(od as api.Output);
    });
  });

  unittest.group('obj-schema-Overlay', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOverlay();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Overlay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOverlay(od as api.Overlay);
    });
  });

  unittest.group('obj-schema-Pad', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPad();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Pad.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPad(od as api.Pad);
    });
  });

  unittest.group('obj-schema-PreprocessingConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPreprocessingConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PreprocessingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPreprocessingConfig(od as api.PreprocessingConfig);
    });
  });

  unittest.group('obj-schema-Progress', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProgress();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Progress.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProgress(od as api.Progress);
    });
  });

  unittest.group('obj-schema-PubsubDestination', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPubsubDestination();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PubsubDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPubsubDestination(od as api.PubsubDestination);
    });
  });

  unittest.group('obj-schema-SampleAesEncryption', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSampleAesEncryption();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SampleAesEncryption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSampleAesEncryption(od as api.SampleAesEncryption);
    });
  });

  unittest.group('obj-schema-SegmentSettings', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSegmentSettings();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SegmentSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSegmentSettings(od as api.SegmentSettings);
    });
  });

  unittest.group('obj-schema-SpriteSheet', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSpriteSheet();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SpriteSheet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpriteSheet(od as api.SpriteSheet);
    });
  });

  unittest.group('obj-schema-TextAtom', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTextAtom();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.TextAtom.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextAtom(od as api.TextAtom);
    });
  });

  unittest.group('obj-schema-TextInput', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTextInput();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.TextInput.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextInput(od as api.TextInput);
    });
  });

  unittest.group('obj-schema-TextStream', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTextStream();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.TextStream.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextStream(od as api.TextStream);
    });
  });

  unittest.group('obj-schema-VideoStream', () {
    unittest.test('to-json--from-json', () async {
      var o = buildVideoStream();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.VideoStream.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoStream(od as api.VideoStream);
    });
  });

  unittest.group('resource-ProjectsLocationsJobTemplatesResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.TranscoderApi(mock).projects.locations.jobTemplates;
      var arg_request = buildJobTemplate();
      var arg_parent = 'foo';
      var arg_jobTemplateId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.JobTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkJobTemplate(obj as api.JobTemplate);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["jobTemplateId"]!.first,
          unittest.equals(arg_jobTemplateId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJobTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          jobTemplateId: arg_jobTemplateId, $fields: arg_$fields);
      checkJobTemplate(response as api.JobTemplate);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.TranscoderApi(mock).projects.locations.jobTemplates;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
      var res = api.TranscoderApi(mock).projects.locations.jobTemplates;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildJobTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkJobTemplate(response as api.JobTemplate);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.TranscoderApi(mock).projects.locations.jobTemplates;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListJobTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListJobTemplatesResponse(response as api.ListJobTemplatesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsJobsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.TranscoderApi(mock).projects.locations.jobs;
      var arg_request = buildJob();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj as api.Job);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.TranscoderApi(mock).projects.locations.jobs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
      var res = api.TranscoderApi(mock).projects.locations.jobs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.TranscoderApi(mock).projects.locations.jobs;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListJobsResponse(response as api.ListJobsResponse);
    });
  });
}
