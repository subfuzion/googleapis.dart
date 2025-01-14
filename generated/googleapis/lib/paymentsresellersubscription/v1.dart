// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Payments Reseller Subscription API - v1
///
/// For more information, see
/// <https://developers.google.com/payments/reseller/subscription/>
///
/// Create an instance of [PaymentsResellerSubscriptionApi] to access these
/// resources:
///
/// - [PartnersResource]
///   - [PartnersProductsResource]
///   - [PartnersPromotionsResource]
///   - [PartnersSubscriptionsResource]
library paymentsresellersubscription.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class PaymentsResellerSubscriptionApi {
  final commons.ApiRequester _requester;

  PartnersResource get partners => PartnersResource(_requester);

  PaymentsResellerSubscriptionApi(http.Client client,
      {core.String rootUrl =
          'https://paymentsresellersubscription.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class PartnersResource {
  final commons.ApiRequester _requester;

  PartnersProductsResource get products => PartnersProductsResource(_requester);
  PartnersPromotionsResource get promotions =>
      PartnersPromotionsResource(_requester);
  PartnersSubscriptionsResource get subscriptions =>
      PartnersSubscriptionsResource(_requester);

  PartnersResource(commons.ApiRequester client) : _requester = client;
}

class PartnersProductsResource {
  final commons.ApiRequester _requester;

  PartnersProductsResource(commons.ApiRequester client) : _requester = client;

  /// Used by partners to list products that can be resold to their customers.
  ///
  /// It should be called directly by the partner using service accounts.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, the partner that can resell. Format:
  /// partners/{partner}
  /// Value must have pattern `^partners/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of products to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// products will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListProducts` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListProducts` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/products';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class PartnersPromotionsResource {
  final commons.ApiRequester _requester;

  PartnersPromotionsResource(commons.ApiRequester client) : _requester = client;

  /// Used by partners to list promotions, such as free trial, that can be
  /// applied on subscriptions.
  ///
  /// It should be called directly by the partner using service accounts.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, the partner that can resell. Format:
  /// partners/{partner}
  /// Value must have pattern `^partners/\[^/\]+$`.
  ///
  /// [filter] - Optional. Specifies the filters for the promotion results. The
  /// syntax defined in the EBNF grammar:
  /// https://google.aip.dev/assets/misc/ebnf-filtering.txt. Examples: -
  /// applicable_products: "sku1" - region_codes: "US" - applicable_products:
  /// "sku1" AND region_codes: "US"
  ///
  /// [pageSize] - Optional. The maximum number of promotions to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// products will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListPromotions` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListPromotions` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse>
      list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/promotions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class PartnersSubscriptionsResource {
  final commons.ApiRequester _requester;

  PartnersSubscriptionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Used by partners to cancel a subscription service by the end of the
  /// current billing cycle for their customers.
  ///
  /// It should be called directly by the partner using service accounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription resource to be cancelled.
  /// It will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}"
  /// Value must have pattern `^partners/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse>
      cancel(
    GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Used by partners to create a subscription for their customers.
  ///
  /// The created subscription is associated with the end user inferred from the
  /// end user credentials. This API must be authorized by the end user using
  /// OAuth.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, which is the identifier of
  /// the partner. It will have the format of "partners/{partner_id}".
  /// Value must have pattern `^partners/\[^/\]+$`.
  ///
  /// [subscriptionId] - Required. Identifies the subscription resource on the
  /// Partner side. The value is restricted to 63 ASCII characters at the
  /// maximum. If a subscription was previously created with the same
  /// subscription_id, we will directly return that one.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPaymentsResellerSubscriptionV1Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPaymentsResellerSubscriptionV1Subscription> create(
    GoogleCloudPaymentsResellerSubscriptionV1Subscription request,
    core.String parent, {
    core.String? subscriptionId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (subscriptionId != null) 'subscriptionId': [subscriptionId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/subscriptions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Used by partners to entitle a previously provisioned subscription to the
  /// current end user.
  ///
  /// The end user identity is inferred from the authorized credential of the
  /// request. This API must be authorized by the end user using OAuth.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription resource that is entitled
  /// to the current end user. It will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}"
  /// Value must have pattern `^partners/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse>
      entitle(
    GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':entitle';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Used by partners to extend a subscription service for their customers.
  ///
  /// It should be called directly by the partner using service accounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription resource to be extended.
  /// It will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}".
  /// Value must have pattern `^partners/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse>
      extend(
    GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':extend';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Used by partners to get a subscription by id.
  ///
  /// It should be called directly by the partner using service accounts.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription resource to retrieve. It
  /// will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}"
  /// Value must have pattern `^partners/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPaymentsResellerSubscriptionV1Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPaymentsResellerSubscriptionV1Subscription> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Used by partners to provision a subscription for their customers.
  ///
  /// This creates a subscription without associating it with the end user
  /// account. EntitleSubscription must be called separately using OAuth in
  /// order for the end user account to be associated with the subscription. It
  /// should be called directly by the partner using service accounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, which is the identifier of
  /// the partner. It will have the format of "partners/{partner_id}".
  /// Value must have pattern `^partners/\[^/\]+$`.
  ///
  /// [subscriptionId] - Required. Identifies the subscription resource on the
  /// Partner side. The value is restricted to 63 ASCII characters at the
  /// maximum. If a subscription was previously created with the same
  /// subscription_id, we will directly return that one.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPaymentsResellerSubscriptionV1Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPaymentsResellerSubscriptionV1Subscription> provision(
    GoogleCloudPaymentsResellerSubscriptionV1Subscription request,
    core.String parent, {
    core.String? subscriptionId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (subscriptionId != null) 'subscriptionId': [subscriptionId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/subscriptions:provision';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Used by partners to revoke the pending cancellation of a subscription,
  /// which is currently in `STATE_CANCEL_AT_END_OF_CYCLE` state.
  ///
  /// If the subscription is already cancelled, the request will fail. It should
  /// be called directly by the partner using service accounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription resource whose pending
  /// cancellation needs to be undone. It will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}"
  /// Value must have pattern `^partners/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse>
      undoCancel(
    GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
        request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':undoCancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest {
  /// If true, the subscription will be cancelled immediately.
  ///
  /// Otherwise, the subscription will be cancelled at the end of the current
  /// cycle, and therefore no prorated refund will be issued for the rest of the
  /// cycle.
  ///
  /// Optional.
  core.bool? cancelImmediately;

  /// Specifies the reason for the cancellation.
  /// Possible string values are:
  /// - "CANCELLATION_REASON_UNSPECIFIED" : Reason is unspecified.
  /// - "CANCELLATION_REASON_FRAUD" : Fraudualant transaction.
  /// - "CANCELLATION_REASON_REMORSE" : Buyer's remorse.
  /// - "CANCELLATION_REASON_ACCIDENTAL_PURCHASE" : Accidential purchase.
  /// - "CANCELLATION_REASON_PAST_DUE" : Payment is past due.
  /// - "CANCELLATION_REASON_ACCOUNT_CLOSED" : User account closed.
  /// - "CANCELLATION_REASON_UPGRADE_DOWNGRADE" : Used for notification only, do
  /// not use in Cancel API. Cancallation due to upgrade or downgrade.
  /// - "CANCELLATION_REASON_OTHER" : Other reason.
  core.String? cancellationReason;

  GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest();

  GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('cancelImmediately')) {
      cancelImmediately = _json['cancelImmediately'] as core.bool;
    }
    if (_json.containsKey('cancellationReason')) {
      cancellationReason = _json['cancellationReason'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (cancelImmediately != null) 'cancelImmediately': cancelImmediately!,
        if (cancellationReason != null)
          'cancellationReason': cancellationReason!,
      };
}

class GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse {
  /// The cancelled subscription resource.
  GoogleCloudPaymentsResellerSubscriptionV1Subscription? subscription;

  GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse();

  GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('subscription')) {
      subscription =
          GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
              _json['subscription'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (subscription != null) 'subscription': subscription!.toJson(),
      };
}

/// Describes the length of a period of a time.
class GoogleCloudPaymentsResellerSubscriptionV1Duration {
  /// number of duration units to be included.
  core.int? count;

  /// The unit used for the duration
  /// Possible string values are:
  /// - "UNIT_UNSPECIFIED" : Default value.
  /// - "MONTH" : Unit of a calendar month.
  /// - "DAY" : Unit of a day.
  core.String? unit;

  GoogleCloudPaymentsResellerSubscriptionV1Duration();

  GoogleCloudPaymentsResellerSubscriptionV1Duration.fromJson(core.Map _json) {
    if (_json.containsKey('count')) {
      count = _json['count'] as core.int;
    }
    if (_json.containsKey('unit')) {
      unit = _json['unit'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (unit != null) 'unit': unit!,
      };
}

/// Partner request for entitling the previously provisioned subscription to an
/// end user.
///
/// The end user identity is inferred from the request OAuth context.
class GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest {
  GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest();

  GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

class GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse {
  /// The subscription that has user linked to it.
  GoogleCloudPaymentsResellerSubscriptionV1Subscription? subscription;

  GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse();

  GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('subscription')) {
      subscription =
          GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
              _json['subscription'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (subscription != null) 'subscription': subscription!.toJson(),
      };
}

/// Request message for extending a Subscription resource.
///
/// A new recurrence will be made based on the subscription schedule defined by
/// the original product.
class GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest {
  /// Specifies details of the extension.
  ///
  /// Currently, the duration of the extension must be exactly one billing cycle
  /// of the original subscription.
  ///
  /// Required.
  GoogleCloudPaymentsResellerSubscriptionV1Extension? extension;

  /// Restricted to 36 ASCII characters.
  ///
  /// A random UUID is recommended. The idempotency key for the request. The ID
  /// generation logic is controlled by the partner. request_id should be the
  /// same as on retries of the same request. A different request_id must be
  /// used for a extension of a different cycle. A random UUID is recommended.
  ///
  /// Required.
  core.String? requestId;

  GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest();

  GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('extension')) {
      extension = GoogleCloudPaymentsResellerSubscriptionV1Extension.fromJson(
          _json['extension'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (extension != null) 'extension': extension!.toJson(),
        if (requestId != null) 'requestId': requestId!,
      };
}

class GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse {
  /// The time at which the subscription is expected to be extended, in ISO 8061
  /// format.
  ///
  /// UTC timezone. Example, "cycleEndTime":"2019-08-31T17:28:54.564Z"
  core.String? cycleEndTime;

  /// End of the free trial period, in ISO 8061 format.
  ///
  /// UTC timezone. Example, "freeTrialEndTime":"2019-08-31T17:28:54.564Z" This
  /// time will be set the same as initial subscription creation time if no free
  /// trial period is offered to the partner.
  core.String? freeTrialEndTime;

  GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse();

  GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('cycleEndTime')) {
      cycleEndTime = _json['cycleEndTime'] as core.String;
    }
    if (_json.containsKey('freeTrialEndTime')) {
      freeTrialEndTime = _json['freeTrialEndTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (cycleEndTime != null) 'cycleEndTime': cycleEndTime!,
        if (freeTrialEndTime != null) 'freeTrialEndTime': freeTrialEndTime!,
      };
}

/// Describes the details of an extension request.
class GoogleCloudPaymentsResellerSubscriptionV1Extension {
  /// Specifies the period of access the subscription should grant.
  GoogleCloudPaymentsResellerSubscriptionV1Duration? duration;

  /// Identifier of the end-user in partner’s system.
  ///
  /// Required.
  core.String? partnerUserToken;

  GoogleCloudPaymentsResellerSubscriptionV1Extension();

  GoogleCloudPaymentsResellerSubscriptionV1Extension.fromJson(core.Map _json) {
    if (_json.containsKey('duration')) {
      duration = GoogleCloudPaymentsResellerSubscriptionV1Duration.fromJson(
          _json['duration'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('partnerUserToken')) {
      partnerUserToken = _json['partnerUserToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (duration != null) 'duration': duration!.toJson(),
        if (partnerUserToken != null) 'partnerUserToken': partnerUserToken!,
      };
}

class GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The products for the specified partner.
  core.List<GoogleCloudPaymentsResellerSubscriptionV1Product>? products;

  GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse();

  GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('products')) {
      products = (_json['products'] as core.List)
          .map<GoogleCloudPaymentsResellerSubscriptionV1Product>((value) =>
              GoogleCloudPaymentsResellerSubscriptionV1Product.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (products != null)
          'products': products!.map((value) => value.toJson()).toList(),
      };
}

class GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The promotions for the specified partner.
  core.List<GoogleCloudPaymentsResellerSubscriptionV1Promotion>? promotions;

  GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse();

  GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('promotions')) {
      promotions = (_json['promotions'] as core.List)
          .map<GoogleCloudPaymentsResellerSubscriptionV1Promotion>((value) =>
              GoogleCloudPaymentsResellerSubscriptionV1Promotion.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (promotions != null)
          'promotions': promotions!.map((value) => value.toJson()).toList(),
      };
}

/// Describes a location of an end user.
class GoogleCloudPaymentsResellerSubscriptionV1Location {
  /// The postal code this location refers to.
  ///
  /// Ex. "94043"
  core.String? postalCode;

  /// 2-letter ISO region code for current content region.
  ///
  /// Ex. “US” Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1
  core.String? regionCode;

  GoogleCloudPaymentsResellerSubscriptionV1Location();

  GoogleCloudPaymentsResellerSubscriptionV1Location.fromJson(core.Map _json) {
    if (_json.containsKey('postalCode')) {
      postalCode = _json['postalCode'] as core.String;
    }
    if (_json.containsKey('regionCode')) {
      regionCode = _json['regionCode'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (postalCode != null) 'postalCode': postalCode!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// A Product resource that defines a subscription service that can be resold.
class GoogleCloudPaymentsResellerSubscriptionV1Product {
  /// Response only.
  ///
  /// Resource name of the subscription. It will have the format of
  /// "partners/{partner_id}/products/{product_id}"
  ///
  /// Output only.
  core.String? name;

  /// 2-letter ISO region code where the product is available in.
  ///
  /// Ex. "US" Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1
  ///
  /// Output only.
  core.List<core.String>? regionCodes;

  /// Specifies the length of the billing cycle of the subscription.
  ///
  /// Output only.
  GoogleCloudPaymentsResellerSubscriptionV1Duration?
      subscriptionBillingCycleDuration;

  /// Localized human readable name of the product.
  ///
  /// Output only.
  core.List<GoogleTypeLocalizedText>? titles;

  GoogleCloudPaymentsResellerSubscriptionV1Product();

  GoogleCloudPaymentsResellerSubscriptionV1Product.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('regionCodes')) {
      regionCodes = (_json['regionCodes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('subscriptionBillingCycleDuration')) {
      subscriptionBillingCycleDuration =
          GoogleCloudPaymentsResellerSubscriptionV1Duration.fromJson(
              _json['subscriptionBillingCycleDuration']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('titles')) {
      titles = (_json['titles'] as core.List)
          .map<GoogleTypeLocalizedText>((value) =>
              GoogleTypeLocalizedText.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (regionCodes != null) 'regionCodes': regionCodes!,
        if (subscriptionBillingCycleDuration != null)
          'subscriptionBillingCycleDuration':
              subscriptionBillingCycleDuration!.toJson(),
        if (titles != null)
          'titles': titles!.map((value) => value.toJson()).toList(),
      };
}

/// A Promotion resource that defines a promotion for a subscription that can be
/// resold.
class GoogleCloudPaymentsResellerSubscriptionV1Promotion {
  /// The product ids this promotion can be applied to.
  ///
  /// Output only.
  core.List<core.String>? applicableProducts;

  /// Specifies the end time (exclusive) of the period that the promotion is
  /// available in.
  ///
  /// If unset, the promotion is available indefinitely.
  ///
  /// Optional.
  core.String? endTime;

  /// Specifies the duration of the free trial of the subscription.
  ///
  /// Output only.
  GoogleCloudPaymentsResellerSubscriptionV1Duration? freeTrialDuration;

  /// Response only.
  ///
  /// Resource name of the subscription promotion. It will have the format of
  /// "partners/{partner_id}/promotion/{promotion_id}"
  ///
  /// Output only.
  core.String? name;

  /// 2-letter ISO region code where the promotion is available in.
  ///
  /// Ex. "US" Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1
  ///
  /// Output only.
  core.List<core.String>? regionCodes;

  /// Specifies the start time (inclusive) of the period that the promotion is
  /// available in.
  ///
  /// Optional.
  core.String? startTime;

  /// Localized human readable name of the promotion.
  ///
  /// Output only.
  core.List<GoogleTypeLocalizedText>? titles;

  GoogleCloudPaymentsResellerSubscriptionV1Promotion();

  GoogleCloudPaymentsResellerSubscriptionV1Promotion.fromJson(core.Map _json) {
    if (_json.containsKey('applicableProducts')) {
      applicableProducts = (_json['applicableProducts'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('freeTrialDuration')) {
      freeTrialDuration =
          GoogleCloudPaymentsResellerSubscriptionV1Duration.fromJson(
              _json['freeTrialDuration']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('regionCodes')) {
      regionCodes = (_json['regionCodes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('titles')) {
      titles = (_json['titles'] as core.List)
          .map<GoogleTypeLocalizedText>((value) =>
              GoogleTypeLocalizedText.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicableProducts != null)
          'applicableProducts': applicableProducts!,
        if (endTime != null) 'endTime': endTime!,
        if (freeTrialDuration != null)
          'freeTrialDuration': freeTrialDuration!.toJson(),
        if (name != null) 'name': name!,
        if (regionCodes != null) 'regionCodes': regionCodes!,
        if (startTime != null) 'startTime': startTime!,
        if (titles != null)
          'titles': titles!.map((value) => value.toJson()).toList(),
      };
}

/// A Subscription resource managed by 3P Partners.
class GoogleCloudPaymentsResellerSubscriptionV1Subscription {
  /// Describes the details of a cancelled subscription.
  ///
  /// Only applicable to subscription of state `STATE_CANCELLED`.
  ///
  /// Output only.
  GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails?
      cancellationDetails;

  /// System generated timestamp when the subscription is created.
  ///
  /// UTC timezone.
  ///
  /// Output only.
  core.String? createTime;

  /// The time at which the subscription is expected to be extended, in ISO 8061
  /// format.
  ///
  /// UTC timezone. For example: "2019-08-31T17:28:54.564Z"
  ///
  /// Output only.
  core.String? cycleEndTime;

  /// Indicates if the subscription is entitled to the end user.
  ///
  /// Output only.
  core.bool? endUserEntitled;

  /// End of the free trial period, in ISO 8061 format.
  ///
  /// For example, "2019-08-31T17:28:54.564Z". It will be set the same as
  /// createTime if no free trial promotion is specified.
  ///
  /// Output only.
  core.String? freeTrialEndTime;

  /// Response only.
  ///
  /// Resource name of the subscription. It will have the format of
  /// "partners/{partner_id}/subscriptions/{subscription_id}"
  ///
  /// Output only.
  core.String? name;

  /// Identifier of the end-user in partner’s system.
  ///
  /// The value is restricted to 63 ASCII characters at the maximum.
  ///
  /// Required.
  core.String? partnerUserToken;

  /// Resource name that identifies one or more subscription products.
  ///
  /// The format will be 'partners/{partner_id}/products/{product_id}'.
  ///
  /// Required.
  core.List<core.String>? products;

  /// Resource name that identifies one or more promotions that can be applied
  /// on the product.
  ///
  /// A typical promotion for a subscription is Free trial. The format will be
  /// 'partners/{partner_id}/promotions/{promotion_id}'.
  ///
  /// Optional.
  core.List<core.String>? promotions;

  /// The place where partners should redirect the end-user to after creation.
  ///
  /// This field might also be populated when creation failed. However, Partners
  /// should always prepare a default URL to redirect the user in case this
  /// field is empty.
  ///
  /// Output only.
  core.String? redirectUri;

  /// The location that the service is provided as indicated by the partner.
  ///
  /// Required.
  GoogleCloudPaymentsResellerSubscriptionV1Location? serviceLocation;

  /// Descibes the state of the subscription.
  ///
  /// See more details at \[the lifecycle of a
  /// subscription\](/payments/reseller/subscription/reference/index/Receive.Notifications#payments-subscription-lifecycle).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unspecified.
  /// - "STATE_CREATED" : The subscription is created, a state before it is
  /// moved to STATE_ACTIVE.
  /// - "STATE_ACTIVE" : The subscription is active.
  /// - "STATE_CANCELLED" : The subscription is cancelled.
  /// - "STATE_IN_GRACE_PERIOD" : The subscription has not been extended by the
  /// partner after the end of current cycle.
  /// - "STATE_CANCEL_AT_END_OF_CYCLE" : The subscription is waiting to be
  /// cancelled by the next recurrence cycle.
  core.String? state;

  /// System generated timestamp when the subscription is most recently updated.
  ///
  /// UTC timezone.
  ///
  /// Output only.
  core.String? updateTime;

  /// Details about the previous subscription that this new subscription
  /// upgrades/downgrades from.
  ///
  /// Only populated if this subscription is an upgrade/downgrade from another
  /// subscription.
  ///
  /// Optional.
  GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails?
      upgradeDowngradeDetails;

  GoogleCloudPaymentsResellerSubscriptionV1Subscription();

  GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
      core.Map _json) {
    if (_json.containsKey('cancellationDetails')) {
      cancellationDetails =
          GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails
              .fromJson(_json['cancellationDetails']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('cycleEndTime')) {
      cycleEndTime = _json['cycleEndTime'] as core.String;
    }
    if (_json.containsKey('endUserEntitled')) {
      endUserEntitled = _json['endUserEntitled'] as core.bool;
    }
    if (_json.containsKey('freeTrialEndTime')) {
      freeTrialEndTime = _json['freeTrialEndTime'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('partnerUserToken')) {
      partnerUserToken = _json['partnerUserToken'] as core.String;
    }
    if (_json.containsKey('products')) {
      products = (_json['products'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('promotions')) {
      promotions = (_json['promotions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('redirectUri')) {
      redirectUri = _json['redirectUri'] as core.String;
    }
    if (_json.containsKey('serviceLocation')) {
      serviceLocation =
          GoogleCloudPaymentsResellerSubscriptionV1Location.fromJson(
              _json['serviceLocation'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('upgradeDowngradeDetails')) {
      upgradeDowngradeDetails =
          GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails
              .fromJson(_json['upgradeDowngradeDetails']
                  as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (cancellationDetails != null)
          'cancellationDetails': cancellationDetails!.toJson(),
        if (createTime != null) 'createTime': createTime!,
        if (cycleEndTime != null) 'cycleEndTime': cycleEndTime!,
        if (endUserEntitled != null) 'endUserEntitled': endUserEntitled!,
        if (freeTrialEndTime != null) 'freeTrialEndTime': freeTrialEndTime!,
        if (name != null) 'name': name!,
        if (partnerUserToken != null) 'partnerUserToken': partnerUserToken!,
        if (products != null) 'products': products!,
        if (promotions != null) 'promotions': promotions!,
        if (redirectUri != null) 'redirectUri': redirectUri!,
        if (serviceLocation != null)
          'serviceLocation': serviceLocation!.toJson(),
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (upgradeDowngradeDetails != null)
          'upgradeDowngradeDetails': upgradeDowngradeDetails!.toJson(),
      };
}

/// Describes the details of a cancelled subscription.
class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails {
  /// The reason of the cancellation.
  /// Possible string values are:
  /// - "CANCELLATION_REASON_UNSPECIFIED" : Reason is unspecified.
  /// - "CANCELLATION_REASON_FRAUD" : Fraudualant transaction.
  /// - "CANCELLATION_REASON_REMORSE" : Buyer's remorse.
  /// - "CANCELLATION_REASON_ACCIDENTAL_PURCHASE" : Accidential purchase.
  /// - "CANCELLATION_REASON_PAST_DUE" : Payment is past due.
  /// - "CANCELLATION_REASON_ACCOUNT_CLOSED" : User account closed.
  /// - "CANCELLATION_REASON_UPGRADE_DOWNGRADE" : Used for notification only, do
  /// not use in Cancel API. Cancallation due to upgrade or downgrade.
  /// - "CANCELLATION_REASON_OTHER" : Other reason.
  core.String? reason;

  GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails();

  GoogleCloudPaymentsResellerSubscriptionV1SubscriptionCancellationDetails.fromJson(
      core.Map _json) {
    if (_json.containsKey('reason')) {
      reason = _json['reason'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (reason != null) 'reason': reason!,
      };
}

/// Details about the previous subscription that this new subscription
/// upgrades/downgrades from.
class GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails {
  /// Specifies the billing cycle spec for the new upgraded/downgraded
  /// subscription.
  ///
  /// Required.
  /// Possible string values are:
  /// - "BILLING_CYCLE_SPEC_UNSPECIFIED" : Billing cycle spec is not specified.
  /// - "BILLING_CYCLE_SPEC_ALIGN_WITH_PREVIOUS_SUBSCRIPTION" : The billing
  /// cycle of the new subscription aligns with the previous subscription it
  /// upgrades or downgrades from.
  /// - "BILLING_CYCLE_SPEC_START_IMMEDIATELY" : The billing cycle of the new
  /// subscription starts immediately.
  core.String? billingCycleSpec;

  /// The previous subscription id to be replaced.
  ///
  /// This is not the full resource name, use the subscription_id segment only.
  ///
  /// Required.
  core.String? previousSubscriptionId;

  GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails();

  GoogleCloudPaymentsResellerSubscriptionV1SubscriptionUpgradeDowngradeDetails.fromJson(
      core.Map _json) {
    if (_json.containsKey('billingCycleSpec')) {
      billingCycleSpec = _json['billingCycleSpec'] as core.String;
    }
    if (_json.containsKey('previousSubscriptionId')) {
      previousSubscriptionId = _json['previousSubscriptionId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (billingCycleSpec != null) 'billingCycleSpec': billingCycleSpec!,
        if (previousSubscriptionId != null)
          'previousSubscriptionId': previousSubscriptionId!,
      };
}

/// Request to revoke a cancellation request.
class GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest {
  GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest();

  GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Response that contains the updated subscription resource.
class GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse {
  /// The updated subscription resource.
  GoogleCloudPaymentsResellerSubscriptionV1Subscription? subscription;

  GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse();

  GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('subscription')) {
      subscription =
          GoogleCloudPaymentsResellerSubscriptionV1Subscription.fromJson(
              _json['subscription'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (subscription != null) 'subscription': subscription!.toJson(),
      };
}

/// Localized variant of a text in a particular language.
class GoogleTypeLocalizedText {
  /// The text's BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  /// Localized string in the language corresponding to \`language_code' below.
  core.String? text;

  GoogleTypeLocalizedText();

  GoogleTypeLocalizedText.fromJson(core.Map _json) {
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'] as core.String;
    }
    if (_json.containsKey('text')) {
      text = _json['text'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (text != null) 'text': text!,
      };
}
