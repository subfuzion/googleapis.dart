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

/// Dataflow API - v1b3
///
/// Manages Google Cloud Dataflow projects on Google Cloud Platform.
///
/// For more information, see <https://cloud.google.com/dataflow>
///
/// Create an instance of [DataflowApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsJobsResource]
///     - [ProjectsJobsDebugResource]
///     - [ProjectsJobsMessagesResource]
///     - [ProjectsJobsWorkItemsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsFlexTemplatesResource]
///     - [ProjectsLocationsJobsResource]
///       - [ProjectsLocationsJobsDebugResource]
///       - [ProjectsLocationsJobsMessagesResource]
///       - [ProjectsLocationsJobsSnapshotsResource]
///       - [ProjectsLocationsJobsStagesResource]
///       - [ProjectsLocationsJobsWorkItemsResource]
///     - [ProjectsLocationsSnapshotsResource]
///     - [ProjectsLocationsSqlResource]
///     - [ProjectsLocationsTemplatesResource]
///   - [ProjectsSnapshotsResource]
///   - [ProjectsTemplatesResource]
library dataflow.v1b3;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Manages Google Cloud Dataflow projects on Google Cloud Platform.
class DataflowApi {
  /// See, edit, configure, and delete your Google Cloud Platform data
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and manage your Google Compute Engine resources
  static const computeScope = 'https://www.googleapis.com/auth/compute';

  /// View your Google Compute Engine resources
  static const computeReadonlyScope =
      'https://www.googleapis.com/auth/compute.readonly';

  /// See your primary Google Account email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DataflowApi(http.Client client,
      {core.String rootUrl = 'https://dataflow.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsJobsResource get jobs => ProjectsJobsResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsSnapshotsResource get snapshots =>
      ProjectsSnapshotsResource(_requester);
  ProjectsTemplatesResource get templates =>
      ProjectsTemplatesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a snapshot.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the snapshot
  /// belongs to.
  ///
  /// [location] - The location that contains this snapshot.
  ///
  /// [snapshotId] - The ID of the snapshot.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeleteSnapshotResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeleteSnapshotResponse> deleteSnapshots(
    core.String projectId, {
    core.String? location,
    core.String? snapshotId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if (snapshotId != null) 'snapshotId': [snapshotId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1b3/projects/' + commons.escapeVariable('$projectId') + '/snapshots';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return DeleteSnapshotResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Send a worker_message to the service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project to send the WorkerMessages to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SendWorkerMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SendWorkerMessagesResponse> workerMessages(
    SendWorkerMessagesRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/WorkerMessages';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SendWorkerMessagesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsJobsResource {
  final commons.ApiRequester _requester;

  ProjectsJobsDebugResource get debug => ProjectsJobsDebugResource(_requester);
  ProjectsJobsMessagesResource get messages =>
      ProjectsJobsMessagesResource(_requester);
  ProjectsJobsWorkItemsResource get workItems =>
      ProjectsJobsWorkItemsResource(_requester);

  ProjectsJobsResource(commons.ApiRequester client) : _requester = client;

  /// List the jobs of a project across all regions.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project which owns the jobs.
  ///
  /// [filter] - The kind of filter to use.
  /// Possible string values are:
  /// - "UNKNOWN" : The filter isn't specified, or is unknown. This returns all
  /// jobs ordered on descending `JobUuid`.
  /// - "ALL" : Returns all running jobs first ordered on creation timestamp,
  /// then returns all terminated jobs ordered on the termination timestamp.
  /// - "TERMINATED" : Filters the jobs that have a terminated state, ordered on
  /// the termination timestamp. Example terminated states: `JOB_STATE_STOPPED`,
  /// `JOB_STATE_UPDATED`, `JOB_STATE_DRAINED`, etc.
  /// - "ACTIVE" : Filters the jobs that are running ordered on the creation
  /// timestamp.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [pageSize] - If there are many jobs, limit response to at most this many.
  /// The actual number of jobs returned will be the lesser of max_responses and
  /// an unspecified server-defined limit.
  ///
  /// [pageToken] - Set this to the 'next_page_token' field of a previous
  /// response to request additional results in a long list.
  ///
  /// [view] - Deprecated. ListJobs always returns summaries now. Use GetJob for
  /// other JobViews.
  /// Possible string values are:
  /// - "JOB_VIEW_UNKNOWN" : The job view to return isn't specified, or is
  /// unknown. Responses will contain at least the `JOB_VIEW_SUMMARY`
  /// information, and may contain additional information.
  /// - "JOB_VIEW_SUMMARY" : Request summary information only: Project ID, Job
  /// ID, job name, job type, job status, start/end time, and Cloud SDK version
  /// details.
  /// - "JOB_VIEW_ALL" : Request all information available for this job.
  /// - "JOB_VIEW_DESCRIPTION" : Request summary info and limited job
  /// description data for steps, labels and environment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobsResponse> aggregated(
    core.String projectId, {
    core.String? filter,
    core.String? location,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (location != null) 'location': [location],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs:aggregated';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Cloud Dataflow job.
  ///
  /// To create a job, we recommend using `projects.locations.jobs.create` with
  /// a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.create` is not recommended, as your job will always
  /// start in `us-central1`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the job belongs
  /// to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [replaceJobId] - Deprecated. This field is now in the Job message.
  ///
  /// [view] - The level of information requested in response.
  /// Possible string values are:
  /// - "JOB_VIEW_UNKNOWN" : The job view to return isn't specified, or is
  /// unknown. Responses will contain at least the `JOB_VIEW_SUMMARY`
  /// information, and may contain additional information.
  /// - "JOB_VIEW_SUMMARY" : Request summary information only: Project ID, Job
  /// ID, job name, job type, job status, start/end time, and Cloud SDK version
  /// details.
  /// - "JOB_VIEW_ALL" : Request all information available for this job.
  /// - "JOB_VIEW_DESCRIPTION" : Request summary info and limited job
  /// description data for steps, labels and environment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> create(
    Job request,
    core.String projectId, {
    core.String? location,
    core.String? replaceJobId,
    core.String? view,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if (replaceJobId != null) 'replaceJobId': [replaceJobId],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1b3/projects/' + commons.escapeVariable('$projectId') + '/jobs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the state of the specified Cloud Dataflow job.
  ///
  /// To get the state of a job, we recommend using
  /// `projects.locations.jobs.get` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.get` is not recommended, as you can only get the
  /// state of jobs that are running in `us-central1`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the job belongs
  /// to.
  ///
  /// [jobId] - The job ID.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [view] - The level of information requested in response.
  /// Possible string values are:
  /// - "JOB_VIEW_UNKNOWN" : The job view to return isn't specified, or is
  /// unknown. Responses will contain at least the `JOB_VIEW_SUMMARY`
  /// information, and may contain additional information.
  /// - "JOB_VIEW_SUMMARY" : Request summary information only: Project ID, Job
  /// ID, job name, job type, job status, start/end time, and Cloud SDK version
  /// details.
  /// - "JOB_VIEW_ALL" : Request all information available for this job.
  /// - "JOB_VIEW_DESCRIPTION" : Request summary info and limited job
  /// description data for steps, labels and environment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> get(
    core.String projectId,
    core.String jobId, {
    core.String? location,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Request the job status.
  ///
  /// To request the status of a job, we recommend using
  /// `projects.locations.jobs.getMetrics` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.getMetrics` is not recommended, as you can only
  /// request the status of jobs that are running in `us-central1`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A project id.
  ///
  /// [jobId] - The job to get metrics for.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [startTime] - Return only metric data that has changed since this time.
  /// Default is to return all information about all metrics for the job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [JobMetrics].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<JobMetrics> getMetrics(
    core.String projectId,
    core.String jobId, {
    core.String? location,
    core.String? startTime,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if (startTime != null) 'startTime': [startTime],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/metrics';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return JobMetrics.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List the jobs of a project.
  ///
  /// To list the jobs of a project in a region, we recommend using
  /// `projects.locations.jobs.list` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// To list the all jobs across all regions, use `projects.jobs.aggregated`.
  /// Using `projects.jobs.list` is not recommended, as you can only get the
  /// list of jobs that are running in `us-central1`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project which owns the jobs.
  ///
  /// [filter] - The kind of filter to use.
  /// Possible string values are:
  /// - "UNKNOWN" : The filter isn't specified, or is unknown. This returns all
  /// jobs ordered on descending `JobUuid`.
  /// - "ALL" : Returns all running jobs first ordered on creation timestamp,
  /// then returns all terminated jobs ordered on the termination timestamp.
  /// - "TERMINATED" : Filters the jobs that have a terminated state, ordered on
  /// the termination timestamp. Example terminated states: `JOB_STATE_STOPPED`,
  /// `JOB_STATE_UPDATED`, `JOB_STATE_DRAINED`, etc.
  /// - "ACTIVE" : Filters the jobs that are running ordered on the creation
  /// timestamp.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [pageSize] - If there are many jobs, limit response to at most this many.
  /// The actual number of jobs returned will be the lesser of max_responses and
  /// an unspecified server-defined limit.
  ///
  /// [pageToken] - Set this to the 'next_page_token' field of a previous
  /// response to request additional results in a long list.
  ///
  /// [view] - Deprecated. ListJobs always returns summaries now. Use GetJob for
  /// other JobViews.
  /// Possible string values are:
  /// - "JOB_VIEW_UNKNOWN" : The job view to return isn't specified, or is
  /// unknown. Responses will contain at least the `JOB_VIEW_SUMMARY`
  /// information, and may contain additional information.
  /// - "JOB_VIEW_SUMMARY" : Request summary information only: Project ID, Job
  /// ID, job name, job type, job status, start/end time, and Cloud SDK version
  /// details.
  /// - "JOB_VIEW_ALL" : Request all information available for this job.
  /// - "JOB_VIEW_DESCRIPTION" : Request summary info and limited job
  /// description data for steps, labels and environment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobsResponse> list(
    core.String projectId, {
    core.String? filter,
    core.String? location,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (location != null) 'location': [location],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1b3/projects/' + commons.escapeVariable('$projectId') + '/jobs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Snapshot the state of a streaming job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project which owns the job to be snapshotted.
  ///
  /// [jobId] - The job to be snapshotted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snapshot> snapshot(
    SnapshotJobRequest request,
    core.String projectId,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        ':snapshot';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Snapshot.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the state of an existing Cloud Dataflow job.
  ///
  /// To update the state of an existing job, we recommend using
  /// `projects.locations.jobs.update` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.update` is not recommended, as you can only update
  /// the state of jobs that are running in `us-central1`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the job belongs
  /// to.
  ///
  /// [jobId] - The job ID.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> update(
    Job request,
    core.String projectId,
    core.String jobId, {
    core.String? location,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsJobsDebugResource {
  final commons.ApiRequester _requester;

  ProjectsJobsDebugResource(commons.ApiRequester client) : _requester = client;

  /// Get encoded debug configuration for component.
  ///
  /// Not cacheable.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project id.
  ///
  /// [jobId] - The job id.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetDebugConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetDebugConfigResponse> getConfig(
    GetDebugConfigRequest request,
    core.String projectId,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/debug/getConfig';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GetDebugConfigResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Send encoded debug capture data for component.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project id.
  ///
  /// [jobId] - The job id.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SendDebugCaptureResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SendDebugCaptureResponse> sendCapture(
    SendDebugCaptureRequest request,
    core.String projectId,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/debug/sendCapture';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SendDebugCaptureResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsJobsMessagesResource {
  final commons.ApiRequester _requester;

  ProjectsJobsMessagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Request the job status.
  ///
  /// To request the status of a job, we recommend using
  /// `projects.locations.jobs.messages.list` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.messages.list` is not recommended, as you can only
  /// request the status of jobs that are running in `us-central1`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A project id.
  ///
  /// [jobId] - The job to get messages about.
  ///
  /// [endTime] - Return only messages with timestamps < end_time. The default
  /// is now (i.e. return up to the latest messages available).
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [minimumImportance] - Filter to only get messages with importance >= level
  /// Possible string values are:
  /// - "JOB_MESSAGE_IMPORTANCE_UNKNOWN" : The message importance isn't
  /// specified, or is unknown.
  /// - "JOB_MESSAGE_DEBUG" : The message is at the 'debug' level: typically
  /// only useful for software engineers working on the code the job is running.
  /// Typically, Dataflow pipeline runners do not display log messages at this
  /// level by default.
  /// - "JOB_MESSAGE_DETAILED" : The message is at the 'detailed' level:
  /// somewhat verbose, but potentially useful to users. Typically, Dataflow
  /// pipeline runners do not display log messages at this level by default.
  /// These messages are displayed by default in the Dataflow monitoring UI.
  /// - "JOB_MESSAGE_BASIC" : The message is at the 'basic' level: useful for
  /// keeping track of the execution of a Dataflow pipeline. Typically, Dataflow
  /// pipeline runners display log messages at this level by default, and these
  /// messages are displayed by default in the Dataflow monitoring UI.
  /// - "JOB_MESSAGE_WARNING" : The message is at the 'warning' level:
  /// indicating a condition pertaining to a job which may require human
  /// intervention. Typically, Dataflow pipeline runners display log messages at
  /// this level by default, and these messages are displayed by default in the
  /// Dataflow monitoring UI.
  /// - "JOB_MESSAGE_ERROR" : The message is at the 'error' level: indicating a
  /// condition preventing a job from succeeding. Typically, Dataflow pipeline
  /// runners display log messages at this level by default, and these messages
  /// are displayed by default in the Dataflow monitoring UI.
  ///
  /// [pageSize] - If specified, determines the maximum number of messages to
  /// return. If unspecified, the service may choose an appropriate default, or
  /// may return an arbitrarily large number of results.
  ///
  /// [pageToken] - If supplied, this should be the value of next_page_token
  /// returned by an earlier call. This will cause the next page of results to
  /// be returned.
  ///
  /// [startTime] - If specified, return only messages with timestamps >=
  /// start_time. The default is the job creation time (i.e. beginning of
  /// messages).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobMessagesResponse> list(
    core.String projectId,
    core.String jobId, {
    core.String? endTime,
    core.String? location,
    core.String? minimumImportance,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTime,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (endTime != null) 'endTime': [endTime],
      if (location != null) 'location': [location],
      if (minimumImportance != null) 'minimumImportance': [minimumImportance],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startTime != null) 'startTime': [startTime],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/messages';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListJobMessagesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsJobsWorkItemsResource {
  final commons.ApiRequester _requester;

  ProjectsJobsWorkItemsResource(commons.ApiRequester client)
      : _requester = client;

  /// Leases a dataflow WorkItem to run.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Identifies the project this worker belongs to.
  ///
  /// [jobId] - Identifies the workflow job this worker belongs to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LeaseWorkItemResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LeaseWorkItemResponse> lease(
    LeaseWorkItemRequest request,
    core.String projectId,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/workItems:lease';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return LeaseWorkItemResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Reports the status of dataflow WorkItems leased by a worker.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project which owns the WorkItem's job.
  ///
  /// [jobId] - The job which the WorkItem is part of.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReportWorkItemStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReportWorkItemStatusResponse> reportStatus(
    ReportWorkItemStatusRequest request,
    core.String projectId,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/workItems:reportStatus';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ReportWorkItemStatusResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFlexTemplatesResource get flexTemplates =>
      ProjectsLocationsFlexTemplatesResource(_requester);
  ProjectsLocationsJobsResource get jobs =>
      ProjectsLocationsJobsResource(_requester);
  ProjectsLocationsSnapshotsResource get snapshots =>
      ProjectsLocationsSnapshotsResource(_requester);
  ProjectsLocationsSqlResource get sql =>
      ProjectsLocationsSqlResource(_requester);
  ProjectsLocationsTemplatesResource get templates =>
      ProjectsLocationsTemplatesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Send a worker_message to the service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project to send the WorkerMessages to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SendWorkerMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SendWorkerMessagesResponse> workerMessages(
    SendWorkerMessagesRequest request,
    core.String projectId,
    core.String location, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/WorkerMessages';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SendWorkerMessagesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsFlexTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFlexTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Launch a job with a FlexTemplate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
  ///
  /// [location] - Required. The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request. E.g., us-central1, us-west1.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LaunchFlexTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LaunchFlexTemplateResponse> launch(
    LaunchFlexTemplateRequest request,
    core.String projectId,
    core.String location, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/flexTemplates:launch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return LaunchFlexTemplateResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsDebugResource get debug =>
      ProjectsLocationsJobsDebugResource(_requester);
  ProjectsLocationsJobsMessagesResource get messages =>
      ProjectsLocationsJobsMessagesResource(_requester);
  ProjectsLocationsJobsSnapshotsResource get snapshots =>
      ProjectsLocationsJobsSnapshotsResource(_requester);
  ProjectsLocationsJobsStagesResource get stages =>
      ProjectsLocationsJobsStagesResource(_requester);
  ProjectsLocationsJobsWorkItemsResource get workItems =>
      ProjectsLocationsJobsWorkItemsResource(_requester);

  ProjectsLocationsJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Cloud Dataflow job.
  ///
  /// To create a job, we recommend using `projects.locations.jobs.create` with
  /// a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.create` is not recommended, as your job will always
  /// start in `us-central1`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the job belongs
  /// to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [replaceJobId] - Deprecated. This field is now in the Job message.
  ///
  /// [view] - The level of information requested in response.
  /// Possible string values are:
  /// - "JOB_VIEW_UNKNOWN" : The job view to return isn't specified, or is
  /// unknown. Responses will contain at least the `JOB_VIEW_SUMMARY`
  /// information, and may contain additional information.
  /// - "JOB_VIEW_SUMMARY" : Request summary information only: Project ID, Job
  /// ID, job name, job type, job status, start/end time, and Cloud SDK version
  /// details.
  /// - "JOB_VIEW_ALL" : Request all information available for this job.
  /// - "JOB_VIEW_DESCRIPTION" : Request summary info and limited job
  /// description data for steps, labels and environment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> create(
    Job request,
    core.String projectId,
    core.String location, {
    core.String? replaceJobId,
    core.String? view,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (replaceJobId != null) 'replaceJobId': [replaceJobId],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the state of the specified Cloud Dataflow job.
  ///
  /// To get the state of a job, we recommend using
  /// `projects.locations.jobs.get` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.get` is not recommended, as you can only get the
  /// state of jobs that are running in `us-central1`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the job belongs
  /// to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [jobId] - The job ID.
  ///
  /// [view] - The level of information requested in response.
  /// Possible string values are:
  /// - "JOB_VIEW_UNKNOWN" : The job view to return isn't specified, or is
  /// unknown. Responses will contain at least the `JOB_VIEW_SUMMARY`
  /// information, and may contain additional information.
  /// - "JOB_VIEW_SUMMARY" : Request summary information only: Project ID, Job
  /// ID, job name, job type, job status, start/end time, and Cloud SDK version
  /// details.
  /// - "JOB_VIEW_ALL" : Request all information available for this job.
  /// - "JOB_VIEW_DESCRIPTION" : Request summary info and limited job
  /// description data for steps, labels and environment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> get(
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Request detailed information about the execution status of the job.
  ///
  /// EXPERIMENTAL. This API is subject to change or removal without notice.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A project id.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [jobId] - The job to get execution details for.
  ///
  /// [pageSize] - If specified, determines the maximum number of stages to
  /// return. If unspecified, the service may choose an appropriate default, or
  /// may return an arbitrarily large number of results.
  ///
  /// [pageToken] - If supplied, this should be the value of next_page_token
  /// returned by an earlier call. This will cause the next page of results to
  /// be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [JobExecutionDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<JobExecutionDetails> getExecutionDetails(
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/executionDetails';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return JobExecutionDetails.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request the job status.
  ///
  /// To request the status of a job, we recommend using
  /// `projects.locations.jobs.getMetrics` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.getMetrics` is not recommended, as you can only
  /// request the status of jobs that are running in `us-central1`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A project id.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [jobId] - The job to get metrics for.
  ///
  /// [startTime] - Return only metric data that has changed since this time.
  /// Default is to return all information about all metrics for the job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [JobMetrics].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<JobMetrics> getMetrics(
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? startTime,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (startTime != null) 'startTime': [startTime],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/metrics';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return JobMetrics.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List the jobs of a project.
  ///
  /// To list the jobs of a project in a region, we recommend using
  /// `projects.locations.jobs.list` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// To list the all jobs across all regions, use `projects.jobs.aggregated`.
  /// Using `projects.jobs.list` is not recommended, as you can only get the
  /// list of jobs that are running in `us-central1`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project which owns the jobs.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [filter] - The kind of filter to use.
  /// Possible string values are:
  /// - "UNKNOWN" : The filter isn't specified, or is unknown. This returns all
  /// jobs ordered on descending `JobUuid`.
  /// - "ALL" : Returns all running jobs first ordered on creation timestamp,
  /// then returns all terminated jobs ordered on the termination timestamp.
  /// - "TERMINATED" : Filters the jobs that have a terminated state, ordered on
  /// the termination timestamp. Example terminated states: `JOB_STATE_STOPPED`,
  /// `JOB_STATE_UPDATED`, `JOB_STATE_DRAINED`, etc.
  /// - "ACTIVE" : Filters the jobs that are running ordered on the creation
  /// timestamp.
  ///
  /// [pageSize] - If there are many jobs, limit response to at most this many.
  /// The actual number of jobs returned will be the lesser of max_responses and
  /// an unspecified server-defined limit.
  ///
  /// [pageToken] - Set this to the 'next_page_token' field of a previous
  /// response to request additional results in a long list.
  ///
  /// [view] - Deprecated. ListJobs always returns summaries now. Use GetJob for
  /// other JobViews.
  /// Possible string values are:
  /// - "JOB_VIEW_UNKNOWN" : The job view to return isn't specified, or is
  /// unknown. Responses will contain at least the `JOB_VIEW_SUMMARY`
  /// information, and may contain additional information.
  /// - "JOB_VIEW_SUMMARY" : Request summary information only: Project ID, Job
  /// ID, job name, job type, job status, start/end time, and Cloud SDK version
  /// details.
  /// - "JOB_VIEW_ALL" : Request all information available for this job.
  /// - "JOB_VIEW_DESCRIPTION" : Request summary info and limited job
  /// description data for steps, labels and environment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobsResponse> list(
    core.String projectId,
    core.String location, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Snapshot the state of a streaming job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project which owns the job to be snapshotted.
  ///
  /// [location] - The location that contains this job.
  ///
  /// [jobId] - The job to be snapshotted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snapshot> snapshot(
    SnapshotJobRequest request,
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        ':snapshot';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Snapshot.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the state of an existing Cloud Dataflow job.
  ///
  /// To update the state of an existing job, we recommend using
  /// `projects.locations.jobs.update` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.update` is not recommended, as you can only update
  /// the state of jobs that are running in `us-central1`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the job belongs
  /// to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [jobId] - The job ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> update(
    Job request,
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsDebugResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsDebugResource(commons.ApiRequester client)
      : _requester = client;

  /// Get encoded debug configuration for component.
  ///
  /// Not cacheable.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project id.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [jobId] - The job id.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetDebugConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetDebugConfigResponse> getConfig(
    GetDebugConfigRequest request,
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/debug/getConfig';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GetDebugConfigResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Send encoded debug capture data for component.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project id.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [jobId] - The job id.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SendDebugCaptureResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SendDebugCaptureResponse> sendCapture(
    SendDebugCaptureRequest request,
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/debug/sendCapture';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SendDebugCaptureResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsMessagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsMessagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Request the job status.
  ///
  /// To request the status of a job, we recommend using
  /// `projects.locations.jobs.messages.list` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.messages.list` is not recommended, as you can only
  /// request the status of jobs that are running in `us-central1`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A project id.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [jobId] - The job to get messages about.
  ///
  /// [endTime] - Return only messages with timestamps < end_time. The default
  /// is now (i.e. return up to the latest messages available).
  ///
  /// [minimumImportance] - Filter to only get messages with importance >= level
  /// Possible string values are:
  /// - "JOB_MESSAGE_IMPORTANCE_UNKNOWN" : The message importance isn't
  /// specified, or is unknown.
  /// - "JOB_MESSAGE_DEBUG" : The message is at the 'debug' level: typically
  /// only useful for software engineers working on the code the job is running.
  /// Typically, Dataflow pipeline runners do not display log messages at this
  /// level by default.
  /// - "JOB_MESSAGE_DETAILED" : The message is at the 'detailed' level:
  /// somewhat verbose, but potentially useful to users. Typically, Dataflow
  /// pipeline runners do not display log messages at this level by default.
  /// These messages are displayed by default in the Dataflow monitoring UI.
  /// - "JOB_MESSAGE_BASIC" : The message is at the 'basic' level: useful for
  /// keeping track of the execution of a Dataflow pipeline. Typically, Dataflow
  /// pipeline runners display log messages at this level by default, and these
  /// messages are displayed by default in the Dataflow monitoring UI.
  /// - "JOB_MESSAGE_WARNING" : The message is at the 'warning' level:
  /// indicating a condition pertaining to a job which may require human
  /// intervention. Typically, Dataflow pipeline runners display log messages at
  /// this level by default, and these messages are displayed by default in the
  /// Dataflow monitoring UI.
  /// - "JOB_MESSAGE_ERROR" : The message is at the 'error' level: indicating a
  /// condition preventing a job from succeeding. Typically, Dataflow pipeline
  /// runners display log messages at this level by default, and these messages
  /// are displayed by default in the Dataflow monitoring UI.
  ///
  /// [pageSize] - If specified, determines the maximum number of messages to
  /// return. If unspecified, the service may choose an appropriate default, or
  /// may return an arbitrarily large number of results.
  ///
  /// [pageToken] - If supplied, this should be the value of next_page_token
  /// returned by an earlier call. This will cause the next page of results to
  /// be returned.
  ///
  /// [startTime] - If specified, return only messages with timestamps >=
  /// start_time. The default is the job creation time (i.e. beginning of
  /// messages).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobMessagesResponse> list(
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? endTime,
    core.String? minimumImportance,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTime,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (endTime != null) 'endTime': [endTime],
      if (minimumImportance != null) 'minimumImportance': [minimumImportance],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startTime != null) 'startTime': [startTime],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/messages';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListJobMessagesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsSnapshotsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsSnapshotsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists snapshots.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project ID to list snapshots for.
  ///
  /// [location] - The location to list snapshots in.
  ///
  /// [jobId] - If specified, list snapshots created from this job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSnapshotsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSnapshotsResponse> list(
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/snapshots';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSnapshotsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsStagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsStagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Request detailed information about the execution status of a stage of the
  /// job.
  ///
  /// EXPERIMENTAL. This API is subject to change or removal without notice.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A project id.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [jobId] - The job to get execution details for.
  ///
  /// [stageId] - The stage for which to fetch information.
  ///
  /// [endTime] - Upper time bound of work items to include, by start time.
  ///
  /// [pageSize] - If specified, determines the maximum number of work items to
  /// return. If unspecified, the service may choose an appropriate default, or
  /// may return an arbitrarily large number of results.
  ///
  /// [pageToken] - If supplied, this should be the value of next_page_token
  /// returned by an earlier call. This will cause the next page of results to
  /// be returned.
  ///
  /// [startTime] - Lower time bound of work items to include, by start time.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StageExecutionDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StageExecutionDetails> getExecutionDetails(
    core.String projectId,
    core.String location,
    core.String jobId,
    core.String stageId, {
    core.String? endTime,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTime,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (endTime != null) 'endTime': [endTime],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startTime != null) 'startTime': [startTime],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/stages/' +
        commons.escapeVariable('$stageId') +
        '/executionDetails';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return StageExecutionDetails.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsWorkItemsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsWorkItemsResource(commons.ApiRequester client)
      : _requester = client;

  /// Leases a dataflow WorkItem to run.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Identifies the project this worker belongs to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the WorkItem's job.
  ///
  /// [jobId] - Identifies the workflow job this worker belongs to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LeaseWorkItemResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LeaseWorkItemResponse> lease(
    LeaseWorkItemRequest request,
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/workItems:lease';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return LeaseWorkItemResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Reports the status of dataflow WorkItems leased by a worker.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project which owns the WorkItem's job.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the WorkItem's job.
  ///
  /// [jobId] - The job which the WorkItem is part of.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReportWorkItemStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReportWorkItemStatusResponse> reportStatus(
    ReportWorkItemStatusRequest request,
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/workItems:reportStatus';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ReportWorkItemStatusResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSnapshotsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSnapshotsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a snapshot.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the snapshot
  /// belongs to.
  ///
  /// [location] - The location that contains this snapshot.
  ///
  /// [snapshotId] - The ID of the snapshot.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeleteSnapshotResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeleteSnapshotResponse> delete(
    core.String projectId,
    core.String location,
    core.String snapshotId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/snapshots/' +
        commons.escapeVariable('$snapshotId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return DeleteSnapshotResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a snapshot.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the snapshot
  /// belongs to.
  ///
  /// [location] - The location that contains this snapshot.
  ///
  /// [snapshotId] - The ID of the snapshot.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snapshot> get(
    core.String projectId,
    core.String location,
    core.String snapshotId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/snapshots/' +
        commons.escapeVariable('$snapshotId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Snapshot.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists snapshots.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project ID to list snapshots for.
  ///
  /// [location] - The location to list snapshots in.
  ///
  /// [jobId] - If specified, list snapshots created from this job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSnapshotsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSnapshotsResponse> list(
    core.String projectId,
    core.String location, {
    core.String? jobId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (jobId != null) 'jobId': [jobId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/snapshots';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSnapshotsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSqlResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSqlResource(commons.ApiRequester client)
      : _requester = client;

  /// Validates a GoogleSQL query for Cloud Dataflow syntax.
  ///
  /// Will always confirm the given query parses correctly, and if able to look
  /// up schema information from DataCatalog, will validate that the query
  /// analyzes properly as well.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  ///
  /// [query] - The sql query to validate.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ValidateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ValidateResponse> validate(
    core.String projectId,
    core.String location, {
    core.String? query,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/sql:validate';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ValidateResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Cloud Dataflow job from a template.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> create(
    CreateJobFromTemplateRequest request,
    core.String projectId,
    core.String location, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/templates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get the template associated with a template.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  ///
  /// [gcsPath] - Required. A Cloud Storage path to the template from which to
  /// create the job. Must be valid Cloud Storage URL, beginning with 'gs://'.
  ///
  /// [view] - The view to retrieve. Defaults to METADATA_ONLY.
  /// Possible string values are:
  /// - "METADATA_ONLY" : Template view that retrieves only the metadata
  /// associated with the template.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetTemplateResponse> get(
    core.String projectId,
    core.String location, {
    core.String? gcsPath,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (gcsPath != null) 'gcsPath': [gcsPath],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/templates:get';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetTemplateResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Launch a template.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  ///
  /// [dynamicTemplate_gcsPath] - Path to dynamic template spec file on Cloud
  /// Storage. The file must be a Json serialized DynamicTemplateFieSpec object.
  ///
  /// [dynamicTemplate_stagingLocation] - Cloud Storage path for staging
  /// dependencies. Must be a valid Cloud Storage URL, beginning with `gs://`.
  ///
  /// [gcsPath] - A Cloud Storage path to the template from which to create the
  /// job. Must be valid Cloud Storage URL, beginning with 'gs://'.
  ///
  /// [validateOnly] - If true, the request is validated but not actually
  /// executed. Defaults to false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LaunchTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LaunchTemplateResponse> launch(
    LaunchTemplateParameters request,
    core.String projectId,
    core.String location, {
    core.String? dynamicTemplate_gcsPath,
    core.String? dynamicTemplate_stagingLocation,
    core.String? gcsPath,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (dynamicTemplate_gcsPath != null)
        'dynamicTemplate.gcsPath': [dynamicTemplate_gcsPath],
      if (dynamicTemplate_stagingLocation != null)
        'dynamicTemplate.stagingLocation': [dynamicTemplate_stagingLocation],
      if (gcsPath != null) 'gcsPath': [gcsPath],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/templates:launch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return LaunchTemplateResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSnapshotsResource {
  final commons.ApiRequester _requester;

  ProjectsSnapshotsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a snapshot.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the snapshot
  /// belongs to.
  ///
  /// [snapshotId] - The ID of the snapshot.
  ///
  /// [location] - The location that contains this snapshot.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snapshot> get(
    core.String projectId,
    core.String snapshotId, {
    core.String? location,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/snapshots/' +
        commons.escapeVariable('$snapshotId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Snapshot.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists snapshots.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project ID to list snapshots for.
  ///
  /// [jobId] - If specified, list snapshots created from this job.
  ///
  /// [location] - The location to list snapshots in.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSnapshotsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSnapshotsResponse> list(
    core.String projectId, {
    core.String? jobId,
    core.String? location,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (jobId != null) 'jobId': [jobId],
      if (location != null) 'location': [location],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1b3/projects/' + commons.escapeVariable('$projectId') + '/snapshots';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSnapshotsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsTemplatesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a Cloud Dataflow job from a template.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> create(
    CreateJobFromTemplateRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1b3/projects/' + commons.escapeVariable('$projectId') + '/templates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get the template associated with a template.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
  ///
  /// [gcsPath] - Required. A Cloud Storage path to the template from which to
  /// create the job. Must be valid Cloud Storage URL, beginning with 'gs://'.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  ///
  /// [view] - The view to retrieve. Defaults to METADATA_ONLY.
  /// Possible string values are:
  /// - "METADATA_ONLY" : Template view that retrieves only the metadata
  /// associated with the template.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetTemplateResponse> get(
    core.String projectId, {
    core.String? gcsPath,
    core.String? location,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (gcsPath != null) 'gcsPath': [gcsPath],
      if (location != null) 'location': [location],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/templates:get';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetTemplateResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Launch a template.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
  ///
  /// [dynamicTemplate_gcsPath] - Path to dynamic template spec file on Cloud
  /// Storage. The file must be a Json serialized DynamicTemplateFieSpec object.
  ///
  /// [dynamicTemplate_stagingLocation] - Cloud Storage path for staging
  /// dependencies. Must be a valid Cloud Storage URL, beginning with `gs://`.
  ///
  /// [gcsPath] - A Cloud Storage path to the template from which to create the
  /// job. Must be valid Cloud Storage URL, beginning with 'gs://'.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  ///
  /// [validateOnly] - If true, the request is validated but not actually
  /// executed. Defaults to false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LaunchTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LaunchTemplateResponse> launch(
    LaunchTemplateParameters request,
    core.String projectId, {
    core.String? dynamicTemplate_gcsPath,
    core.String? dynamicTemplate_stagingLocation,
    core.String? gcsPath,
    core.String? location,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (dynamicTemplate_gcsPath != null)
        'dynamicTemplate.gcsPath': [dynamicTemplate_gcsPath],
      if (dynamicTemplate_stagingLocation != null)
        'dynamicTemplate.stagingLocation': [dynamicTemplate_stagingLocation],
      if (gcsPath != null) 'gcsPath': [gcsPath],
      if (location != null) 'location': [location],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/templates:launch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return LaunchTemplateResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Obsolete in favor of ApproximateReportedProgress and
/// ApproximateSplitRequest.
class ApproximateProgress {
  /// Obsolete.
  core.double? percentComplete;

  /// Obsolete.
  Position? position;

  /// Obsolete.
  core.String? remainingTime;

  ApproximateProgress();

  ApproximateProgress.fromJson(core.Map _json) {
    if (_json.containsKey('percentComplete')) {
      percentComplete = (_json['percentComplete'] as core.num).toDouble();
    }
    if (_json.containsKey('position')) {
      position = Position.fromJson(
          _json['position'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('remainingTime')) {
      remainingTime = _json['remainingTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (percentComplete != null) 'percentComplete': percentComplete!,
        if (position != null) 'position': position!.toJson(),
        if (remainingTime != null) 'remainingTime': remainingTime!,
      };
}

/// A progress measurement of a WorkItem by a worker.
class ApproximateReportedProgress {
  /// Total amount of parallelism in the portion of input of this task that has
  /// already been consumed and is no longer active.
  ///
  /// In the first two examples above (see remaining_parallelism), the value
  /// should be 29 or 2 respectively. The sum of remaining_parallelism and
  /// consumed_parallelism should equal the total amount of parallelism in this
  /// work item. If specified, must be finite.
  ReportedParallelism? consumedParallelism;

  /// Completion as fraction of the input consumed, from 0.0 (beginning, nothing
  /// consumed), to 1.0 (end of the input, entire input consumed).
  core.double? fractionConsumed;

  /// A Position within the work to represent a progress.
  Position? position;

  /// Total amount of parallelism in the input of this task that remains, (i.e.
  /// can be delegated to this task and any new tasks via dynamic splitting).
  ///
  /// Always at least 1 for non-finished work items and 0 for finished. "Amount
  /// of parallelism" refers to how many non-empty parts of the input can be
  /// read in parallel. This does not necessarily equal number of records. An
  /// input that can be read in parallel down to the individual records is
  /// called "perfectly splittable". An example of non-perfectly parallelizable
  /// input is a block-compressed file format where a block of records has to be
  /// read as a whole, but different blocks can be read in parallel. Examples: *
  /// If we are processing record #30 (starting at 1) out of 50 in a perfectly
  /// splittable 50-record input, this value should be 21 (20 remaining + 1
  /// current). * If we are reading through block 3 in a block-compressed file
  /// consisting of 5 blocks, this value should be 3 (since blocks 4 and 5 can
  /// be processed in parallel by new tasks via dynamic splitting and the
  /// current task remains processing block 3). * If we are reading through the
  /// last block in a block-compressed file, or reading or processing the last
  /// record in a perfectly splittable input, this value should be 1, because
  /// apart from the current task, no additional remainder can be split off.
  ReportedParallelism? remainingParallelism;

  ApproximateReportedProgress();

  ApproximateReportedProgress.fromJson(core.Map _json) {
    if (_json.containsKey('consumedParallelism')) {
      consumedParallelism = ReportedParallelism.fromJson(
          _json['consumedParallelism'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fractionConsumed')) {
      fractionConsumed = (_json['fractionConsumed'] as core.num).toDouble();
    }
    if (_json.containsKey('position')) {
      position = Position.fromJson(
          _json['position'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('remainingParallelism')) {
      remainingParallelism = ReportedParallelism.fromJson(
          _json['remainingParallelism'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumedParallelism != null)
          'consumedParallelism': consumedParallelism!.toJson(),
        if (fractionConsumed != null) 'fractionConsumed': fractionConsumed!,
        if (position != null) 'position': position!.toJson(),
        if (remainingParallelism != null)
          'remainingParallelism': remainingParallelism!.toJson(),
      };
}

/// A suggestion by the service to the worker to dynamically split the WorkItem.
class ApproximateSplitRequest {
  /// A fraction at which to split the work item, from 0.0 (beginning of the
  /// input) to 1.0 (end of the input).
  core.double? fractionConsumed;

  /// The fraction of the remainder of work to split the work item at, from 0.0
  /// (split at the current position) to 1.0 (end of the input).
  core.double? fractionOfRemainder;

  /// A Position at which to split the work item.
  Position? position;

  ApproximateSplitRequest();

  ApproximateSplitRequest.fromJson(core.Map _json) {
    if (_json.containsKey('fractionConsumed')) {
      fractionConsumed = (_json['fractionConsumed'] as core.num).toDouble();
    }
    if (_json.containsKey('fractionOfRemainder')) {
      fractionOfRemainder =
          (_json['fractionOfRemainder'] as core.num).toDouble();
    }
    if (_json.containsKey('position')) {
      position = Position.fromJson(
          _json['position'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (fractionConsumed != null) 'fractionConsumed': fractionConsumed!,
        if (fractionOfRemainder != null)
          'fractionOfRemainder': fractionOfRemainder!,
        if (position != null) 'position': position!.toJson(),
      };
}

/// A structured message reporting an autoscaling decision made by the Dataflow
/// service.
class AutoscalingEvent {
  /// The current number of workers the job has.
  core.String? currentNumWorkers;

  /// A message describing why the system decided to adjust the current number
  /// of workers, why it failed, or why the system decided to not make any
  /// changes to the number of workers.
  StructuredMessage? description;

  /// The type of autoscaling event to report.
  /// Possible string values are:
  /// - "TYPE_UNKNOWN" : Default type for the enum. Value should never be
  /// returned.
  /// - "TARGET_NUM_WORKERS_CHANGED" : The TARGET_NUM_WORKERS_CHANGED type
  /// should be used when the target worker pool size has changed at the start
  /// of an actuation. An event should always be specified as
  /// TARGET_NUM_WORKERS_CHANGED if it reflects a change in the
  /// target_num_workers.
  /// - "CURRENT_NUM_WORKERS_CHANGED" : The CURRENT_NUM_WORKERS_CHANGED type
  /// should be used when actual worker pool size has been changed, but the
  /// target_num_workers has not changed.
  /// - "ACTUATION_FAILURE" : The ACTUATION_FAILURE type should be used when we
  /// want to report an error to the user indicating why the current number of
  /// workers in the pool could not be changed. Displayed in the current status
  /// and history widgets.
  /// - "NO_CHANGE" : Used when we want to report to the user a reason why we
  /// are not currently adjusting the number of workers. Should specify both
  /// target_num_workers, current_num_workers and a decision_message.
  core.String? eventType;

  /// The target number of workers the worker pool wants to resize to use.
  core.String? targetNumWorkers;

  /// The time this event was emitted to indicate a new target or current
  /// num_workers value.
  core.String? time;

  /// A short and friendly name for the worker pool this event refers to,
  /// populated from the value of PoolStageRelation::user_pool_name.
  core.String? workerPool;

  AutoscalingEvent();

  AutoscalingEvent.fromJson(core.Map _json) {
    if (_json.containsKey('currentNumWorkers')) {
      currentNumWorkers = _json['currentNumWorkers'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = StructuredMessage.fromJson(
          _json['description'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('eventType')) {
      eventType = _json['eventType'] as core.String;
    }
    if (_json.containsKey('targetNumWorkers')) {
      targetNumWorkers = _json['targetNumWorkers'] as core.String;
    }
    if (_json.containsKey('time')) {
      time = _json['time'] as core.String;
    }
    if (_json.containsKey('workerPool')) {
      workerPool = _json['workerPool'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentNumWorkers != null) 'currentNumWorkers': currentNumWorkers!,
        if (description != null) 'description': description!.toJson(),
        if (eventType != null) 'eventType': eventType!,
        if (targetNumWorkers != null) 'targetNumWorkers': targetNumWorkers!,
        if (time != null) 'time': time!,
        if (workerPool != null) 'workerPool': workerPool!,
      };
}

/// Settings for WorkerPool autoscaling.
class AutoscalingSettings {
  /// The algorithm to use for autoscaling.
  /// Possible string values are:
  /// - "AUTOSCALING_ALGORITHM_UNKNOWN" : The algorithm is unknown, or
  /// unspecified.
  /// - "AUTOSCALING_ALGORITHM_NONE" : Disable autoscaling.
  /// - "AUTOSCALING_ALGORITHM_BASIC" : Increase worker count over time to
  /// reduce job execution time.
  core.String? algorithm;

  /// The maximum number of workers to cap scaling at.
  core.int? maxNumWorkers;

  AutoscalingSettings();

  AutoscalingSettings.fromJson(core.Map _json) {
    if (_json.containsKey('algorithm')) {
      algorithm = _json['algorithm'] as core.String;
    }
    if (_json.containsKey('maxNumWorkers')) {
      maxNumWorkers = _json['maxNumWorkers'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (maxNumWorkers != null) 'maxNumWorkers': maxNumWorkers!,
      };
}

/// Metadata for a BigQuery connector used by the job.
class BigQueryIODetails {
  /// Dataset accessed in the connection.
  core.String? dataset;

  /// Project accessed in the connection.
  core.String? projectId;

  /// Query used to access data in the connection.
  core.String? query;

  /// Table accessed in the connection.
  core.String? table;

  BigQueryIODetails();

  BigQueryIODetails.fromJson(core.Map _json) {
    if (_json.containsKey('dataset')) {
      dataset = _json['dataset'] as core.String;
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
    if (_json.containsKey('query')) {
      query = _json['query'] as core.String;
    }
    if (_json.containsKey('table')) {
      table = _json['table'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (projectId != null) 'projectId': projectId!,
        if (query != null) 'query': query!,
        if (table != null) 'table': table!,
      };
}

/// Metadata for a Cloud BigTable connector used by the job.
class BigTableIODetails {
  /// InstanceId accessed in the connection.
  core.String? instanceId;

  /// ProjectId accessed in the connection.
  core.String? projectId;

  /// TableId accessed in the connection.
  core.String? tableId;

  BigTableIODetails();

  BigTableIODetails.fromJson(core.Map _json) {
    if (_json.containsKey('instanceId')) {
      instanceId = _json['instanceId'] as core.String;
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
    if (_json.containsKey('tableId')) {
      tableId = _json['tableId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (instanceId != null) 'instanceId': instanceId!,
        if (projectId != null) 'projectId': projectId!,
        if (tableId != null) 'tableId': tableId!,
      };
}

/// Modeled after information exposed by /proc/stat.
class CPUTime {
  /// Average CPU utilization rate (% non-idle cpu / second) since previous
  /// sample.
  core.double? rate;

  /// Timestamp of the measurement.
  core.String? timestamp;

  /// Total active CPU time across all cores (ie., non-idle) in milliseconds
  /// since start-up.
  core.String? totalMs;

  CPUTime();

  CPUTime.fromJson(core.Map _json) {
    if (_json.containsKey('rate')) {
      rate = (_json['rate'] as core.num).toDouble();
    }
    if (_json.containsKey('timestamp')) {
      timestamp = _json['timestamp'] as core.String;
    }
    if (_json.containsKey('totalMs')) {
      totalMs = _json['totalMs'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (rate != null) 'rate': rate!,
        if (timestamp != null) 'timestamp': timestamp!,
        if (totalMs != null) 'totalMs': totalMs!,
      };
}

/// Description of an interstitial value between transforms in an execution
/// stage.
class ComponentSource {
  /// Dataflow service generated name for this source.
  core.String? name;

  /// User name for the original user transform or collection with which this
  /// source is most closely associated.
  core.String? originalTransformOrCollection;

  /// Human-readable name for this transform; may be user or system generated.
  core.String? userName;

  ComponentSource();

  ComponentSource.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('originalTransformOrCollection')) {
      originalTransformOrCollection =
          _json['originalTransformOrCollection'] as core.String;
    }
    if (_json.containsKey('userName')) {
      userName = _json['userName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (originalTransformOrCollection != null)
          'originalTransformOrCollection': originalTransformOrCollection!,
        if (userName != null) 'userName': userName!,
      };
}

/// Description of a transform executed as part of an execution stage.
class ComponentTransform {
  /// Dataflow service generated name for this source.
  core.String? name;

  /// User name for the original user transform with which this transform is
  /// most closely associated.
  core.String? originalTransform;

  /// Human-readable name for this transform; may be user or system generated.
  core.String? userName;

  ComponentTransform();

  ComponentTransform.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('originalTransform')) {
      originalTransform = _json['originalTransform'] as core.String;
    }
    if (_json.containsKey('userName')) {
      userName = _json['userName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (originalTransform != null) 'originalTransform': originalTransform!,
        if (userName != null) 'userName': userName!,
      };
}

/// All configuration data for a particular Computation.
class ComputationTopology {
  /// The ID of the computation.
  core.String? computationId;

  /// The inputs to the computation.
  core.List<StreamLocation>? inputs;

  /// The key ranges processed by the computation.
  core.List<KeyRangeLocation>? keyRanges;

  /// The outputs from the computation.
  core.List<StreamLocation>? outputs;

  /// The state family values.
  core.List<StateFamilyConfig>? stateFamilies;

  /// The system stage name.
  core.String? systemStageName;

  ComputationTopology();

  ComputationTopology.fromJson(core.Map _json) {
    if (_json.containsKey('computationId')) {
      computationId = _json['computationId'] as core.String;
    }
    if (_json.containsKey('inputs')) {
      inputs = (_json['inputs'] as core.List)
          .map<StreamLocation>((value) => StreamLocation.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('keyRanges')) {
      keyRanges = (_json['keyRanges'] as core.List)
          .map<KeyRangeLocation>((value) => KeyRangeLocation.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('outputs')) {
      outputs = (_json['outputs'] as core.List)
          .map<StreamLocation>((value) => StreamLocation.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('stateFamilies')) {
      stateFamilies = (_json['stateFamilies'] as core.List)
          .map<StateFamilyConfig>((value) => StateFamilyConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('systemStageName')) {
      systemStageName = _json['systemStageName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (computationId != null) 'computationId': computationId!,
        if (inputs != null)
          'inputs': inputs!.map((value) => value.toJson()).toList(),
        if (keyRanges != null)
          'keyRanges': keyRanges!.map((value) => value.toJson()).toList(),
        if (outputs != null)
          'outputs': outputs!.map((value) => value.toJson()).toList(),
        if (stateFamilies != null)
          'stateFamilies':
              stateFamilies!.map((value) => value.toJson()).toList(),
        if (systemStageName != null) 'systemStageName': systemStageName!,
      };
}

/// A position that encapsulates an inner position and an index for the inner
/// position.
///
/// A ConcatPosition can be used by a reader of a source that encapsulates a set
/// of other sources.
class ConcatPosition {
  /// Index of the inner source.
  core.int? index;

  /// Position within the inner source.
  Position? position;

  ConcatPosition();

  ConcatPosition.fromJson(core.Map _json) {
    if (_json.containsKey('index')) {
      index = _json['index'] as core.int;
    }
    if (_json.containsKey('position')) {
      position = Position.fromJson(
          _json['position'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (index != null) 'index': index!,
        if (position != null) 'position': position!.toJson(),
      };
}

/// Container Spec.
class ContainerSpec {
  /// Default runtime environment for the job.
  FlexTemplateRuntimeEnvironment? defaultEnvironment;

  /// Name of the docker container image.
  ///
  /// E.g., gcr.io/project/some-image
  core.String? image;

  /// Metadata describing a template including description and validation rules.
  TemplateMetadata? metadata;

  /// SDK info of the Flex Template.
  ///
  /// Required.
  SDKInfo? sdkInfo;

  ContainerSpec();

  ContainerSpec.fromJson(core.Map _json) {
    if (_json.containsKey('defaultEnvironment')) {
      defaultEnvironment = FlexTemplateRuntimeEnvironment.fromJson(
          _json['defaultEnvironment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('image')) {
      image = _json['image'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata = TemplateMetadata.fromJson(
          _json['metadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sdkInfo')) {
      sdkInfo = SDKInfo.fromJson(
          _json['sdkInfo'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultEnvironment != null)
          'defaultEnvironment': defaultEnvironment!.toJson(),
        if (image != null) 'image': image!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (sdkInfo != null) 'sdkInfo': sdkInfo!.toJson(),
      };
}

/// CounterMetadata includes all static non-name non-value counter attributes.
class CounterMetadata {
  /// Human-readable description of the counter semantics.
  core.String? description;

  /// Counter aggregation kind.
  /// Possible string values are:
  /// - "INVALID" : Counter aggregation kind was not set.
  /// - "SUM" : Aggregated value is the sum of all contributed values.
  /// - "MAX" : Aggregated value is the max of all contributed values.
  /// - "MIN" : Aggregated value is the min of all contributed values.
  /// - "MEAN" : Aggregated value is the mean of all contributed values.
  /// - "OR" : Aggregated value represents the logical 'or' of all contributed
  /// values.
  /// - "AND" : Aggregated value represents the logical 'and' of all contributed
  /// values.
  /// - "SET" : Aggregated value is a set of unique contributed values.
  /// - "DISTRIBUTION" : Aggregated value captures statistics about a
  /// distribution.
  /// - "LATEST_VALUE" : Aggregated value tracks the latest value of a variable.
  core.String? kind;

  /// A string referring to the unit type.
  core.String? otherUnits;

  /// System defined Units, see above enum.
  /// Possible string values are:
  /// - "BYTES" : Counter returns a value in bytes.
  /// - "BYTES_PER_SEC" : Counter returns a value in bytes per second.
  /// - "MILLISECONDS" : Counter returns a value in milliseconds.
  /// - "MICROSECONDS" : Counter returns a value in microseconds.
  /// - "NANOSECONDS" : Counter returns a value in nanoseconds.
  /// - "TIMESTAMP_MSEC" : Counter returns a timestamp in milliseconds.
  /// - "TIMESTAMP_USEC" : Counter returns a timestamp in microseconds.
  /// - "TIMESTAMP_NSEC" : Counter returns a timestamp in nanoseconds.
  core.String? standardUnits;

  CounterMetadata();

  CounterMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('otherUnits')) {
      otherUnits = _json['otherUnits'] as core.String;
    }
    if (_json.containsKey('standardUnits')) {
      standardUnits = _json['standardUnits'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (kind != null) 'kind': kind!,
        if (otherUnits != null) 'otherUnits': otherUnits!,
        if (standardUnits != null) 'standardUnits': standardUnits!,
      };
}

/// Identifies a counter within a per-job namespace.
///
/// Counters whose structured names are the same get merged into a single value
/// for the job.
class CounterStructuredName {
  /// Name of the optimized step being executed by the workers.
  core.String? componentStepName;

  /// Name of the stage.
  ///
  /// An execution step contains multiple component steps.
  core.String? executionStepName;

  /// Index of an input collection that's being read from/written to as a side
  /// input.
  ///
  /// The index identifies a step's side inputs starting by 1 (e.g. the first
  /// side input has input_index 1, the third has input_index 3). Side inputs
  /// are identified by a pair of (original_step_name, input_index). This field
  /// helps uniquely identify them.
  core.int? inputIndex;

  /// Counter name.
  ///
  /// Not necessarily globally-unique, but unique within the context of the
  /// other fields. Required.
  core.String? name;

  /// One of the standard Origins defined above.
  /// Possible string values are:
  /// - "SYSTEM" : Counter was created by the Dataflow system.
  /// - "USER" : Counter was created by the user.
  core.String? origin;

  /// A string containing a more specific namespace of the counter's origin.
  core.String? originNamespace;

  /// The step name requesting an operation, such as GBK.
  ///
  /// I.e. the ParDo causing a read/write from shuffle to occur, or a read from
  /// side inputs.
  core.String? originalRequestingStepName;

  /// System generated name of the original step in the user's graph, before
  /// optimization.
  core.String? originalStepName;

  /// Portion of this counter, either key or value.
  /// Possible string values are:
  /// - "ALL" : Counter portion has not been set.
  /// - "KEY" : Counter reports a key.
  /// - "VALUE" : Counter reports a value.
  core.String? portion;

  /// ID of a particular worker.
  core.String? workerId;

  CounterStructuredName();

  CounterStructuredName.fromJson(core.Map _json) {
    if (_json.containsKey('componentStepName')) {
      componentStepName = _json['componentStepName'] as core.String;
    }
    if (_json.containsKey('executionStepName')) {
      executionStepName = _json['executionStepName'] as core.String;
    }
    if (_json.containsKey('inputIndex')) {
      inputIndex = _json['inputIndex'] as core.int;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('origin')) {
      origin = _json['origin'] as core.String;
    }
    if (_json.containsKey('originNamespace')) {
      originNamespace = _json['originNamespace'] as core.String;
    }
    if (_json.containsKey('originalRequestingStepName')) {
      originalRequestingStepName =
          _json['originalRequestingStepName'] as core.String;
    }
    if (_json.containsKey('originalStepName')) {
      originalStepName = _json['originalStepName'] as core.String;
    }
    if (_json.containsKey('portion')) {
      portion = _json['portion'] as core.String;
    }
    if (_json.containsKey('workerId')) {
      workerId = _json['workerId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (componentStepName != null) 'componentStepName': componentStepName!,
        if (executionStepName != null) 'executionStepName': executionStepName!,
        if (inputIndex != null) 'inputIndex': inputIndex!,
        if (name != null) 'name': name!,
        if (origin != null) 'origin': origin!,
        if (originNamespace != null) 'originNamespace': originNamespace!,
        if (originalRequestingStepName != null)
          'originalRequestingStepName': originalRequestingStepName!,
        if (originalStepName != null) 'originalStepName': originalStepName!,
        if (portion != null) 'portion': portion!,
        if (workerId != null) 'workerId': workerId!,
      };
}

/// A single message which encapsulates structured name and metadata for a given
/// counter.
class CounterStructuredNameAndMetadata {
  /// Metadata associated with a counter
  CounterMetadata? metadata;

  /// Structured name of the counter.
  CounterStructuredName? name;

  CounterStructuredNameAndMetadata();

  CounterStructuredNameAndMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('metadata')) {
      metadata = CounterMetadata.fromJson(
          _json['metadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = CounterStructuredName.fromJson(
          _json['name'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (name != null) 'name': name!.toJson(),
      };
}

/// An update to a Counter sent from a worker.
class CounterUpdate {
  /// Boolean value for And, Or.
  core.bool? boolean;

  /// True if this counter is reported as the total cumulative aggregate value
  /// accumulated since the worker started working on this WorkItem.
  ///
  /// By default this is false, indicating that this counter is reported as a
  /// delta.
  core.bool? cumulative;

  /// Distribution data
  DistributionUpdate? distribution;

  /// Floating point value for Sum, Max, Min.
  core.double? floatingPoint;

  /// List of floating point numbers, for Set.
  FloatingPointList? floatingPointList;

  /// Floating point mean aggregation value for Mean.
  FloatingPointMean? floatingPointMean;

  /// Integer value for Sum, Max, Min.
  SplitInt64? integer;

  /// Gauge data
  IntegerGauge? integerGauge;

  /// List of integers, for Set.
  IntegerList? integerList;

  /// Integer mean aggregation value for Mean.
  IntegerMean? integerMean;

  /// Value for internally-defined counters used by the Dataflow service.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? internal;

  /// Counter name and aggregation type.
  NameAndKind? nameAndKind;

  /// The service-generated short identifier for this counter.
  ///
  /// The short_id -> (name, metadata) mapping is constant for the lifetime of a
  /// job.
  core.String? shortId;

  /// List of strings, for Set.
  StringList? stringList;

  /// Counter structured name and metadata.
  CounterStructuredNameAndMetadata? structuredNameAndMetadata;

  CounterUpdate();

  CounterUpdate.fromJson(core.Map _json) {
    if (_json.containsKey('boolean')) {
      boolean = _json['boolean'] as core.bool;
    }
    if (_json.containsKey('cumulative')) {
      cumulative = _json['cumulative'] as core.bool;
    }
    if (_json.containsKey('distribution')) {
      distribution = DistributionUpdate.fromJson(
          _json['distribution'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('floatingPoint')) {
      floatingPoint = (_json['floatingPoint'] as core.num).toDouble();
    }
    if (_json.containsKey('floatingPointList')) {
      floatingPointList = FloatingPointList.fromJson(
          _json['floatingPointList'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('floatingPointMean')) {
      floatingPointMean = FloatingPointMean.fromJson(
          _json['floatingPointMean'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('integer')) {
      integer = SplitInt64.fromJson(
          _json['integer'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('integerGauge')) {
      integerGauge = IntegerGauge.fromJson(
          _json['integerGauge'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('integerList')) {
      integerList = IntegerList.fromJson(
          _json['integerList'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('integerMean')) {
      integerMean = IntegerMean.fromJson(
          _json['integerMean'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('internal')) {
      internal = _json['internal'] as core.Object;
    }
    if (_json.containsKey('nameAndKind')) {
      nameAndKind = NameAndKind.fromJson(
          _json['nameAndKind'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('shortId')) {
      shortId = _json['shortId'] as core.String;
    }
    if (_json.containsKey('stringList')) {
      stringList = StringList.fromJson(
          _json['stringList'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('structuredNameAndMetadata')) {
      structuredNameAndMetadata = CounterStructuredNameAndMetadata.fromJson(
          _json['structuredNameAndMetadata']
              as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolean != null) 'boolean': boolean!,
        if (cumulative != null) 'cumulative': cumulative!,
        if (distribution != null) 'distribution': distribution!.toJson(),
        if (floatingPoint != null) 'floatingPoint': floatingPoint!,
        if (floatingPointList != null)
          'floatingPointList': floatingPointList!.toJson(),
        if (floatingPointMean != null)
          'floatingPointMean': floatingPointMean!.toJson(),
        if (integer != null) 'integer': integer!.toJson(),
        if (integerGauge != null) 'integerGauge': integerGauge!.toJson(),
        if (integerList != null) 'integerList': integerList!.toJson(),
        if (integerMean != null) 'integerMean': integerMean!.toJson(),
        if (internal != null) 'internal': internal!,
        if (nameAndKind != null) 'nameAndKind': nameAndKind!.toJson(),
        if (shortId != null) 'shortId': shortId!,
        if (stringList != null) 'stringList': stringList!.toJson(),
        if (structuredNameAndMetadata != null)
          'structuredNameAndMetadata': structuredNameAndMetadata!.toJson(),
      };
}

/// A request to create a Cloud Dataflow job from a template.
class CreateJobFromTemplateRequest {
  /// The runtime environment for the job.
  RuntimeEnvironment? environment;

  /// A Cloud Storage path to the template from which to create the job.
  ///
  /// Must be a valid Cloud Storage URL, beginning with `gs://`.
  ///
  /// Required.
  core.String? gcsPath;

  /// The job name to use for the created job.
  ///
  /// Required.
  core.String? jobName;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  core.String? location;

  /// The runtime parameters to pass to the job.
  core.Map<core.String, core.String>? parameters;

  CreateJobFromTemplateRequest();

  CreateJobFromTemplateRequest.fromJson(core.Map _json) {
    if (_json.containsKey('environment')) {
      environment = RuntimeEnvironment.fromJson(
          _json['environment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('gcsPath')) {
      gcsPath = _json['gcsPath'] as core.String;
    }
    if (_json.containsKey('jobName')) {
      jobName = _json['jobName'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('parameters')) {
      parameters =
          (_json['parameters'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (environment != null) 'environment': environment!.toJson(),
        if (gcsPath != null) 'gcsPath': gcsPath!,
        if (jobName != null) 'jobName': jobName!,
        if (location != null) 'location': location!,
        if (parameters != null) 'parameters': parameters!,
      };
}

/// Identifies the location of a custom souce.
class CustomSourceLocation {
  /// Whether this source is stateful.
  core.bool? stateful;

  CustomSourceLocation();

  CustomSourceLocation.fromJson(core.Map _json) {
    if (_json.containsKey('stateful')) {
      stateful = _json['stateful'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (stateful != null) 'stateful': stateful!,
      };
}

/// Data disk assignment for a given VM instance.
class DataDiskAssignment {
  /// Mounted data disks.
  ///
  /// The order is important a data disk's 0-based index in this list defines
  /// which persistent directory the disk is mounted to, for example the list of
  /// { "myproject-1014-104817-4c2-harness-0-disk-0" }, {
  /// "myproject-1014-104817-4c2-harness-0-disk-1" }.
  core.List<core.String>? dataDisks;

  /// VM instance name the data disks mounted to, for example
  /// "myproject-1014-104817-4c2-harness-0".
  core.String? vmInstance;

  DataDiskAssignment();

  DataDiskAssignment.fromJson(core.Map _json) {
    if (_json.containsKey('dataDisks')) {
      dataDisks = (_json['dataDisks'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('vmInstance')) {
      vmInstance = _json['vmInstance'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataDisks != null) 'dataDisks': dataDisks!,
        if (vmInstance != null) 'vmInstance': vmInstance!,
      };
}

/// Metadata for a Datastore connector used by the job.
class DatastoreIODetails {
  /// Namespace used in the connection.
  core.String? namespace;

  /// ProjectId accessed in the connection.
  core.String? projectId;

  DatastoreIODetails();

  DatastoreIODetails.fromJson(core.Map _json) {
    if (_json.containsKey('namespace')) {
      namespace = _json['namespace'] as core.String;
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (namespace != null) 'namespace': namespace!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Describes any options that have an effect on the debugging of pipelines.
class DebugOptions {
  /// When true, enables the logging of the literal hot key to the user's Cloud
  /// Logging.
  core.bool? enableHotKeyLogging;

  DebugOptions();

  DebugOptions.fromJson(core.Map _json) {
    if (_json.containsKey('enableHotKeyLogging')) {
      enableHotKeyLogging = _json['enableHotKeyLogging'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableHotKeyLogging != null)
          'enableHotKeyLogging': enableHotKeyLogging!,
      };
}

/// Response from deleting a snapshot.
class DeleteSnapshotResponse {
  DeleteSnapshotResponse();

  DeleteSnapshotResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Specification of one of the bundles produced as a result of splitting a
/// Source (e.g. when executing a SourceSplitRequest, or when splitting an
/// active task using WorkItemStatus.dynamic_source_split), relative to the
/// source being split.
class DerivedSource {
  /// What source to base the produced source on (if any).
  /// Possible string values are:
  /// - "SOURCE_DERIVATION_MODE_UNKNOWN" : The source derivation is unknown, or
  /// unspecified.
  /// - "SOURCE_DERIVATION_MODE_INDEPENDENT" : Produce a completely independent
  /// Source with no base.
  /// - "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT" : Produce a Source based on
  /// the Source being split.
  /// - "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT" : Produce a Source based on
  /// the base of the Source being split.
  core.String? derivationMode;

  /// Specification of the source.
  Source? source;

  DerivedSource();

  DerivedSource.fromJson(core.Map _json) {
    if (_json.containsKey('derivationMode')) {
      derivationMode = _json['derivationMode'] as core.String;
    }
    if (_json.containsKey('source')) {
      source = Source.fromJson(
          _json['source'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (derivationMode != null) 'derivationMode': derivationMode!,
        if (source != null) 'source': source!.toJson(),
      };
}

/// Describes the data disk used by a workflow job.
class Disk {
  /// Disk storage type, as defined by Google Compute Engine.
  ///
  /// This must be a disk type appropriate to the project and zone in which the
  /// workers will run. If unknown or unspecified, the service will attempt to
  /// choose a reasonable default. For example, the standard persistent disk
  /// type is a resource name typically ending in "pd-standard". If SSD
  /// persistent disks are available, the resource name typically ends with
  /// "pd-ssd". The actual valid values are defined the Google Compute Engine
  /// API, not by the Cloud Dataflow API; consult the Google Compute Engine
  /// documentation for more information about determining the set of available
  /// disk types for a particular project and zone. Google Compute Engine Disk
  /// types are local to a particular project in a particular zone, and so the
  /// resource name will typically look something like this:
  /// compute.googleapis.com/projects/project-id/zones/zone/diskTypes/pd-standard
  core.String? diskType;

  /// Directory in a VM where disk is mounted.
  core.String? mountPoint;

  /// Size of disk in GB.
  ///
  /// If zero or unspecified, the service will attempt to choose a reasonable
  /// default.
  core.int? sizeGb;

  Disk();

  Disk.fromJson(core.Map _json) {
    if (_json.containsKey('diskType')) {
      diskType = _json['diskType'] as core.String;
    }
    if (_json.containsKey('mountPoint')) {
      mountPoint = _json['mountPoint'] as core.String;
    }
    if (_json.containsKey('sizeGb')) {
      sizeGb = _json['sizeGb'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskType != null) 'diskType': diskType!,
        if (mountPoint != null) 'mountPoint': mountPoint!,
        if (sizeGb != null) 'sizeGb': sizeGb!,
      };
}

/// Data provided with a pipeline or transform to provide descriptive info.
class DisplayData {
  /// Contains value if the data is of a boolean type.
  core.bool? boolValue;

  /// Contains value if the data is of duration type.
  core.String? durationValue;

  /// Contains value if the data is of float type.
  core.double? floatValue;

  /// Contains value if the data is of int64 type.
  core.String? int64Value;

  /// Contains value if the data is of java class type.
  core.String? javaClassValue;

  /// The key identifying the display data.
  ///
  /// This is intended to be used as a label for the display data when viewed in
  /// a dax monitoring system.
  core.String? key;

  /// An optional label to display in a dax UI for the element.
  core.String? label;

  /// The namespace for the key.
  ///
  /// This is usually a class name or programming language namespace (i.e.
  /// python module) which defines the display data. This allows a dax
  /// monitoring system to specially handle the data and perform custom
  /// rendering.
  core.String? namespace;

  /// A possible additional shorter value to display.
  ///
  /// For example a java_class_name_value of com.mypackage.MyDoFn will be stored
  /// with MyDoFn as the short_str_value and com.mypackage.MyDoFn as the
  /// java_class_name value. short_str_value can be displayed and
  /// java_class_name_value will be displayed as a tooltip.
  core.String? shortStrValue;

  /// Contains value if the data is of string type.
  core.String? strValue;

  /// Contains value if the data is of timestamp type.
  core.String? timestampValue;

  /// An optional full URL.
  core.String? url;

  DisplayData();

  DisplayData.fromJson(core.Map _json) {
    if (_json.containsKey('boolValue')) {
      boolValue = _json['boolValue'] as core.bool;
    }
    if (_json.containsKey('durationValue')) {
      durationValue = _json['durationValue'] as core.String;
    }
    if (_json.containsKey('floatValue')) {
      floatValue = (_json['floatValue'] as core.num).toDouble();
    }
    if (_json.containsKey('int64Value')) {
      int64Value = _json['int64Value'] as core.String;
    }
    if (_json.containsKey('javaClassValue')) {
      javaClassValue = _json['javaClassValue'] as core.String;
    }
    if (_json.containsKey('key')) {
      key = _json['key'] as core.String;
    }
    if (_json.containsKey('label')) {
      label = _json['label'] as core.String;
    }
    if (_json.containsKey('namespace')) {
      namespace = _json['namespace'] as core.String;
    }
    if (_json.containsKey('shortStrValue')) {
      shortStrValue = _json['shortStrValue'] as core.String;
    }
    if (_json.containsKey('strValue')) {
      strValue = _json['strValue'] as core.String;
    }
    if (_json.containsKey('timestampValue')) {
      timestampValue = _json['timestampValue'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolValue != null) 'boolValue': boolValue!,
        if (durationValue != null) 'durationValue': durationValue!,
        if (floatValue != null) 'floatValue': floatValue!,
        if (int64Value != null) 'int64Value': int64Value!,
        if (javaClassValue != null) 'javaClassValue': javaClassValue!,
        if (key != null) 'key': key!,
        if (label != null) 'label': label!,
        if (namespace != null) 'namespace': namespace!,
        if (shortStrValue != null) 'shortStrValue': shortStrValue!,
        if (strValue != null) 'strValue': strValue!,
        if (timestampValue != null) 'timestampValue': timestampValue!,
        if (url != null) 'url': url!,
      };
}

/// A metric value representing a distribution.
class DistributionUpdate {
  /// The count of the number of elements present in the distribution.
  SplitInt64? count;

  /// (Optional) Histogram of value counts for the distribution.
  Histogram? histogram;

  /// The maximum value present in the distribution.
  SplitInt64? max;

  /// The minimum value present in the distribution.
  SplitInt64? min;

  /// Use an int64 since we'd prefer the added precision.
  ///
  /// If overflow is a common problem we can detect it and use an additional
  /// int64 or a double.
  SplitInt64? sum;

  /// Use a double since the sum of squares is likely to overflow int64.
  core.double? sumOfSquares;

  DistributionUpdate();

  DistributionUpdate.fromJson(core.Map _json) {
    if (_json.containsKey('count')) {
      count = SplitInt64.fromJson(
          _json['count'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('histogram')) {
      histogram = Histogram.fromJson(
          _json['histogram'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('max')) {
      max = SplitInt64.fromJson(
          _json['max'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('min')) {
      min = SplitInt64.fromJson(
          _json['min'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sum')) {
      sum = SplitInt64.fromJson(
          _json['sum'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sumOfSquares')) {
      sumOfSquares = (_json['sumOfSquares'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!.toJson(),
        if (histogram != null) 'histogram': histogram!.toJson(),
        if (max != null) 'max': max!.toJson(),
        if (min != null) 'min': min!.toJson(),
        if (sum != null) 'sum': sum!.toJson(),
        if (sumOfSquares != null) 'sumOfSquares': sumOfSquares!,
      };
}

/// When a task splits using WorkItemStatus.dynamic_source_split, this message
/// describes the two parts of the split relative to the description of the
/// current task's input.
class DynamicSourceSplit {
  /// Primary part (continued to be processed by worker).
  ///
  /// Specified relative to the previously-current source. Becomes current.
  DerivedSource? primary;

  /// Residual part (returned to the pool of work).
  ///
  /// Specified relative to the previously-current source.
  DerivedSource? residual;

  DynamicSourceSplit();

  DynamicSourceSplit.fromJson(core.Map _json) {
    if (_json.containsKey('primary')) {
      primary = DerivedSource.fromJson(
          _json['primary'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('residual')) {
      residual = DerivedSource.fromJson(
          _json['residual'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (primary != null) 'primary': primary!.toJson(),
        if (residual != null) 'residual': residual!.toJson(),
      };
}

/// Describes the environment in which a Dataflow Job runs.
class Environment {
  /// The type of cluster manager API to use.
  ///
  /// If unknown or unspecified, the service will attempt to choose a reasonable
  /// default. This should be in the form of the API service name, e.g.
  /// "compute.googleapis.com".
  core.String? clusterManagerApiService;

  /// The dataset for the current project where various workflow related tables
  /// are stored.
  ///
  /// The supported resource type is: Google BigQuery:
  /// bigquery.googleapis.com/{dataset}
  core.String? dataset;

  /// Any debugging options to be supplied to the job.
  DebugOptions? debugOptions;

  /// The list of experiments to enable.
  ///
  /// This field should be used for SDK related experiments and not for service
  /// related experiments. The proper field for service related experiments is
  /// service_options.
  core.List<core.String>? experiments;

  /// Which Flexible Resource Scheduling mode to run in.
  /// Possible string values are:
  /// - "FLEXRS_UNSPECIFIED" : Run in the default mode.
  /// - "FLEXRS_SPEED_OPTIMIZED" : Optimize for lower execution time.
  /// - "FLEXRS_COST_OPTIMIZED" : Optimize for lower cost.
  core.String? flexResourceSchedulingGoal;

  /// Experimental settings.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? internalExperiments;

  /// The Cloud Dataflow SDK pipeline options specified by the user.
  ///
  /// These options are passed through the service and are used to recreate the
  /// SDK pipeline options on the worker in a language agnostic and platform
  /// independent way.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? sdkPipelineOptions;

  /// Identity to run virtual machines as.
  ///
  /// Defaults to the default account.
  core.String? serviceAccountEmail;

  /// If set, contains the Cloud KMS key identifier used to encrypt data at
  /// rest, AKA a Customer Managed Encryption Key (CMEK).
  ///
  /// Format:
  /// projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY
  core.String? serviceKmsKeyName;

  /// The list of service options to enable.
  ///
  /// This field should be used for service related experiments only. These
  /// experiments, when graduating to GA, should be replaced by dedicated fields
  /// or become default (i.e. always on).
  core.List<core.String>? serviceOptions;

  /// The shuffle mode used for the job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SHUFFLE_MODE_UNSPECIFIED" : Shuffle mode information is not available.
  /// - "VM_BASED" : Shuffle is done on the worker VMs.
  /// - "SERVICE_BASED" : Shuffle is done on the service side.
  core.String? shuffleMode;

  /// The prefix of the resources the system should use for temporary storage.
  ///
  /// The system will append the suffix "/temp-{JOBNAME} to this resource
  /// prefix, where {JOBNAME} is the value of the job_name field. The resulting
  /// bucket and object prefix is used as the prefix of the resources used to
  /// store temporary data needed during the job execution. NOTE: This will
  /// override the value in taskrunner_settings. The supported resource type is:
  /// Google Cloud Storage: storage.googleapis.com/{bucket}/{object}
  /// bucket.storage.googleapis.com/{object}
  core.String? tempStoragePrefix;

  /// A description of the process that generated the request.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? userAgent;

  /// A structure describing which components and their versions of the service
  /// are required in order to run the job.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? version;

  /// The worker pools.
  ///
  /// At least one "harness" worker pool must be specified in order for the job
  /// to have workers.
  core.List<WorkerPool>? workerPools;

  /// The Compute Engine region
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1".
  ///
  /// Mutually exclusive with worker_zone. If neither worker_region nor
  /// worker_zone is specified, default to the control plane's region.
  core.String? workerRegion;

  /// The Compute Engine zone
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1-a".
  ///
  /// Mutually exclusive with worker_region. If neither worker_region nor
  /// worker_zone is specified, a zone in the control plane's region is chosen
  /// based on available capacity.
  core.String? workerZone;

  Environment();

  Environment.fromJson(core.Map _json) {
    if (_json.containsKey('clusterManagerApiService')) {
      clusterManagerApiService =
          _json['clusterManagerApiService'] as core.String;
    }
    if (_json.containsKey('dataset')) {
      dataset = _json['dataset'] as core.String;
    }
    if (_json.containsKey('debugOptions')) {
      debugOptions = DebugOptions.fromJson(
          _json['debugOptions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('experiments')) {
      experiments = (_json['experiments'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('flexResourceSchedulingGoal')) {
      flexResourceSchedulingGoal =
          _json['flexResourceSchedulingGoal'] as core.String;
    }
    if (_json.containsKey('internalExperiments')) {
      internalExperiments =
          (_json['internalExperiments'] as core.Map<core.String, core.dynamic>)
              .map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('sdkPipelineOptions')) {
      sdkPipelineOptions =
          (_json['sdkPipelineOptions'] as core.Map<core.String, core.dynamic>)
              .map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('serviceAccountEmail')) {
      serviceAccountEmail = _json['serviceAccountEmail'] as core.String;
    }
    if (_json.containsKey('serviceKmsKeyName')) {
      serviceKmsKeyName = _json['serviceKmsKeyName'] as core.String;
    }
    if (_json.containsKey('serviceOptions')) {
      serviceOptions = (_json['serviceOptions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('shuffleMode')) {
      shuffleMode = _json['shuffleMode'] as core.String;
    }
    if (_json.containsKey('tempStoragePrefix')) {
      tempStoragePrefix = _json['tempStoragePrefix'] as core.String;
    }
    if (_json.containsKey('userAgent')) {
      userAgent =
          (_json['userAgent'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('version')) {
      version = (_json['version'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('workerPools')) {
      workerPools = (_json['workerPools'] as core.List)
          .map<WorkerPool>((value) =>
              WorkerPool.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('workerRegion')) {
      workerRegion = _json['workerRegion'] as core.String;
    }
    if (_json.containsKey('workerZone')) {
      workerZone = _json['workerZone'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterManagerApiService != null)
          'clusterManagerApiService': clusterManagerApiService!,
        if (dataset != null) 'dataset': dataset!,
        if (debugOptions != null) 'debugOptions': debugOptions!.toJson(),
        if (experiments != null) 'experiments': experiments!,
        if (flexResourceSchedulingGoal != null)
          'flexResourceSchedulingGoal': flexResourceSchedulingGoal!,
        if (internalExperiments != null)
          'internalExperiments': internalExperiments!,
        if (sdkPipelineOptions != null)
          'sdkPipelineOptions': sdkPipelineOptions!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (serviceKmsKeyName != null) 'serviceKmsKeyName': serviceKmsKeyName!,
        if (serviceOptions != null) 'serviceOptions': serviceOptions!,
        if (shuffleMode != null) 'shuffleMode': shuffleMode!,
        if (tempStoragePrefix != null) 'tempStoragePrefix': tempStoragePrefix!,
        if (userAgent != null) 'userAgent': userAgent!,
        if (version != null) 'version': version!,
        if (workerPools != null)
          'workerPools': workerPools!.map((value) => value.toJson()).toList(),
        if (workerRegion != null) 'workerRegion': workerRegion!,
        if (workerZone != null) 'workerZone': workerZone!,
      };
}

/// A message describing the state of a particular execution stage.
class ExecutionStageState {
  /// The time at which the stage transitioned to this state.
  core.String? currentStateTime;

  /// The name of the execution stage.
  core.String? executionStageName;

  /// Executions stage states allow the same set of values as JobState.
  /// Possible string values are:
  /// - "JOB_STATE_UNKNOWN" : The job's run state isn't specified.
  /// - "JOB_STATE_STOPPED" : `JOB_STATE_STOPPED` indicates that the job has not
  /// yet started to run.
  /// - "JOB_STATE_RUNNING" : `JOB_STATE_RUNNING` indicates that the job is
  /// currently running.
  /// - "JOB_STATE_DONE" : `JOB_STATE_DONE` indicates that the job has
  /// successfully completed. This is a terminal job state. This state may be
  /// set by the Cloud Dataflow service, as a transition from
  /// `JOB_STATE_RUNNING`. It may also be set via a Cloud Dataflow `UpdateJob`
  /// call, if the job has not yet reached a terminal state.
  /// - "JOB_STATE_FAILED" : `JOB_STATE_FAILED` indicates that the job has
  /// failed. This is a terminal job state. This state may only be set by the
  /// Cloud Dataflow service, and only as a transition from `JOB_STATE_RUNNING`.
  /// - "JOB_STATE_CANCELLED" : `JOB_STATE_CANCELLED` indicates that the job has
  /// been explicitly cancelled. This is a terminal job state. This state may
  /// only be set via a Cloud Dataflow `UpdateJob` call, and only if the job has
  /// not yet reached another terminal state.
  /// - "JOB_STATE_UPDATED" : `JOB_STATE_UPDATED` indicates that the job was
  /// successfully updated, meaning that this job was stopped and another job
  /// was started, inheriting state from this one. This is a terminal job state.
  /// This state may only be set by the Cloud Dataflow service, and only as a
  /// transition from `JOB_STATE_RUNNING`.
  /// - "JOB_STATE_DRAINING" : `JOB_STATE_DRAINING` indicates that the job is in
  /// the process of draining. A draining job has stopped pulling from its input
  /// sources and is processing any data that remains in-flight. This state may
  /// be set via a Cloud Dataflow `UpdateJob` call, but only as a transition
  /// from `JOB_STATE_RUNNING`. Jobs that are draining may only transition to
  /// `JOB_STATE_DRAINED`, `JOB_STATE_CANCELLED`, or `JOB_STATE_FAILED`.
  /// - "JOB_STATE_DRAINED" : `JOB_STATE_DRAINED` indicates that the job has
  /// been drained. A drained job terminated by stopping pulling from its input
  /// sources and processing any data that remained in-flight when draining was
  /// requested. This state is a terminal state, may only be set by the Cloud
  /// Dataflow service, and only as a transition from `JOB_STATE_DRAINING`.
  /// - "JOB_STATE_PENDING" : `JOB_STATE_PENDING` indicates that the job has
  /// been created but is not yet running. Jobs that are pending may only
  /// transition to `JOB_STATE_RUNNING`, or `JOB_STATE_FAILED`.
  /// - "JOB_STATE_CANCELLING" : `JOB_STATE_CANCELLING` indicates that the job
  /// has been explicitly cancelled and is in the process of stopping. Jobs that
  /// are cancelling may only transition to `JOB_STATE_CANCELLED` or
  /// `JOB_STATE_FAILED`.
  /// - "JOB_STATE_QUEUED" : `JOB_STATE_QUEUED` indicates that the job has been
  /// created but is being delayed until launch. Jobs that are queued may only
  /// transition to `JOB_STATE_PENDING` or `JOB_STATE_CANCELLED`.
  /// - "JOB_STATE_RESOURCE_CLEANING_UP" : `JOB_STATE_RESOURCE_CLEANING_UP`
  /// indicates that the batch job's associated resources are currently being
  /// cleaned up after a successful run. Currently, this is an opt-in feature,
  /// please reach out to Cloud support team if you are interested.
  core.String? executionStageState;

  ExecutionStageState();

  ExecutionStageState.fromJson(core.Map _json) {
    if (_json.containsKey('currentStateTime')) {
      currentStateTime = _json['currentStateTime'] as core.String;
    }
    if (_json.containsKey('executionStageName')) {
      executionStageName = _json['executionStageName'] as core.String;
    }
    if (_json.containsKey('executionStageState')) {
      executionStageState = _json['executionStageState'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentStateTime != null) 'currentStateTime': currentStateTime!,
        if (executionStageName != null)
          'executionStageName': executionStageName!,
        if (executionStageState != null)
          'executionStageState': executionStageState!,
      };
}

/// Description of the composing transforms, names/ids, and input/outputs of a
/// stage of execution.
///
/// Some composing transforms and sources may have been generated by the
/// Dataflow service during execution planning.
class ExecutionStageSummary {
  /// Collections produced and consumed by component transforms of this stage.
  core.List<ComponentSource>? componentSource;

  /// Transforms that comprise this execution stage.
  core.List<ComponentTransform>? componentTransform;

  /// Dataflow service generated id for this stage.
  core.String? id;

  /// Input sources for this stage.
  core.List<StageSource>? inputSource;

  /// Type of transform this stage is executing.
  /// Possible string values are:
  /// - "UNKNOWN_KIND" : Unrecognized transform type.
  /// - "PAR_DO_KIND" : ParDo transform.
  /// - "GROUP_BY_KEY_KIND" : Group By Key transform.
  /// - "FLATTEN_KIND" : Flatten transform.
  /// - "READ_KIND" : Read transform.
  /// - "WRITE_KIND" : Write transform.
  /// - "CONSTANT_KIND" : Constructs from a constant value, such as with
  /// Create.of.
  /// - "SINGLETON_KIND" : Creates a Singleton view of a collection.
  /// - "SHUFFLE_KIND" : Opening or closing a shuffle session, often as part of
  /// a GroupByKey.
  core.String? kind;

  /// Dataflow service generated name for this stage.
  core.String? name;

  /// Output sources for this stage.
  core.List<StageSource>? outputSource;

  /// Other stages that must complete before this stage can run.
  core.List<core.String>? prerequisiteStage;

  ExecutionStageSummary();

  ExecutionStageSummary.fromJson(core.Map _json) {
    if (_json.containsKey('componentSource')) {
      componentSource = (_json['componentSource'] as core.List)
          .map<ComponentSource>((value) => ComponentSource.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('componentTransform')) {
      componentTransform = (_json['componentTransform'] as core.List)
          .map<ComponentTransform>((value) => ComponentTransform.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('inputSource')) {
      inputSource = (_json['inputSource'] as core.List)
          .map<StageSource>((value) => StageSource.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('outputSource')) {
      outputSource = (_json['outputSource'] as core.List)
          .map<StageSource>((value) => StageSource.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('prerequisiteStage')) {
      prerequisiteStage = (_json['prerequisiteStage'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (componentSource != null)
          'componentSource':
              componentSource!.map((value) => value.toJson()).toList(),
        if (componentTransform != null)
          'componentTransform':
              componentTransform!.map((value) => value.toJson()).toList(),
        if (id != null) 'id': id!,
        if (inputSource != null)
          'inputSource': inputSource!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (outputSource != null)
          'outputSource': outputSource!.map((value) => value.toJson()).toList(),
        if (prerequisiteStage != null) 'prerequisiteStage': prerequisiteStage!,
      };
}

/// Indicates which
/// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
/// failed to respond to a request for data.
class FailedLocation {
  /// The name of the
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that failed to respond.
  core.String? name;

  FailedLocation();

  FailedLocation.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Metadata for a File connector used by the job.
class FileIODetails {
  /// File Pattern used to access files by the connector.
  core.String? filePattern;

  FileIODetails();

  FileIODetails.fromJson(core.Map _json) {
    if (_json.containsKey('filePattern')) {
      filePattern = _json['filePattern'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (filePattern != null) 'filePattern': filePattern!,
      };
}

/// An instruction that copies its inputs (zero or more) to its (single) output.
class FlattenInstruction {
  /// Describes the inputs to the flatten instruction.
  core.List<InstructionInput>? inputs;

  FlattenInstruction();

  FlattenInstruction.fromJson(core.Map _json) {
    if (_json.containsKey('inputs')) {
      inputs = (_json['inputs'] as core.List)
          .map<InstructionInput>((value) => InstructionInput.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputs != null)
          'inputs': inputs!.map((value) => value.toJson()).toList(),
      };
}

/// The environment values to be set at runtime for flex template.
class FlexTemplateRuntimeEnvironment {
  /// Additional experiment flags for the job.
  core.List<core.String>? additionalExperiments;

  /// Additional user labels to be specified for the job.
  ///
  /// Keys and values must follow the restrictions specified in the
  /// [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions)
  /// page. An object containing a list of "key": value pairs. Example: {
  /// "name": "wrench", "mass": "1kg", "count": "3" }.
  core.Map<core.String, core.String>? additionalUserLabels;

  /// Whether to enable Streaming Engine for the job.
  core.bool? enableStreamingEngine;

  /// Set FlexRS goal for the job.
  ///
  /// https://cloud.google.com/dataflow/docs/guides/flexrs
  /// Possible string values are:
  /// - "FLEXRS_UNSPECIFIED" : Run in the default mode.
  /// - "FLEXRS_SPEED_OPTIMIZED" : Optimize for lower execution time.
  /// - "FLEXRS_COST_OPTIMIZED" : Optimize for lower cost.
  core.String? flexrsGoal;

  /// Configuration for VM IPs.
  /// Possible string values are:
  /// - "WORKER_IP_UNSPECIFIED" : The configuration is unknown, or unspecified.
  /// - "WORKER_IP_PUBLIC" : Workers should have public IP addresses.
  /// - "WORKER_IP_PRIVATE" : Workers should have private IP addresses.
  core.String? ipConfiguration;

  /// Name for the Cloud KMS key for the job.
  ///
  /// Key format is: projects//locations//keyRings//cryptoKeys/
  core.String? kmsKeyName;

  /// The machine type to use for the job.
  ///
  /// Defaults to the value from the template if not specified.
  core.String? machineType;

  /// The maximum number of Google Compute Engine instances to be made available
  /// to your pipeline during execution, from 1 to 1000.
  core.int? maxWorkers;

  /// Network to which VMs will be assigned.
  ///
  /// If empty or unspecified, the service will use the network "default".
  core.String? network;

  /// The initial number of Google Compute Engine instances for the job.
  core.int? numWorkers;

  /// Docker registry location of container image to use for the 'worker
  /// harness.
  ///
  /// Default is the container for the version of the SDK. Note this field is
  /// only valid for portable pipelines.
  core.String? sdkContainerImage;

  /// The email address of the service account to run the job as.
  core.String? serviceAccountEmail;

  /// The Cloud Storage path for staging local files.
  ///
  /// Must be a valid Cloud Storage URL, beginning with `gs://`.
  core.String? stagingLocation;

  /// Subnetwork to which VMs will be assigned, if desired.
  ///
  /// You can specify a subnetwork using either a complete URL or an abbreviated
  /// path. Expected to be of the form
  /// "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK"
  /// or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located
  /// in a Shared VPC network, you must use the complete URL.
  core.String? subnetwork;

  /// The Cloud Storage path to use for temporary files.
  ///
  /// Must be a valid Cloud Storage URL, beginning with `gs://`.
  core.String? tempLocation;

  /// The Compute Engine region
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1".
  ///
  /// Mutually exclusive with worker_zone. If neither worker_region nor
  /// worker_zone is specified, default to the control plane's region.
  core.String? workerRegion;

  /// The Compute Engine zone
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1-a".
  ///
  /// Mutually exclusive with worker_region. If neither worker_region nor
  /// worker_zone is specified, a zone in the control plane's region is chosen
  /// based on available capacity. If both `worker_zone` and `zone` are set,
  /// `worker_zone` takes precedence.
  core.String? workerZone;

  /// The Compute Engine
  /// [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones)
  /// for launching worker instances to run your pipeline.
  ///
  /// In the future, worker_zone will take precedence.
  core.String? zone;

  FlexTemplateRuntimeEnvironment();

  FlexTemplateRuntimeEnvironment.fromJson(core.Map _json) {
    if (_json.containsKey('additionalExperiments')) {
      additionalExperiments = (_json['additionalExperiments'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('additionalUserLabels')) {
      additionalUserLabels =
          (_json['additionalUserLabels'] as core.Map<core.String, core.dynamic>)
              .map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('enableStreamingEngine')) {
      enableStreamingEngine = _json['enableStreamingEngine'] as core.bool;
    }
    if (_json.containsKey('flexrsGoal')) {
      flexrsGoal = _json['flexrsGoal'] as core.String;
    }
    if (_json.containsKey('ipConfiguration')) {
      ipConfiguration = _json['ipConfiguration'] as core.String;
    }
    if (_json.containsKey('kmsKeyName')) {
      kmsKeyName = _json['kmsKeyName'] as core.String;
    }
    if (_json.containsKey('machineType')) {
      machineType = _json['machineType'] as core.String;
    }
    if (_json.containsKey('maxWorkers')) {
      maxWorkers = _json['maxWorkers'] as core.int;
    }
    if (_json.containsKey('network')) {
      network = _json['network'] as core.String;
    }
    if (_json.containsKey('numWorkers')) {
      numWorkers = _json['numWorkers'] as core.int;
    }
    if (_json.containsKey('sdkContainerImage')) {
      sdkContainerImage = _json['sdkContainerImage'] as core.String;
    }
    if (_json.containsKey('serviceAccountEmail')) {
      serviceAccountEmail = _json['serviceAccountEmail'] as core.String;
    }
    if (_json.containsKey('stagingLocation')) {
      stagingLocation = _json['stagingLocation'] as core.String;
    }
    if (_json.containsKey('subnetwork')) {
      subnetwork = _json['subnetwork'] as core.String;
    }
    if (_json.containsKey('tempLocation')) {
      tempLocation = _json['tempLocation'] as core.String;
    }
    if (_json.containsKey('workerRegion')) {
      workerRegion = _json['workerRegion'] as core.String;
    }
    if (_json.containsKey('workerZone')) {
      workerZone = _json['workerZone'] as core.String;
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalExperiments != null)
          'additionalExperiments': additionalExperiments!,
        if (additionalUserLabels != null)
          'additionalUserLabels': additionalUserLabels!,
        if (enableStreamingEngine != null)
          'enableStreamingEngine': enableStreamingEngine!,
        if (flexrsGoal != null) 'flexrsGoal': flexrsGoal!,
        if (ipConfiguration != null) 'ipConfiguration': ipConfiguration!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (machineType != null) 'machineType': machineType!,
        if (maxWorkers != null) 'maxWorkers': maxWorkers!,
        if (network != null) 'network': network!,
        if (numWorkers != null) 'numWorkers': numWorkers!,
        if (sdkContainerImage != null) 'sdkContainerImage': sdkContainerImage!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (stagingLocation != null) 'stagingLocation': stagingLocation!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (tempLocation != null) 'tempLocation': tempLocation!,
        if (workerRegion != null) 'workerRegion': workerRegion!,
        if (workerZone != null) 'workerZone': workerZone!,
        if (zone != null) 'zone': zone!,
      };
}

/// A metric value representing a list of floating point numbers.
class FloatingPointList {
  /// Elements of the list.
  core.List<core.double>? elements;

  FloatingPointList();

  FloatingPointList.fromJson(core.Map _json) {
    if (_json.containsKey('elements')) {
      elements = (_json['elements'] as core.List)
          .map<core.double>((value) => (value as core.num).toDouble())
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (elements != null) 'elements': elements!,
      };
}

/// A representation of a floating point mean metric contribution.
class FloatingPointMean {
  /// The number of values being aggregated.
  SplitInt64? count;

  /// The sum of all values being aggregated.
  core.double? sum;

  FloatingPointMean();

  FloatingPointMean.fromJson(core.Map _json) {
    if (_json.containsKey('count')) {
      count = SplitInt64.fromJson(
          _json['count'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sum')) {
      sum = (_json['sum'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!.toJson(),
        if (sum != null) 'sum': sum!,
      };
}

/// Request to get updated debug configuration for component.
class GetDebugConfigRequest {
  /// The internal component id for which debug configuration is requested.
  core.String? componentId;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  core.String? location;

  /// The worker id, i.e., VM hostname.
  core.String? workerId;

  GetDebugConfigRequest();

  GetDebugConfigRequest.fromJson(core.Map _json) {
    if (_json.containsKey('componentId')) {
      componentId = _json['componentId'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('workerId')) {
      workerId = _json['workerId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (componentId != null) 'componentId': componentId!,
        if (location != null) 'location': location!,
        if (workerId != null) 'workerId': workerId!,
      };
}

/// Response to a get debug configuration request.
class GetDebugConfigResponse {
  /// The encoded debug configuration for the requested component.
  core.String? config;

  GetDebugConfigResponse();

  GetDebugConfigResponse.fromJson(core.Map _json) {
    if (_json.containsKey('config')) {
      config = _json['config'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
      };
}

/// The response to a GetTemplate request.
class GetTemplateResponse {
  /// The template metadata describing the template name, available parameters,
  /// etc.
  TemplateMetadata? metadata;

  /// Describes the runtime metadata with SDKInfo and available parameters.
  RuntimeMetadata? runtimeMetadata;

  /// The status of the get template request.
  ///
  /// Any problems with the request will be indicated in the error_details.
  Status? status;

  /// Template Type.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown Template Type.
  /// - "LEGACY" : Legacy Template.
  /// - "FLEX" : Flex Template.
  core.String? templateType;

  GetTemplateResponse();

  GetTemplateResponse.fromJson(core.Map _json) {
    if (_json.containsKey('metadata')) {
      metadata = TemplateMetadata.fromJson(
          _json['metadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('runtimeMetadata')) {
      runtimeMetadata = RuntimeMetadata.fromJson(
          _json['runtimeMetadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('status')) {
      status = Status.fromJson(
          _json['status'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('templateType')) {
      templateType = _json['templateType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (runtimeMetadata != null)
          'runtimeMetadata': runtimeMetadata!.toJson(),
        if (status != null) 'status': status!.toJson(),
        if (templateType != null) 'templateType': templateType!,
      };
}

/// Histogram of value counts for a distribution.
///
/// Buckets have an inclusive lower bound and exclusive upper bound and use
/// "1,2,5 bucketing": The first bucket range is from \[0,1) and all subsequent
/// bucket boundaries are powers of ten multiplied by 1, 2, or 5. Thus, bucket
/// boundaries are 0, 1, 2, 5, 10, 20, 50, 100, 200, 500, 1000, ... Negative
/// values are not supported.
class Histogram {
  /// Counts of values in each bucket.
  ///
  /// For efficiency, prefix and trailing buckets with count = 0 are elided.
  /// Buckets can store the full range of values of an unsigned long, with
  /// ULLONG_MAX falling into the 59th bucket with range \[1e19, 2e19).
  core.List<core.String>? bucketCounts;

  /// Starting index of first stored bucket.
  ///
  /// The non-inclusive upper-bound of the ith bucket is given by:
  /// pow(10,(i-first_bucket_offset)/3) * (1,2,5)\[(i-first_bucket_offset)%3\]
  core.int? firstBucketOffset;

  Histogram();

  Histogram.fromJson(core.Map _json) {
    if (_json.containsKey('bucketCounts')) {
      bucketCounts = (_json['bucketCounts'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('firstBucketOffset')) {
      firstBucketOffset = _json['firstBucketOffset'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketCounts != null) 'bucketCounts': bucketCounts!,
        if (firstBucketOffset != null) 'firstBucketOffset': firstBucketOffset!,
      };
}

/// Proto describing a hot key detected on a given WorkItem.
class HotKeyDetection {
  /// The age of the hot key measured from when it was first detected.
  core.String? hotKeyAge;

  /// System-defined name of the step containing this hot key.
  ///
  /// Unique across the workflow.
  core.String? systemName;

  /// User-provided name of the step that contains this hot key.
  core.String? userStepName;

  HotKeyDetection();

  HotKeyDetection.fromJson(core.Map _json) {
    if (_json.containsKey('hotKeyAge')) {
      hotKeyAge = _json['hotKeyAge'] as core.String;
    }
    if (_json.containsKey('systemName')) {
      systemName = _json['systemName'] as core.String;
    }
    if (_json.containsKey('userStepName')) {
      userStepName = _json['userStepName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (hotKeyAge != null) 'hotKeyAge': hotKeyAge!,
        if (systemName != null) 'systemName': systemName!,
        if (userStepName != null) 'userStepName': userStepName!,
      };
}

/// An input of an instruction, as a reference to an output of a producer
/// instruction.
class InstructionInput {
  /// The output index (origin zero) within the producer.
  core.int? outputNum;

  /// The index (origin zero) of the parallel instruction that produces the
  /// output to be consumed by this input.
  ///
  /// This index is relative to the list of instructions in this input's
  /// instruction's containing MapTask.
  core.int? producerInstructionIndex;

  InstructionInput();

  InstructionInput.fromJson(core.Map _json) {
    if (_json.containsKey('outputNum')) {
      outputNum = _json['outputNum'] as core.int;
    }
    if (_json.containsKey('producerInstructionIndex')) {
      producerInstructionIndex = _json['producerInstructionIndex'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputNum != null) 'outputNum': outputNum!,
        if (producerInstructionIndex != null)
          'producerInstructionIndex': producerInstructionIndex!,
      };
}

/// An output of an instruction.
class InstructionOutput {
  /// The codec to use to encode data being written via this output.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? codec;

  /// The user-provided name of this output.
  core.String? name;

  /// For system-generated byte and mean byte metrics, certain instructions
  /// should only report the key size.
  core.bool? onlyCountKeyBytes;

  /// For system-generated byte and mean byte metrics, certain instructions
  /// should only report the value size.
  core.bool? onlyCountValueBytes;

  /// System-defined name for this output in the original workflow graph.
  ///
  /// Outputs that do not contribute to an original instruction do not set this.
  core.String? originalName;

  /// System-defined name of this output.
  ///
  /// Unique across the workflow.
  core.String? systemName;

  InstructionOutput();

  InstructionOutput.fromJson(core.Map _json) {
    if (_json.containsKey('codec')) {
      codec = (_json['codec'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('onlyCountKeyBytes')) {
      onlyCountKeyBytes = _json['onlyCountKeyBytes'] as core.bool;
    }
    if (_json.containsKey('onlyCountValueBytes')) {
      onlyCountValueBytes = _json['onlyCountValueBytes'] as core.bool;
    }
    if (_json.containsKey('originalName')) {
      originalName = _json['originalName'] as core.String;
    }
    if (_json.containsKey('systemName')) {
      systemName = _json['systemName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (codec != null) 'codec': codec!,
        if (name != null) 'name': name!,
        if (onlyCountKeyBytes != null) 'onlyCountKeyBytes': onlyCountKeyBytes!,
        if (onlyCountValueBytes != null)
          'onlyCountValueBytes': onlyCountValueBytes!,
        if (originalName != null) 'originalName': originalName!,
        if (systemName != null) 'systemName': systemName!,
      };
}

/// A metric value representing temporal values of a variable.
class IntegerGauge {
  /// The time at which this value was measured.
  ///
  /// Measured as msecs from epoch.
  core.String? timestamp;

  /// The value of the variable represented by this gauge.
  SplitInt64? value;

  IntegerGauge();

  IntegerGauge.fromJson(core.Map _json) {
    if (_json.containsKey('timestamp')) {
      timestamp = _json['timestamp'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = SplitInt64.fromJson(
          _json['value'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (timestamp != null) 'timestamp': timestamp!,
        if (value != null) 'value': value!.toJson(),
      };
}

/// A metric value representing a list of integers.
class IntegerList {
  /// Elements of the list.
  core.List<SplitInt64>? elements;

  IntegerList();

  IntegerList.fromJson(core.Map _json) {
    if (_json.containsKey('elements')) {
      elements = (_json['elements'] as core.List)
          .map<SplitInt64>((value) =>
              SplitInt64.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (elements != null)
          'elements': elements!.map((value) => value.toJson()).toList(),
      };
}

/// A representation of an integer mean metric contribution.
class IntegerMean {
  /// The number of values being aggregated.
  SplitInt64? count;

  /// The sum of all values being aggregated.
  SplitInt64? sum;

  IntegerMean();

  IntegerMean.fromJson(core.Map _json) {
    if (_json.containsKey('count')) {
      count = SplitInt64.fromJson(
          _json['count'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sum')) {
      sum = SplitInt64.fromJson(
          _json['sum'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!.toJson(),
        if (sum != null) 'sum': sum!.toJson(),
      };
}

/// Defines a job to be run by the Cloud Dataflow service.
///
/// nextID: 26
class Job {
  /// The client's unique identifier of the job, re-used across retried
  /// attempts.
  ///
  /// If this field is set, the service will ensure its uniqueness. The request
  /// to create a job will fail if the service has knowledge of a previously
  /// submitted job with the same client's ID and job name. The caller may use
  /// this field to ensure idempotence of job creation across retried attempts
  /// to create a job. By default, the field is empty and, in that case, the
  /// service ignores it.
  core.String? clientRequestId;

  /// The timestamp when the job was initially created.
  ///
  /// Immutable and set by the Cloud Dataflow service.
  core.String? createTime;

  /// If this is specified, the job's initial state is populated from the given
  /// snapshot.
  core.String? createdFromSnapshotId;

  /// The current state of the job.
  ///
  /// Jobs are created in the `JOB_STATE_STOPPED` state unless otherwise
  /// specified. A job in the `JOB_STATE_RUNNING` state may asynchronously enter
  /// a terminal state. After a job has reached a terminal state, no further
  /// state updates may be made. This field may be mutated by the Cloud Dataflow
  /// service; callers cannot mutate it.
  /// Possible string values are:
  /// - "JOB_STATE_UNKNOWN" : The job's run state isn't specified.
  /// - "JOB_STATE_STOPPED" : `JOB_STATE_STOPPED` indicates that the job has not
  /// yet started to run.
  /// - "JOB_STATE_RUNNING" : `JOB_STATE_RUNNING` indicates that the job is
  /// currently running.
  /// - "JOB_STATE_DONE" : `JOB_STATE_DONE` indicates that the job has
  /// successfully completed. This is a terminal job state. This state may be
  /// set by the Cloud Dataflow service, as a transition from
  /// `JOB_STATE_RUNNING`. It may also be set via a Cloud Dataflow `UpdateJob`
  /// call, if the job has not yet reached a terminal state.
  /// - "JOB_STATE_FAILED" : `JOB_STATE_FAILED` indicates that the job has
  /// failed. This is a terminal job state. This state may only be set by the
  /// Cloud Dataflow service, and only as a transition from `JOB_STATE_RUNNING`.
  /// - "JOB_STATE_CANCELLED" : `JOB_STATE_CANCELLED` indicates that the job has
  /// been explicitly cancelled. This is a terminal job state. This state may
  /// only be set via a Cloud Dataflow `UpdateJob` call, and only if the job has
  /// not yet reached another terminal state.
  /// - "JOB_STATE_UPDATED" : `JOB_STATE_UPDATED` indicates that the job was
  /// successfully updated, meaning that this job was stopped and another job
  /// was started, inheriting state from this one. This is a terminal job state.
  /// This state may only be set by the Cloud Dataflow service, and only as a
  /// transition from `JOB_STATE_RUNNING`.
  /// - "JOB_STATE_DRAINING" : `JOB_STATE_DRAINING` indicates that the job is in
  /// the process of draining. A draining job has stopped pulling from its input
  /// sources and is processing any data that remains in-flight. This state may
  /// be set via a Cloud Dataflow `UpdateJob` call, but only as a transition
  /// from `JOB_STATE_RUNNING`. Jobs that are draining may only transition to
  /// `JOB_STATE_DRAINED`, `JOB_STATE_CANCELLED`, or `JOB_STATE_FAILED`.
  /// - "JOB_STATE_DRAINED" : `JOB_STATE_DRAINED` indicates that the job has
  /// been drained. A drained job terminated by stopping pulling from its input
  /// sources and processing any data that remained in-flight when draining was
  /// requested. This state is a terminal state, may only be set by the Cloud
  /// Dataflow service, and only as a transition from `JOB_STATE_DRAINING`.
  /// - "JOB_STATE_PENDING" : `JOB_STATE_PENDING` indicates that the job has
  /// been created but is not yet running. Jobs that are pending may only
  /// transition to `JOB_STATE_RUNNING`, or `JOB_STATE_FAILED`.
  /// - "JOB_STATE_CANCELLING" : `JOB_STATE_CANCELLING` indicates that the job
  /// has been explicitly cancelled and is in the process of stopping. Jobs that
  /// are cancelling may only transition to `JOB_STATE_CANCELLED` or
  /// `JOB_STATE_FAILED`.
  /// - "JOB_STATE_QUEUED" : `JOB_STATE_QUEUED` indicates that the job has been
  /// created but is being delayed until launch. Jobs that are queued may only
  /// transition to `JOB_STATE_PENDING` or `JOB_STATE_CANCELLED`.
  /// - "JOB_STATE_RESOURCE_CLEANING_UP" : `JOB_STATE_RESOURCE_CLEANING_UP`
  /// indicates that the batch job's associated resources are currently being
  /// cleaned up after a successful run. Currently, this is an opt-in feature,
  /// please reach out to Cloud support team if you are interested.
  core.String? currentState;

  /// The timestamp associated with the current state.
  core.String? currentStateTime;

  /// The environment for the job.
  Environment? environment;

  /// Deprecated.
  JobExecutionInfo? executionInfo;

  /// The unique ID of this job.
  ///
  /// This field is set by the Cloud Dataflow service when the Job is created,
  /// and is immutable for the life of the job.
  core.String? id;

  /// This field is populated by the Dataflow service to support filtering jobs
  /// by the metadata values provided here.
  ///
  /// Populated for ListJobs and all GetJob views SUMMARY and higher.
  JobMetadata? jobMetadata;

  /// User-defined labels for this job.
  ///
  /// The labels map can contain no more than 64 entries. Entries of the labels
  /// map are UTF8 strings that comply with the following restrictions: * Keys
  /// must conform to regexp: \p{Ll}\p{Lo}{0,62} * Values must conform to
  /// regexp: \[\p{Ll}\p{Lo}\p{N}_-\]{0,63} * Both keys and values are
  /// additionally constrained to be <= 128 bytes in size.
  core.Map<core.String, core.String>? labels;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  core.String? location;

  /// The user-specified Cloud Dataflow job name.
  ///
  /// Only one Job with a given name may exist in a project at any given time.
  /// If a caller attempts to create a Job with the same name as an
  /// already-existing Job, the attempt returns the existing Job. The name must
  /// match the regular expression `[a-z]([-a-z0-9]{0,38}[a-z0-9])?`
  core.String? name;

  /// Preliminary field: The format of this data may change at any time.
  ///
  /// A description of the user pipeline and stages through which it is
  /// executed. Created by Cloud Dataflow service. Only retrieved with
  /// JOB_VIEW_DESCRIPTION or JOB_VIEW_ALL.
  PipelineDescription? pipelineDescription;

  /// The ID of the Cloud Platform project that the job belongs to.
  core.String? projectId;

  /// If this job is an update of an existing job, this field is the job ID of
  /// the job it replaced.
  ///
  /// When sending a `CreateJobRequest`, you can update a job by specifying it
  /// here. The job named here is stopped, and its intermediate state is
  /// transferred to this job.
  core.String? replaceJobId;

  /// If another job is an update of this job (and thus, this job is in
  /// `JOB_STATE_UPDATED`), this field contains the ID of that job.
  core.String? replacedByJobId;

  /// The job's requested state.
  ///
  /// `UpdateJob` may be used to switch between the `JOB_STATE_STOPPED` and
  /// `JOB_STATE_RUNNING` states, by setting requested_state. `UpdateJob` may
  /// also be used to directly set a job's requested state to
  /// `JOB_STATE_CANCELLED` or `JOB_STATE_DONE`, irrevocably terminating the job
  /// if it has not already reached a terminal state.
  /// Possible string values are:
  /// - "JOB_STATE_UNKNOWN" : The job's run state isn't specified.
  /// - "JOB_STATE_STOPPED" : `JOB_STATE_STOPPED` indicates that the job has not
  /// yet started to run.
  /// - "JOB_STATE_RUNNING" : `JOB_STATE_RUNNING` indicates that the job is
  /// currently running.
  /// - "JOB_STATE_DONE" : `JOB_STATE_DONE` indicates that the job has
  /// successfully completed. This is a terminal job state. This state may be
  /// set by the Cloud Dataflow service, as a transition from
  /// `JOB_STATE_RUNNING`. It may also be set via a Cloud Dataflow `UpdateJob`
  /// call, if the job has not yet reached a terminal state.
  /// - "JOB_STATE_FAILED" : `JOB_STATE_FAILED` indicates that the job has
  /// failed. This is a terminal job state. This state may only be set by the
  /// Cloud Dataflow service, and only as a transition from `JOB_STATE_RUNNING`.
  /// - "JOB_STATE_CANCELLED" : `JOB_STATE_CANCELLED` indicates that the job has
  /// been explicitly cancelled. This is a terminal job state. This state may
  /// only be set via a Cloud Dataflow `UpdateJob` call, and only if the job has
  /// not yet reached another terminal state.
  /// - "JOB_STATE_UPDATED" : `JOB_STATE_UPDATED` indicates that the job was
  /// successfully updated, meaning that this job was stopped and another job
  /// was started, inheriting state from this one. This is a terminal job state.
  /// This state may only be set by the Cloud Dataflow service, and only as a
  /// transition from `JOB_STATE_RUNNING`.
  /// - "JOB_STATE_DRAINING" : `JOB_STATE_DRAINING` indicates that the job is in
  /// the process of draining. A draining job has stopped pulling from its input
  /// sources and is processing any data that remains in-flight. This state may
  /// be set via a Cloud Dataflow `UpdateJob` call, but only as a transition
  /// from `JOB_STATE_RUNNING`. Jobs that are draining may only transition to
  /// `JOB_STATE_DRAINED`, `JOB_STATE_CANCELLED`, or `JOB_STATE_FAILED`.
  /// - "JOB_STATE_DRAINED" : `JOB_STATE_DRAINED` indicates that the job has
  /// been drained. A drained job terminated by stopping pulling from its input
  /// sources and processing any data that remained in-flight when draining was
  /// requested. This state is a terminal state, may only be set by the Cloud
  /// Dataflow service, and only as a transition from `JOB_STATE_DRAINING`.
  /// - "JOB_STATE_PENDING" : `JOB_STATE_PENDING` indicates that the job has
  /// been created but is not yet running. Jobs that are pending may only
  /// transition to `JOB_STATE_RUNNING`, or `JOB_STATE_FAILED`.
  /// - "JOB_STATE_CANCELLING" : `JOB_STATE_CANCELLING` indicates that the job
  /// has been explicitly cancelled and is in the process of stopping. Jobs that
  /// are cancelling may only transition to `JOB_STATE_CANCELLED` or
  /// `JOB_STATE_FAILED`.
  /// - "JOB_STATE_QUEUED" : `JOB_STATE_QUEUED` indicates that the job has been
  /// created but is being delayed until launch. Jobs that are queued may only
  /// transition to `JOB_STATE_PENDING` or `JOB_STATE_CANCELLED`.
  /// - "JOB_STATE_RESOURCE_CLEANING_UP" : `JOB_STATE_RESOURCE_CLEANING_UP`
  /// indicates that the batch job's associated resources are currently being
  /// cleaned up after a successful run. Currently, this is an opt-in feature,
  /// please reach out to Cloud support team if you are interested.
  core.String? requestedState;

  /// Reserved for future use.
  ///
  /// This field is set only in responses from the server; it is ignored if it
  /// is set in any requests.
  core.bool? satisfiesPzs;

  /// This field may be mutated by the Cloud Dataflow service; callers cannot
  /// mutate it.
  core.List<ExecutionStageState>? stageStates;

  /// The timestamp when the job was started (transitioned to
  /// JOB_STATE_PENDING).
  ///
  /// Flexible resource scheduling jobs are started with some delay after job
  /// creation, so start_time is unset before start and is updated when the job
  /// is started by the Cloud Dataflow service. For other jobs, start_time
  /// always equals to create_time and is immutable and set by the Cloud
  /// Dataflow service.
  core.String? startTime;

  /// Exactly one of step or steps_location should be specified.
  ///
  /// The top-level steps that constitute the entire job. Only retrieved with
  /// JOB_VIEW_ALL.
  core.List<Step>? steps;

  /// The Cloud Storage location where the steps are stored.
  core.String? stepsLocation;

  /// A set of files the system should be aware of that are used for temporary
  /// storage.
  ///
  /// These temporary files will be removed on job completion. No duplicates are
  /// allowed. No file patterns are supported. The supported files are: Google
  /// Cloud Storage: storage.googleapis.com/{bucket}/{object}
  /// bucket.storage.googleapis.com/{object}
  core.List<core.String>? tempFiles;

  /// The map of transform name prefixes of the job to be replaced to the
  /// corresponding name prefixes of the new job.
  core.Map<core.String, core.String>? transformNameMapping;

  /// The type of Cloud Dataflow job.
  /// Possible string values are:
  /// - "JOB_TYPE_UNKNOWN" : The type of the job is unspecified, or unknown.
  /// - "JOB_TYPE_BATCH" : A batch job with a well-defined end point: data is
  /// read, data is processed, data is written, and the job is done.
  /// - "JOB_TYPE_STREAMING" : A continuously streaming job with no end: data is
  /// read, processed, and written continuously.
  core.String? type;

  Job();

  Job.fromJson(core.Map _json) {
    if (_json.containsKey('clientRequestId')) {
      clientRequestId = _json['clientRequestId'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('createdFromSnapshotId')) {
      createdFromSnapshotId = _json['createdFromSnapshotId'] as core.String;
    }
    if (_json.containsKey('currentState')) {
      currentState = _json['currentState'] as core.String;
    }
    if (_json.containsKey('currentStateTime')) {
      currentStateTime = _json['currentStateTime'] as core.String;
    }
    if (_json.containsKey('environment')) {
      environment = Environment.fromJson(
          _json['environment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('executionInfo')) {
      executionInfo = JobExecutionInfo.fromJson(
          _json['executionInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('jobMetadata')) {
      jobMetadata = JobMetadata.fromJson(
          _json['jobMetadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('pipelineDescription')) {
      pipelineDescription = PipelineDescription.fromJson(
          _json['pipelineDescription'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
    if (_json.containsKey('replaceJobId')) {
      replaceJobId = _json['replaceJobId'] as core.String;
    }
    if (_json.containsKey('replacedByJobId')) {
      replacedByJobId = _json['replacedByJobId'] as core.String;
    }
    if (_json.containsKey('requestedState')) {
      requestedState = _json['requestedState'] as core.String;
    }
    if (_json.containsKey('satisfiesPzs')) {
      satisfiesPzs = _json['satisfiesPzs'] as core.bool;
    }
    if (_json.containsKey('stageStates')) {
      stageStates = (_json['stageStates'] as core.List)
          .map<ExecutionStageState>((value) => ExecutionStageState.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('steps')) {
      steps = (_json['steps'] as core.List)
          .map<Step>((value) =>
              Step.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('stepsLocation')) {
      stepsLocation = _json['stepsLocation'] as core.String;
    }
    if (_json.containsKey('tempFiles')) {
      tempFiles = (_json['tempFiles'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('transformNameMapping')) {
      transformNameMapping =
          (_json['transformNameMapping'] as core.Map<core.String, core.dynamic>)
              .map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientRequestId != null) 'clientRequestId': clientRequestId!,
        if (createTime != null) 'createTime': createTime!,
        if (createdFromSnapshotId != null)
          'createdFromSnapshotId': createdFromSnapshotId!,
        if (currentState != null) 'currentState': currentState!,
        if (currentStateTime != null) 'currentStateTime': currentStateTime!,
        if (environment != null) 'environment': environment!.toJson(),
        if (executionInfo != null) 'executionInfo': executionInfo!.toJson(),
        if (id != null) 'id': id!,
        if (jobMetadata != null) 'jobMetadata': jobMetadata!.toJson(),
        if (labels != null) 'labels': labels!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (pipelineDescription != null)
          'pipelineDescription': pipelineDescription!.toJson(),
        if (projectId != null) 'projectId': projectId!,
        if (replaceJobId != null) 'replaceJobId': replaceJobId!,
        if (replacedByJobId != null) 'replacedByJobId': replacedByJobId!,
        if (requestedState != null) 'requestedState': requestedState!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (stageStates != null)
          'stageStates': stageStates!.map((value) => value.toJson()).toList(),
        if (startTime != null) 'startTime': startTime!,
        if (steps != null)
          'steps': steps!.map((value) => value.toJson()).toList(),
        if (stepsLocation != null) 'stepsLocation': stepsLocation!,
        if (tempFiles != null) 'tempFiles': tempFiles!,
        if (transformNameMapping != null)
          'transformNameMapping': transformNameMapping!,
        if (type != null) 'type': type!,
      };
}

/// Information about the execution of a job.
class JobExecutionDetails {
  /// If present, this response does not contain all requested tasks.
  ///
  /// To obtain the next page of results, repeat the request with page_token set
  /// to this value.
  core.String? nextPageToken;

  /// The stages of the job execution.
  core.List<StageSummary>? stages;

  JobExecutionDetails();

  JobExecutionDetails.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('stages')) {
      stages = (_json['stages'] as core.List)
          .map<StageSummary>((value) => StageSummary.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (stages != null)
          'stages': stages!.map((value) => value.toJson()).toList(),
      };
}

/// Additional information about how a Cloud Dataflow job will be executed that
/// isn't contained in the submitted job.
class JobExecutionInfo {
  /// A mapping from each stage to the information about that stage.
  core.Map<core.String, JobExecutionStageInfo>? stages;

  JobExecutionInfo();

  JobExecutionInfo.fromJson(core.Map _json) {
    if (_json.containsKey('stages')) {
      stages = (_json['stages'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          JobExecutionStageInfo.fromJson(
              item as core.Map<core.String, core.dynamic>),
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (stages != null)
          'stages':
              stages!.map((key, item) => core.MapEntry(key, item.toJson())),
      };
}

/// Contains information about how a particular google.dataflow.v1beta3.Step
/// will be executed.
class JobExecutionStageInfo {
  /// The steps associated with the execution stage.
  ///
  /// Note that stages may have several steps, and that a given step might be
  /// run by more than one stage.
  core.List<core.String>? stepName;

  JobExecutionStageInfo();

  JobExecutionStageInfo.fromJson(core.Map _json) {
    if (_json.containsKey('stepName')) {
      stepName = (_json['stepName'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (stepName != null) 'stepName': stepName!,
      };
}

/// A particular message pertaining to a Dataflow job.
class JobMessage {
  /// Deprecated.
  core.String? id;

  /// Importance level of the message.
  /// Possible string values are:
  /// - "JOB_MESSAGE_IMPORTANCE_UNKNOWN" : The message importance isn't
  /// specified, or is unknown.
  /// - "JOB_MESSAGE_DEBUG" : The message is at the 'debug' level: typically
  /// only useful for software engineers working on the code the job is running.
  /// Typically, Dataflow pipeline runners do not display log messages at this
  /// level by default.
  /// - "JOB_MESSAGE_DETAILED" : The message is at the 'detailed' level:
  /// somewhat verbose, but potentially useful to users. Typically, Dataflow
  /// pipeline runners do not display log messages at this level by default.
  /// These messages are displayed by default in the Dataflow monitoring UI.
  /// - "JOB_MESSAGE_BASIC" : The message is at the 'basic' level: useful for
  /// keeping track of the execution of a Dataflow pipeline. Typically, Dataflow
  /// pipeline runners display log messages at this level by default, and these
  /// messages are displayed by default in the Dataflow monitoring UI.
  /// - "JOB_MESSAGE_WARNING" : The message is at the 'warning' level:
  /// indicating a condition pertaining to a job which may require human
  /// intervention. Typically, Dataflow pipeline runners display log messages at
  /// this level by default, and these messages are displayed by default in the
  /// Dataflow monitoring UI.
  /// - "JOB_MESSAGE_ERROR" : The message is at the 'error' level: indicating a
  /// condition preventing a job from succeeding. Typically, Dataflow pipeline
  /// runners display log messages at this level by default, and these messages
  /// are displayed by default in the Dataflow monitoring UI.
  core.String? messageImportance;

  /// The text of the message.
  core.String? messageText;

  /// The timestamp of the message.
  core.String? time;

  JobMessage();

  JobMessage.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('messageImportance')) {
      messageImportance = _json['messageImportance'] as core.String;
    }
    if (_json.containsKey('messageText')) {
      messageText = _json['messageText'] as core.String;
    }
    if (_json.containsKey('time')) {
      time = _json['time'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (messageImportance != null) 'messageImportance': messageImportance!,
        if (messageText != null) 'messageText': messageText!,
        if (time != null) 'time': time!,
      };
}

/// Metadata available primarily for filtering jobs.
///
/// Will be included in the ListJob response and Job SUMMARY view.
class JobMetadata {
  /// Identification of a Cloud BigTable source used in the Dataflow job.
  core.List<BigTableIODetails>? bigTableDetails;

  /// Identification of a BigQuery source used in the Dataflow job.
  core.List<BigQueryIODetails>? bigqueryDetails;

  /// Identification of a Datastore source used in the Dataflow job.
  core.List<DatastoreIODetails>? datastoreDetails;

  /// Identification of a File source used in the Dataflow job.
  core.List<FileIODetails>? fileDetails;

  /// Identification of a PubSub source used in the Dataflow job.
  core.List<PubSubIODetails>? pubsubDetails;

  /// The SDK version used to run the job.
  SdkVersion? sdkVersion;

  /// Identification of a Spanner source used in the Dataflow job.
  core.List<SpannerIODetails>? spannerDetails;

  JobMetadata();

  JobMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('bigTableDetails')) {
      bigTableDetails = (_json['bigTableDetails'] as core.List)
          .map<BigTableIODetails>((value) => BigTableIODetails.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('bigqueryDetails')) {
      bigqueryDetails = (_json['bigqueryDetails'] as core.List)
          .map<BigQueryIODetails>((value) => BigQueryIODetails.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('datastoreDetails')) {
      datastoreDetails = (_json['datastoreDetails'] as core.List)
          .map<DatastoreIODetails>((value) => DatastoreIODetails.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('fileDetails')) {
      fileDetails = (_json['fileDetails'] as core.List)
          .map<FileIODetails>((value) => FileIODetails.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('pubsubDetails')) {
      pubsubDetails = (_json['pubsubDetails'] as core.List)
          .map<PubSubIODetails>((value) => PubSubIODetails.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('sdkVersion')) {
      sdkVersion = SdkVersion.fromJson(
          _json['sdkVersion'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('spannerDetails')) {
      spannerDetails = (_json['spannerDetails'] as core.List)
          .map<SpannerIODetails>((value) => SpannerIODetails.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigTableDetails != null)
          'bigTableDetails':
              bigTableDetails!.map((value) => value.toJson()).toList(),
        if (bigqueryDetails != null)
          'bigqueryDetails':
              bigqueryDetails!.map((value) => value.toJson()).toList(),
        if (datastoreDetails != null)
          'datastoreDetails':
              datastoreDetails!.map((value) => value.toJson()).toList(),
        if (fileDetails != null)
          'fileDetails': fileDetails!.map((value) => value.toJson()).toList(),
        if (pubsubDetails != null)
          'pubsubDetails':
              pubsubDetails!.map((value) => value.toJson()).toList(),
        if (sdkVersion != null) 'sdkVersion': sdkVersion!.toJson(),
        if (spannerDetails != null)
          'spannerDetails':
              spannerDetails!.map((value) => value.toJson()).toList(),
      };
}

/// JobMetrics contains a collection of metrics describing the detailed progress
/// of a Dataflow job.
///
/// Metrics correspond to user-defined and system-defined metrics in the job.
/// This resource captures only the most recent values of each metric;
/// time-series data can be queried for them (under the same metric names) from
/// Cloud Monitoring.
class JobMetrics {
  /// Timestamp as of which metric values are current.
  core.String? metricTime;

  /// All metrics for this job.
  core.List<MetricUpdate>? metrics;

  JobMetrics();

  JobMetrics.fromJson(core.Map _json) {
    if (_json.containsKey('metricTime')) {
      metricTime = _json['metricTime'] as core.String;
    }
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<MetricUpdate>((value) => MetricUpdate.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricTime != null) 'metricTime': metricTime!,
        if (metrics != null)
          'metrics': metrics!.map((value) => value.toJson()).toList(),
      };
}

/// Data disk assignment information for a specific key-range of a sharded
/// computation.
///
/// Currently we only support UTF-8 character splits to simplify encoding into
/// JSON.
class KeyRangeDataDiskAssignment {
  /// The name of the data disk where data for this range is stored.
  ///
  /// This name is local to the Google Cloud Platform project and uniquely
  /// identifies the disk within that project, for example
  /// "myproject-1014-104817-4c2-harness-0-disk-1".
  core.String? dataDisk;

  /// The end (exclusive) of the key range.
  core.String? end;

  /// The start (inclusive) of the key range.
  core.String? start;

  KeyRangeDataDiskAssignment();

  KeyRangeDataDiskAssignment.fromJson(core.Map _json) {
    if (_json.containsKey('dataDisk')) {
      dataDisk = _json['dataDisk'] as core.String;
    }
    if (_json.containsKey('end')) {
      end = _json['end'] as core.String;
    }
    if (_json.containsKey('start')) {
      start = _json['start'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataDisk != null) 'dataDisk': dataDisk!,
        if (end != null) 'end': end!,
        if (start != null) 'start': start!,
      };
}

/// Location information for a specific key-range of a sharded computation.
///
/// Currently we only support UTF-8 character splits to simplify encoding into
/// JSON.
class KeyRangeLocation {
  /// The name of the data disk where data for this range is stored.
  ///
  /// This name is local to the Google Cloud Platform project and uniquely
  /// identifies the disk within that project, for example
  /// "myproject-1014-104817-4c2-harness-0-disk-1".
  core.String? dataDisk;

  /// The physical location of this range assignment to be used for streaming
  /// computation cross-worker message delivery.
  core.String? deliveryEndpoint;

  /// The location of the persistent state for this range, as a persistent
  /// directory in the worker local filesystem.
  ///
  /// Deprecated.
  core.String? deprecatedPersistentDirectory;

  /// The end (exclusive) of the key range.
  core.String? end;

  /// The start (inclusive) of the key range.
  core.String? start;

  KeyRangeLocation();

  KeyRangeLocation.fromJson(core.Map _json) {
    if (_json.containsKey('dataDisk')) {
      dataDisk = _json['dataDisk'] as core.String;
    }
    if (_json.containsKey('deliveryEndpoint')) {
      deliveryEndpoint = _json['deliveryEndpoint'] as core.String;
    }
    if (_json.containsKey('deprecatedPersistentDirectory')) {
      deprecatedPersistentDirectory =
          _json['deprecatedPersistentDirectory'] as core.String;
    }
    if (_json.containsKey('end')) {
      end = _json['end'] as core.String;
    }
    if (_json.containsKey('start')) {
      start = _json['start'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataDisk != null) 'dataDisk': dataDisk!,
        if (deliveryEndpoint != null) 'deliveryEndpoint': deliveryEndpoint!,
        if (deprecatedPersistentDirectory != null)
          'deprecatedPersistentDirectory': deprecatedPersistentDirectory!,
        if (end != null) 'end': end!,
        if (start != null) 'start': start!,
      };
}

/// Launch FlexTemplate Parameter.
class LaunchFlexTemplateParameter {
  /// Spec about the container image to launch.
  ContainerSpec? containerSpec;

  /// Cloud Storage path to a file with json serialized ContainerSpec as
  /// content.
  core.String? containerSpecGcsPath;

  /// The runtime environment for the FlexTemplate job
  FlexTemplateRuntimeEnvironment? environment;

  /// The job name to use for the created job.
  ///
  /// For update job request, job name should be same as the existing running
  /// job.
  ///
  /// Required.
  core.String? jobName;

  /// Launch options for this flex template job.
  ///
  /// This is a common set of options across languages and templates. This
  /// should not be used to pass job parameters.
  core.Map<core.String, core.String>? launchOptions;

  /// The parameters for FlexTemplate.
  ///
  /// Ex. {"num_workers":"5"}
  core.Map<core.String, core.String>? parameters;

  /// Use this to pass transform_name_mappings for streaming update jobs.
  ///
  /// Ex:{"oldTransformName":"newTransformName",...}'
  core.Map<core.String, core.String>? transformNameMappings;

  /// Set this to true if you are sending a request to update a running
  /// streaming job.
  ///
  /// When set, the job name should be the same as the running job.
  core.bool? update;

  LaunchFlexTemplateParameter();

  LaunchFlexTemplateParameter.fromJson(core.Map _json) {
    if (_json.containsKey('containerSpec')) {
      containerSpec = ContainerSpec.fromJson(
          _json['containerSpec'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('containerSpecGcsPath')) {
      containerSpecGcsPath = _json['containerSpecGcsPath'] as core.String;
    }
    if (_json.containsKey('environment')) {
      environment = FlexTemplateRuntimeEnvironment.fromJson(
          _json['environment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('jobName')) {
      jobName = _json['jobName'] as core.String;
    }
    if (_json.containsKey('launchOptions')) {
      launchOptions =
          (_json['launchOptions'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('parameters')) {
      parameters =
          (_json['parameters'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('transformNameMappings')) {
      transformNameMappings = (_json['transformNameMappings']
              as core.Map<core.String, core.dynamic>)
          .map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('update')) {
      update = _json['update'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerSpec != null) 'containerSpec': containerSpec!.toJson(),
        if (containerSpecGcsPath != null)
          'containerSpecGcsPath': containerSpecGcsPath!,
        if (environment != null) 'environment': environment!.toJson(),
        if (jobName != null) 'jobName': jobName!,
        if (launchOptions != null) 'launchOptions': launchOptions!,
        if (parameters != null) 'parameters': parameters!,
        if (transformNameMappings != null)
          'transformNameMappings': transformNameMappings!,
        if (update != null) 'update': update!,
      };
}

/// A request to launch a Cloud Dataflow job from a FlexTemplate.
class LaunchFlexTemplateRequest {
  /// Parameter to launch a job form Flex Template.
  ///
  /// Required.
  LaunchFlexTemplateParameter? launchParameter;

  /// If true, the request is validated but not actually executed.
  ///
  /// Defaults to false.
  core.bool? validateOnly;

  LaunchFlexTemplateRequest();

  LaunchFlexTemplateRequest.fromJson(core.Map _json) {
    if (_json.containsKey('launchParameter')) {
      launchParameter = LaunchFlexTemplateParameter.fromJson(
          _json['launchParameter'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('validateOnly')) {
      validateOnly = _json['validateOnly'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (launchParameter != null)
          'launchParameter': launchParameter!.toJson(),
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Response to the request to launch a job from Flex Template.
class LaunchFlexTemplateResponse {
  /// The job that was launched, if the request was not a dry run and the job
  /// was successfully launched.
  Job? job;

  LaunchFlexTemplateResponse();

  LaunchFlexTemplateResponse.fromJson(core.Map _json) {
    if (_json.containsKey('job')) {
      job = Job.fromJson(_json['job'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (job != null) 'job': job!.toJson(),
      };
}

/// Parameters to provide to the template being launched.
class LaunchTemplateParameters {
  /// The runtime environment for the job.
  RuntimeEnvironment? environment;

  /// The job name to use for the created job.
  ///
  /// Required.
  core.String? jobName;

  /// The runtime parameters to pass to the job.
  core.Map<core.String, core.String>? parameters;

  /// Only applicable when updating a pipeline.
  ///
  /// Map of transform name prefixes of the job to be replaced to the
  /// corresponding name prefixes of the new job.
  core.Map<core.String, core.String>? transformNameMapping;

  /// If set, replace the existing pipeline with the name specified by jobName
  /// with this pipeline, preserving state.
  core.bool? update;

  LaunchTemplateParameters();

  LaunchTemplateParameters.fromJson(core.Map _json) {
    if (_json.containsKey('environment')) {
      environment = RuntimeEnvironment.fromJson(
          _json['environment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('jobName')) {
      jobName = _json['jobName'] as core.String;
    }
    if (_json.containsKey('parameters')) {
      parameters =
          (_json['parameters'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('transformNameMapping')) {
      transformNameMapping =
          (_json['transformNameMapping'] as core.Map<core.String, core.dynamic>)
              .map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('update')) {
      update = _json['update'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (environment != null) 'environment': environment!.toJson(),
        if (jobName != null) 'jobName': jobName!,
        if (parameters != null) 'parameters': parameters!,
        if (transformNameMapping != null)
          'transformNameMapping': transformNameMapping!,
        if (update != null) 'update': update!,
      };
}

/// Response to the request to launch a template.
class LaunchTemplateResponse {
  /// The job that was launched, if the request was not a dry run and the job
  /// was successfully launched.
  Job? job;

  LaunchTemplateResponse();

  LaunchTemplateResponse.fromJson(core.Map _json) {
    if (_json.containsKey('job')) {
      job = Job.fromJson(_json['job'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (job != null) 'job': job!.toJson(),
      };
}

/// Request to lease WorkItems.
class LeaseWorkItemRequest {
  /// The current timestamp at the worker.
  core.String? currentWorkerTime;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the WorkItem's job.
  core.String? location;

  /// The initial lease period.
  core.String? requestedLeaseDuration;

  /// Untranslated bag-of-bytes WorkRequest from UnifiedWorker.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? unifiedWorkerRequest;

  /// Filter for WorkItem type.
  core.List<core.String>? workItemTypes;

  /// Worker capabilities.
  ///
  /// WorkItems might be limited to workers with specific capabilities.
  core.List<core.String>? workerCapabilities;

  /// Identifies the worker leasing work -- typically the ID of the virtual
  /// machine running the worker.
  core.String? workerId;

  LeaseWorkItemRequest();

  LeaseWorkItemRequest.fromJson(core.Map _json) {
    if (_json.containsKey('currentWorkerTime')) {
      currentWorkerTime = _json['currentWorkerTime'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('requestedLeaseDuration')) {
      requestedLeaseDuration = _json['requestedLeaseDuration'] as core.String;
    }
    if (_json.containsKey('unifiedWorkerRequest')) {
      unifiedWorkerRequest =
          (_json['unifiedWorkerRequest'] as core.Map<core.String, core.dynamic>)
              .map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('workItemTypes')) {
      workItemTypes = (_json['workItemTypes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('workerCapabilities')) {
      workerCapabilities = (_json['workerCapabilities'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('workerId')) {
      workerId = _json['workerId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentWorkerTime != null) 'currentWorkerTime': currentWorkerTime!,
        if (location != null) 'location': location!,
        if (requestedLeaseDuration != null)
          'requestedLeaseDuration': requestedLeaseDuration!,
        if (unifiedWorkerRequest != null)
          'unifiedWorkerRequest': unifiedWorkerRequest!,
        if (workItemTypes != null) 'workItemTypes': workItemTypes!,
        if (workerCapabilities != null)
          'workerCapabilities': workerCapabilities!,
        if (workerId != null) 'workerId': workerId!,
      };
}

/// Response to a request to lease WorkItems.
class LeaseWorkItemResponse {
  /// Untranslated bag-of-bytes WorkResponse for UnifiedWorker.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? unifiedWorkerResponse;

  /// A list of the leased WorkItems.
  core.List<WorkItem>? workItems;

  LeaseWorkItemResponse();

  LeaseWorkItemResponse.fromJson(core.Map _json) {
    if (_json.containsKey('unifiedWorkerResponse')) {
      unifiedWorkerResponse = (_json['unifiedWorkerResponse']
              as core.Map<core.String, core.dynamic>)
          .map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('workItems')) {
      workItems = (_json['workItems'] as core.List)
          .map<WorkItem>((value) =>
              WorkItem.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (unifiedWorkerResponse != null)
          'unifiedWorkerResponse': unifiedWorkerResponse!,
        if (workItems != null)
          'workItems': workItems!.map((value) => value.toJson()).toList(),
      };
}

/// Response to a request to list job messages.
class ListJobMessagesResponse {
  /// Autoscaling events in ascending timestamp order.
  core.List<AutoscalingEvent>? autoscalingEvents;

  /// Messages in ascending timestamp order.
  core.List<JobMessage>? jobMessages;

  /// The token to obtain the next page of results if there are more.
  core.String? nextPageToken;

  ListJobMessagesResponse();

  ListJobMessagesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('autoscalingEvents')) {
      autoscalingEvents = (_json['autoscalingEvents'] as core.List)
          .map<AutoscalingEvent>((value) => AutoscalingEvent.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('jobMessages')) {
      jobMessages = (_json['jobMessages'] as core.List)
          .map<JobMessage>((value) =>
              JobMessage.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoscalingEvents != null)
          'autoscalingEvents':
              autoscalingEvents!.map((value) => value.toJson()).toList(),
        if (jobMessages != null)
          'jobMessages': jobMessages!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response to a request to list Cloud Dataflow jobs in a project.
///
/// This might be a partial response, depending on the page size in the
/// ListJobsRequest. However, if the project does not have any jobs, an instance
/// of ListJobsResponse is not returned and the requests's response body is
/// empty {}.
class ListJobsResponse {
  /// Zero or more messages describing the
  /// [regional endpoints](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that failed to respond.
  core.List<FailedLocation>? failedLocation;

  /// A subset of the requested job information.
  core.List<Job>? jobs;

  /// Set if there may be more results than fit in this response.
  core.String? nextPageToken;

  ListJobsResponse();

  ListJobsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('failedLocation')) {
      failedLocation = (_json['failedLocation'] as core.List)
          .map<FailedLocation>((value) => FailedLocation.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('jobs')) {
      jobs = (_json['jobs'] as core.List)
          .map<Job>((value) =>
              Job.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (failedLocation != null)
          'failedLocation':
              failedLocation!.map((value) => value.toJson()).toList(),
        if (jobs != null) 'jobs': jobs!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List of snapshots.
class ListSnapshotsResponse {
  /// Returned snapshots.
  core.List<Snapshot>? snapshots;

  ListSnapshotsResponse();

  ListSnapshotsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('snapshots')) {
      snapshots = (_json['snapshots'] as core.List)
          .map<Snapshot>((value) =>
              Snapshot.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (snapshots != null)
          'snapshots': snapshots!.map((value) => value.toJson()).toList(),
      };
}

/// MapTask consists of an ordered set of instructions, each of which describes
/// one particular low-level operation for the worker to perform in order to
/// accomplish the MapTask's WorkItem.
///
/// Each instruction must appear in the list before any instructions which
/// depends on its output.
class MapTask {
  /// Counter prefix that can be used to prefix counters.
  ///
  /// Not currently used in Dataflow.
  core.String? counterPrefix;

  /// The instructions in the MapTask.
  core.List<ParallelInstruction>? instructions;

  /// System-defined name of the stage containing this MapTask.
  ///
  /// Unique across the workflow.
  core.String? stageName;

  /// System-defined name of this MapTask.
  ///
  /// Unique across the workflow.
  core.String? systemName;

  MapTask();

  MapTask.fromJson(core.Map _json) {
    if (_json.containsKey('counterPrefix')) {
      counterPrefix = _json['counterPrefix'] as core.String;
    }
    if (_json.containsKey('instructions')) {
      instructions = (_json['instructions'] as core.List)
          .map<ParallelInstruction>((value) => ParallelInstruction.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('stageName')) {
      stageName = _json['stageName'] as core.String;
    }
    if (_json.containsKey('systemName')) {
      systemName = _json['systemName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (counterPrefix != null) 'counterPrefix': counterPrefix!,
        if (instructions != null)
          'instructions': instructions!.map((value) => value.toJson()).toList(),
        if (stageName != null) 'stageName': stageName!,
        if (systemName != null) 'systemName': systemName!,
      };
}

/// Information about the memory usage of a worker or a container within a
/// worker.
class MemInfo {
  /// Instantenous memory limit in bytes.
  core.String? currentLimitBytes;

  /// Instantenous memory (RSS) size in bytes.
  core.String? currentRssBytes;

  /// Timestamp of the measurement.
  core.String? timestamp;

  /// Total memory (RSS) usage since start up in GB * ms.
  core.String? totalGbMs;

  MemInfo();

  MemInfo.fromJson(core.Map _json) {
    if (_json.containsKey('currentLimitBytes')) {
      currentLimitBytes = _json['currentLimitBytes'] as core.String;
    }
    if (_json.containsKey('currentRssBytes')) {
      currentRssBytes = _json['currentRssBytes'] as core.String;
    }
    if (_json.containsKey('timestamp')) {
      timestamp = _json['timestamp'] as core.String;
    }
    if (_json.containsKey('totalGbMs')) {
      totalGbMs = _json['totalGbMs'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentLimitBytes != null) 'currentLimitBytes': currentLimitBytes!,
        if (currentRssBytes != null) 'currentRssBytes': currentRssBytes!,
        if (timestamp != null) 'timestamp': timestamp!,
        if (totalGbMs != null) 'totalGbMs': totalGbMs!,
      };
}

/// The metric short id is returned to the user alongside an offset into
/// ReportWorkItemStatusRequest
class MetricShortId {
  /// The index of the corresponding metric in the ReportWorkItemStatusRequest.
  ///
  /// Required.
  core.int? metricIndex;

  /// The service-generated short identifier for the metric.
  core.String? shortId;

  MetricShortId();

  MetricShortId.fromJson(core.Map _json) {
    if (_json.containsKey('metricIndex')) {
      metricIndex = _json['metricIndex'] as core.int;
    }
    if (_json.containsKey('shortId')) {
      shortId = _json['shortId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricIndex != null) 'metricIndex': metricIndex!,
        if (shortId != null) 'shortId': shortId!,
      };
}

/// Identifies a metric, by describing the source which generated the metric.
class MetricStructuredName {
  /// Zero or more labeled fields which identify the part of the job this metric
  /// is associated with, such as the name of a step or collection.
  ///
  /// For example, built-in counters associated with steps will have
  /// context\['step'\] = . Counters associated with PCollections in the SDK
  /// will have context\['pcollection'\] = .
  core.Map<core.String, core.String>? context;

  /// Worker-defined metric name.
  core.String? name;

  /// Origin (namespace) of metric name.
  ///
  /// May be blank for user-define metrics; will be "dataflow" for metrics
  /// defined by the Dataflow service or SDK.
  core.String? origin;

  MetricStructuredName();

  MetricStructuredName.fromJson(core.Map _json) {
    if (_json.containsKey('context')) {
      context = (_json['context'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('origin')) {
      origin = _json['origin'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (name != null) 'name': name!,
        if (origin != null) 'origin': origin!,
      };
}

/// Describes the state of a metric.
class MetricUpdate {
  /// True if this metric is reported as the total cumulative aggregate value
  /// accumulated since the worker started working on this WorkItem.
  ///
  /// By default this is false, indicating that this metric is reported as a
  /// delta that is not associated with any WorkItem.
  core.bool? cumulative;

  /// A struct value describing properties of a distribution of numeric values.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? distribution;

  /// A struct value describing properties of a Gauge.
  ///
  /// Metrics of gauge type show the value of a metric across time, and is
  /// aggregated based on the newest value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? gauge;

  /// Worker-computed aggregate value for internal use by the Dataflow service.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? internal;

  /// Metric aggregation kind.
  ///
  /// The possible metric aggregation kinds are "Sum", "Max", "Min", "Mean",
  /// "Set", "And", "Or", and "Distribution". The specified aggregation kind is
  /// case-insensitive. If omitted, this is not an aggregated value but instead
  /// a single metric sample value.
  core.String? kind;

  /// Worker-computed aggregate value for the "Mean" aggregation kind.
  ///
  /// This holds the count of the aggregated values and is used in combination
  /// with mean_sum above to obtain the actual mean aggregate value. The only
  /// possible value type is Long.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? meanCount;

  /// Worker-computed aggregate value for the "Mean" aggregation kind.
  ///
  /// This holds the sum of the aggregated values and is used in combination
  /// with mean_count below to obtain the actual mean aggregate value. The only
  /// possible value types are Long and Double.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? meanSum;

  /// Name of the metric.
  MetricStructuredName? name;

  /// Worker-computed aggregate value for aggregation kinds "Sum", "Max", "Min",
  /// "And", and "Or".
  ///
  /// The possible value types are Long, Double, and Boolean.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? scalar;

  /// Worker-computed aggregate value for the "Set" aggregation kind.
  ///
  /// The only possible value type is a list of Values whose type can be Long,
  /// Double, or String, according to the metric's type. All Values in the list
  /// must be of the same type.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? set;

  /// Timestamp associated with the metric value.
  ///
  /// Optional when workers are reporting work progress; it will be filled in
  /// responses from the metrics API.
  core.String? updateTime;

  MetricUpdate();

  MetricUpdate.fromJson(core.Map _json) {
    if (_json.containsKey('cumulative')) {
      cumulative = _json['cumulative'] as core.bool;
    }
    if (_json.containsKey('distribution')) {
      distribution = _json['distribution'] as core.Object;
    }
    if (_json.containsKey('gauge')) {
      gauge = _json['gauge'] as core.Object;
    }
    if (_json.containsKey('internal')) {
      internal = _json['internal'] as core.Object;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('meanCount')) {
      meanCount = _json['meanCount'] as core.Object;
    }
    if (_json.containsKey('meanSum')) {
      meanSum = _json['meanSum'] as core.Object;
    }
    if (_json.containsKey('name')) {
      name = MetricStructuredName.fromJson(
          _json['name'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('scalar')) {
      scalar = _json['scalar'] as core.Object;
    }
    if (_json.containsKey('set')) {
      set = _json['set'] as core.Object;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (cumulative != null) 'cumulative': cumulative!,
        if (distribution != null) 'distribution': distribution!,
        if (gauge != null) 'gauge': gauge!,
        if (internal != null) 'internal': internal!,
        if (kind != null) 'kind': kind!,
        if (meanCount != null) 'meanCount': meanCount!,
        if (meanSum != null) 'meanSum': meanSum!,
        if (name != null) 'name': name!.toJson(),
        if (scalar != null) 'scalar': scalar!,
        if (set != null) 'set': set!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Describes mounted data disk.
class MountedDataDisk {
  /// The name of the data disk.
  ///
  /// This name is local to the Google Cloud Platform project and uniquely
  /// identifies the disk within that project, for example
  /// "myproject-1014-104817-4c2-harness-0-disk-1".
  core.String? dataDisk;

  MountedDataDisk();

  MountedDataDisk.fromJson(core.Map _json) {
    if (_json.containsKey('dataDisk')) {
      dataDisk = _json['dataDisk'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataDisk != null) 'dataDisk': dataDisk!,
      };
}

/// Information about an output of a multi-output DoFn.
class MultiOutputInfo {
  /// The id of the tag the user code will emit to this output by; this should
  /// correspond to the tag of some SideInputInfo.
  core.String? tag;

  MultiOutputInfo();

  MultiOutputInfo.fromJson(core.Map _json) {
    if (_json.containsKey('tag')) {
      tag = _json['tag'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (tag != null) 'tag': tag!,
      };
}

/// Basic metadata about a counter.
class NameAndKind {
  /// Counter aggregation kind.
  /// Possible string values are:
  /// - "INVALID" : Counter aggregation kind was not set.
  /// - "SUM" : Aggregated value is the sum of all contributed values.
  /// - "MAX" : Aggregated value is the max of all contributed values.
  /// - "MIN" : Aggregated value is the min of all contributed values.
  /// - "MEAN" : Aggregated value is the mean of all contributed values.
  /// - "OR" : Aggregated value represents the logical 'or' of all contributed
  /// values.
  /// - "AND" : Aggregated value represents the logical 'and' of all contributed
  /// values.
  /// - "SET" : Aggregated value is a set of unique contributed values.
  /// - "DISTRIBUTION" : Aggregated value captures statistics about a
  /// distribution.
  /// - "LATEST_VALUE" : Aggregated value tracks the latest value of a variable.
  core.String? kind;

  /// Name of the counter.
  core.String? name;

  NameAndKind();

  NameAndKind.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// The packages that must be installed in order for a worker to run the steps
/// of the Cloud Dataflow job that will be assigned to its worker pool.
///
/// This is the mechanism by which the Cloud Dataflow SDK causes code to be
/// loaded onto the workers. For example, the Cloud Dataflow Java SDK might use
/// this to install jars containing the user's code and all of the various
/// dependencies (libraries, data files, etc.) required in order for that code
/// to run.
class Package {
  /// The resource to read the package from.
  ///
  /// The supported resource type is: Google Cloud Storage:
  /// storage.googleapis.com/{bucket} bucket.storage.googleapis.com/
  core.String? location;

  /// The name of the package.
  core.String? name;

  Package();

  Package.fromJson(core.Map _json) {
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
      };
}

/// An instruction that does a ParDo operation.
///
/// Takes one main input and zero or more side inputs, and produces zero or more
/// outputs. Runs user code.
class ParDoInstruction {
  /// The input.
  InstructionInput? input;

  /// Information about each of the outputs, if user_fn is a MultiDoFn.
  core.List<MultiOutputInfo>? multiOutputInfos;

  /// The number of outputs.
  core.int? numOutputs;

  /// Zero or more side inputs.
  core.List<SideInputInfo>? sideInputs;

  /// The user function to invoke.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? userFn;

  ParDoInstruction();

  ParDoInstruction.fromJson(core.Map _json) {
    if (_json.containsKey('input')) {
      input = InstructionInput.fromJson(
          _json['input'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('multiOutputInfos')) {
      multiOutputInfos = (_json['multiOutputInfos'] as core.List)
          .map<MultiOutputInfo>((value) => MultiOutputInfo.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('numOutputs')) {
      numOutputs = _json['numOutputs'] as core.int;
    }
    if (_json.containsKey('sideInputs')) {
      sideInputs = (_json['sideInputs'] as core.List)
          .map<SideInputInfo>((value) => SideInputInfo.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('userFn')) {
      userFn = (_json['userFn'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (input != null) 'input': input!.toJson(),
        if (multiOutputInfos != null)
          'multiOutputInfos':
              multiOutputInfos!.map((value) => value.toJson()).toList(),
        if (numOutputs != null) 'numOutputs': numOutputs!,
        if (sideInputs != null)
          'sideInputs': sideInputs!.map((value) => value.toJson()).toList(),
        if (userFn != null) 'userFn': userFn!,
      };
}

/// Describes a particular operation comprising a MapTask.
class ParallelInstruction {
  /// Additional information for Flatten instructions.
  FlattenInstruction? flatten;

  /// User-provided name of this operation.
  core.String? name;

  /// System-defined name for the operation in the original workflow graph.
  core.String? originalName;

  /// Describes the outputs of the instruction.
  core.List<InstructionOutput>? outputs;

  /// Additional information for ParDo instructions.
  ParDoInstruction? parDo;

  /// Additional information for PartialGroupByKey instructions.
  PartialGroupByKeyInstruction? partialGroupByKey;

  /// Additional information for Read instructions.
  ReadInstruction? read;

  /// System-defined name of this operation.
  ///
  /// Unique across the workflow.
  core.String? systemName;

  /// Additional information for Write instructions.
  WriteInstruction? write;

  ParallelInstruction();

  ParallelInstruction.fromJson(core.Map _json) {
    if (_json.containsKey('flatten')) {
      flatten = FlattenInstruction.fromJson(
          _json['flatten'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('originalName')) {
      originalName = _json['originalName'] as core.String;
    }
    if (_json.containsKey('outputs')) {
      outputs = (_json['outputs'] as core.List)
          .map<InstructionOutput>((value) => InstructionOutput.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('parDo')) {
      parDo = ParDoInstruction.fromJson(
          _json['parDo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('partialGroupByKey')) {
      partialGroupByKey = PartialGroupByKeyInstruction.fromJson(
          _json['partialGroupByKey'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('read')) {
      read = ReadInstruction.fromJson(
          _json['read'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('systemName')) {
      systemName = _json['systemName'] as core.String;
    }
    if (_json.containsKey('write')) {
      write = WriteInstruction.fromJson(
          _json['write'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (flatten != null) 'flatten': flatten!.toJson(),
        if (name != null) 'name': name!,
        if (originalName != null) 'originalName': originalName!,
        if (outputs != null)
          'outputs': outputs!.map((value) => value.toJson()).toList(),
        if (parDo != null) 'parDo': parDo!.toJson(),
        if (partialGroupByKey != null)
          'partialGroupByKey': partialGroupByKey!.toJson(),
        if (read != null) 'read': read!.toJson(),
        if (systemName != null) 'systemName': systemName!,
        if (write != null) 'write': write!.toJson(),
      };
}

/// Structured data associated with this message.
class Parameter {
  /// Key or name for this parameter.
  core.String? key;

  /// Value for this parameter.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? value;

  Parameter();

  Parameter.fromJson(core.Map _json) {
    if (_json.containsKey('key')) {
      key = _json['key'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.Object;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Metadata for a specific parameter.
class ParameterMetadata {
  /// Additional metadata for describing this parameter.
  ///
  /// Optional.
  core.Map<core.String, core.String>? customMetadata;

  /// The help text to display for the parameter.
  ///
  /// Required.
  core.String? helpText;

  /// Whether the parameter is optional.
  ///
  /// Defaults to false.
  ///
  /// Optional.
  core.bool? isOptional;

  /// The label to display for the parameter.
  ///
  /// Required.
  core.String? label;

  /// The name of the parameter.
  ///
  /// Required.
  core.String? name;

  /// The type of the parameter.
  ///
  /// Used for selecting input picker.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DEFAULT" : Default input type.
  /// - "TEXT" : The parameter specifies generic text input.
  /// - "GCS_READ_BUCKET" : The parameter specifies a Cloud Storage Bucket to
  /// read from.
  /// - "GCS_WRITE_BUCKET" : The parameter specifies a Cloud Storage Bucket to
  /// write to.
  /// - "GCS_READ_FILE" : The parameter specifies a Cloud Storage file path to
  /// read from.
  /// - "GCS_WRITE_FILE" : The parameter specifies a Cloud Storage file path to
  /// write to.
  /// - "GCS_READ_FOLDER" : The parameter specifies a Cloud Storage folder path
  /// to read from.
  /// - "GCS_WRITE_FOLDER" : The parameter specifies a Cloud Storage folder to
  /// write to.
  /// - "PUBSUB_TOPIC" : The parameter specifies a Pub/Sub Topic.
  /// - "PUBSUB_SUBSCRIPTION" : The parameter specifies a Pub/Sub Subscription.
  core.String? paramType;

  /// Regexes that the parameter must match.
  ///
  /// Optional.
  core.List<core.String>? regexes;

  ParameterMetadata();

  ParameterMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('customMetadata')) {
      customMetadata =
          (_json['customMetadata'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('helpText')) {
      helpText = _json['helpText'] as core.String;
    }
    if (_json.containsKey('isOptional')) {
      isOptional = _json['isOptional'] as core.bool;
    }
    if (_json.containsKey('label')) {
      label = _json['label'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('paramType')) {
      paramType = _json['paramType'] as core.String;
    }
    if (_json.containsKey('regexes')) {
      regexes = (_json['regexes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (customMetadata != null) 'customMetadata': customMetadata!,
        if (helpText != null) 'helpText': helpText!,
        if (isOptional != null) 'isOptional': isOptional!,
        if (label != null) 'label': label!,
        if (name != null) 'name': name!,
        if (paramType != null) 'paramType': paramType!,
        if (regexes != null) 'regexes': regexes!,
      };
}

/// An instruction that does a partial group-by-key.
///
/// One input and one output.
class PartialGroupByKeyInstruction {
  /// Describes the input to the partial group-by-key instruction.
  InstructionInput? input;

  /// The codec to use for interpreting an element in the input PTable.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? inputElementCodec;

  /// If this instruction includes a combining function this is the name of the
  /// intermediate store between the GBK and the CombineValues.
  core.String? originalCombineValuesInputStoreName;

  /// If this instruction includes a combining function, this is the name of the
  /// CombineValues instruction lifted into this instruction.
  core.String? originalCombineValuesStepName;

  /// Zero or more side inputs.
  core.List<SideInputInfo>? sideInputs;

  /// The value combining function to invoke.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? valueCombiningFn;

  PartialGroupByKeyInstruction();

  PartialGroupByKeyInstruction.fromJson(core.Map _json) {
    if (_json.containsKey('input')) {
      input = InstructionInput.fromJson(
          _json['input'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('inputElementCodec')) {
      inputElementCodec =
          (_json['inputElementCodec'] as core.Map<core.String, core.dynamic>)
              .map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('originalCombineValuesInputStoreName')) {
      originalCombineValuesInputStoreName =
          _json['originalCombineValuesInputStoreName'] as core.String;
    }
    if (_json.containsKey('originalCombineValuesStepName')) {
      originalCombineValuesStepName =
          _json['originalCombineValuesStepName'] as core.String;
    }
    if (_json.containsKey('sideInputs')) {
      sideInputs = (_json['sideInputs'] as core.List)
          .map<SideInputInfo>((value) => SideInputInfo.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('valueCombiningFn')) {
      valueCombiningFn =
          (_json['valueCombiningFn'] as core.Map<core.String, core.dynamic>)
              .map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (input != null) 'input': input!.toJson(),
        if (inputElementCodec != null) 'inputElementCodec': inputElementCodec!,
        if (originalCombineValuesInputStoreName != null)
          'originalCombineValuesInputStoreName':
              originalCombineValuesInputStoreName!,
        if (originalCombineValuesStepName != null)
          'originalCombineValuesStepName': originalCombineValuesStepName!,
        if (sideInputs != null)
          'sideInputs': sideInputs!.map((value) => value.toJson()).toList(),
        if (valueCombiningFn != null) 'valueCombiningFn': valueCombiningFn!,
      };
}

/// A descriptive representation of submitted pipeline as well as the executed
/// form.
///
/// This data is provided by the Dataflow service for ease of visualizing the
/// pipeline and interpreting Dataflow provided metrics.
class PipelineDescription {
  /// Pipeline level display data.
  core.List<DisplayData>? displayData;

  /// Description of each stage of execution of the pipeline.
  core.List<ExecutionStageSummary>? executionPipelineStage;

  /// Description of each transform in the pipeline and collections between
  /// them.
  core.List<TransformSummary>? originalPipelineTransform;

  PipelineDescription();

  PipelineDescription.fromJson(core.Map _json) {
    if (_json.containsKey('displayData')) {
      displayData = (_json['displayData'] as core.List)
          .map<DisplayData>((value) => DisplayData.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('executionPipelineStage')) {
      executionPipelineStage = (_json['executionPipelineStage'] as core.List)
          .map<ExecutionStageSummary>((value) => ExecutionStageSummary.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('originalPipelineTransform')) {
      originalPipelineTransform =
          (_json['originalPipelineTransform'] as core.List)
              .map<TransformSummary>((value) => TransformSummary.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayData != null)
          'displayData': displayData!.map((value) => value.toJson()).toList(),
        if (executionPipelineStage != null)
          'executionPipelineStage':
              executionPipelineStage!.map((value) => value.toJson()).toList(),
        if (originalPipelineTransform != null)
          'originalPipelineTransform': originalPipelineTransform!
              .map((value) => value.toJson())
              .toList(),
      };
}

/// A point in the timeseries.
class Point {
  /// The timestamp of the point.
  core.String? time;

  /// The value of the point.
  core.double? value;

  Point();

  Point.fromJson(core.Map _json) {
    if (_json.containsKey('time')) {
      time = _json['time'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = (_json['value'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (time != null) 'time': time!,
        if (value != null) 'value': value!,
      };
}

/// Position defines a position within a collection of data.
///
/// The value can be either the end position, a key (used with ordered
/// collections), a byte offset, or a record index.
class Position {
  /// Position is a byte offset.
  core.String? byteOffset;

  /// CloudPosition is a concat position.
  ConcatPosition? concatPosition;

  /// Position is past all other positions.
  ///
  /// Also useful for the end position of an unbounded range.
  core.bool? end;

  /// Position is a string key, ordered lexicographically.
  core.String? key;

  /// Position is a record index.
  core.String? recordIndex;

  /// CloudPosition is a base64 encoded BatchShufflePosition (with FIXED
  /// sharding).
  core.String? shufflePosition;

  Position();

  Position.fromJson(core.Map _json) {
    if (_json.containsKey('byteOffset')) {
      byteOffset = _json['byteOffset'] as core.String;
    }
    if (_json.containsKey('concatPosition')) {
      concatPosition = ConcatPosition.fromJson(
          _json['concatPosition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('end')) {
      end = _json['end'] as core.bool;
    }
    if (_json.containsKey('key')) {
      key = _json['key'] as core.String;
    }
    if (_json.containsKey('recordIndex')) {
      recordIndex = _json['recordIndex'] as core.String;
    }
    if (_json.containsKey('shufflePosition')) {
      shufflePosition = _json['shufflePosition'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (byteOffset != null) 'byteOffset': byteOffset!,
        if (concatPosition != null) 'concatPosition': concatPosition!.toJson(),
        if (end != null) 'end': end!,
        if (key != null) 'key': key!,
        if (recordIndex != null) 'recordIndex': recordIndex!,
        if (shufflePosition != null) 'shufflePosition': shufflePosition!,
      };
}

/// Information about the progress of some component of job execution.
class ProgressTimeseries {
  /// The current progress of the component, in the range \[0,1\].
  core.double? currentProgress;

  /// History of progress for the component.
  ///
  /// Points are sorted by time.
  core.List<Point>? dataPoints;

  ProgressTimeseries();

  ProgressTimeseries.fromJson(core.Map _json) {
    if (_json.containsKey('currentProgress')) {
      currentProgress = (_json['currentProgress'] as core.num).toDouble();
    }
    if (_json.containsKey('dataPoints')) {
      dataPoints = (_json['dataPoints'] as core.List)
          .map<Point>((value) =>
              Point.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentProgress != null) 'currentProgress': currentProgress!,
        if (dataPoints != null)
          'dataPoints': dataPoints!.map((value) => value.toJson()).toList(),
      };
}

/// Metadata for a Pub/Sub connector used by the job.
class PubSubIODetails {
  /// Subscription used in the connection.
  core.String? subscription;

  /// Topic accessed in the connection.
  core.String? topic;

  PubSubIODetails();

  PubSubIODetails.fromJson(core.Map _json) {
    if (_json.containsKey('subscription')) {
      subscription = _json['subscription'] as core.String;
    }
    if (_json.containsKey('topic')) {
      topic = _json['topic'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (subscription != null) 'subscription': subscription!,
        if (topic != null) 'topic': topic!,
      };
}

/// Identifies a pubsub location to use for transferring data into or out of a
/// streaming Dataflow job.
class PubsubLocation {
  /// Indicates whether the pipeline allows late-arriving data.
  core.bool? dropLateData;

  /// If set, contains a pubsub label from which to extract record ids.
  ///
  /// If left empty, record deduplication will be strictly best effort.
  core.String? idLabel;

  /// A pubsub subscription, in the form of
  /// "pubsub.googleapis.com/subscriptions//"
  core.String? subscription;

  /// If set, contains a pubsub label from which to extract record timestamps.
  ///
  /// If left empty, record timestamps will be generated upon arrival.
  core.String? timestampLabel;

  /// A pubsub topic, in the form of "pubsub.googleapis.com/topics//"
  core.String? topic;

  /// If set, specifies the pubsub subscription that will be used for tracking
  /// custom time timestamps for watermark estimation.
  core.String? trackingSubscription;

  /// If true, then the client has requested to get pubsub attributes.
  core.bool? withAttributes;

  PubsubLocation();

  PubsubLocation.fromJson(core.Map _json) {
    if (_json.containsKey('dropLateData')) {
      dropLateData = _json['dropLateData'] as core.bool;
    }
    if (_json.containsKey('idLabel')) {
      idLabel = _json['idLabel'] as core.String;
    }
    if (_json.containsKey('subscription')) {
      subscription = _json['subscription'] as core.String;
    }
    if (_json.containsKey('timestampLabel')) {
      timestampLabel = _json['timestampLabel'] as core.String;
    }
    if (_json.containsKey('topic')) {
      topic = _json['topic'] as core.String;
    }
    if (_json.containsKey('trackingSubscription')) {
      trackingSubscription = _json['trackingSubscription'] as core.String;
    }
    if (_json.containsKey('withAttributes')) {
      withAttributes = _json['withAttributes'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (dropLateData != null) 'dropLateData': dropLateData!,
        if (idLabel != null) 'idLabel': idLabel!,
        if (subscription != null) 'subscription': subscription!,
        if (timestampLabel != null) 'timestampLabel': timestampLabel!,
        if (topic != null) 'topic': topic!,
        if (trackingSubscription != null)
          'trackingSubscription': trackingSubscription!,
        if (withAttributes != null) 'withAttributes': withAttributes!,
      };
}

/// Represents a Pubsub snapshot.
class PubsubSnapshotMetadata {
  /// The expire time of the Pubsub snapshot.
  core.String? expireTime;

  /// The name of the Pubsub snapshot.
  core.String? snapshotName;

  /// The name of the Pubsub topic.
  core.String? topicName;

  PubsubSnapshotMetadata();

  PubsubSnapshotMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('expireTime')) {
      expireTime = _json['expireTime'] as core.String;
    }
    if (_json.containsKey('snapshotName')) {
      snapshotName = _json['snapshotName'] as core.String;
    }
    if (_json.containsKey('topicName')) {
      topicName = _json['topicName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
        if (snapshotName != null) 'snapshotName': snapshotName!,
        if (topicName != null) 'topicName': topicName!,
      };
}

/// Information about a validated query.
class QueryInfo {
  /// Includes an entry for each satisfied QueryProperty.
  core.List<core.String>? queryProperty;

  QueryInfo();

  QueryInfo.fromJson(core.Map _json) {
    if (_json.containsKey('queryProperty')) {
      queryProperty = (_json['queryProperty'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (queryProperty != null) 'queryProperty': queryProperty!,
      };
}

/// An instruction that reads records.
///
/// Takes no inputs, produces one output.
class ReadInstruction {
  /// The source to read from.
  Source? source;

  ReadInstruction();

  ReadInstruction.fromJson(core.Map _json) {
    if (_json.containsKey('source')) {
      source = Source.fromJson(
          _json['source'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (source != null) 'source': source!.toJson(),
      };
}

/// Request to report the status of WorkItems.
class ReportWorkItemStatusRequest {
  /// The current timestamp at the worker.
  core.String? currentWorkerTime;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the WorkItem's job.
  core.String? location;

  /// Untranslated bag-of-bytes WorkProgressUpdateRequest from UnifiedWorker.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? unifiedWorkerRequest;

  /// The order is unimportant, except that the order of the
  /// WorkItemServiceState messages in the ReportWorkItemStatusResponse
  /// corresponds to the order of WorkItemStatus messages here.
  core.List<WorkItemStatus>? workItemStatuses;

  /// The ID of the worker reporting the WorkItem status.
  ///
  /// If this does not match the ID of the worker which the Dataflow service
  /// believes currently has the lease on the WorkItem, the report will be
  /// dropped (with an error response).
  core.String? workerId;

  ReportWorkItemStatusRequest();

  ReportWorkItemStatusRequest.fromJson(core.Map _json) {
    if (_json.containsKey('currentWorkerTime')) {
      currentWorkerTime = _json['currentWorkerTime'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('unifiedWorkerRequest')) {
      unifiedWorkerRequest =
          (_json['unifiedWorkerRequest'] as core.Map<core.String, core.dynamic>)
              .map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('workItemStatuses')) {
      workItemStatuses = (_json['workItemStatuses'] as core.List)
          .map<WorkItemStatus>((value) => WorkItemStatus.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('workerId')) {
      workerId = _json['workerId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentWorkerTime != null) 'currentWorkerTime': currentWorkerTime!,
        if (location != null) 'location': location!,
        if (unifiedWorkerRequest != null)
          'unifiedWorkerRequest': unifiedWorkerRequest!,
        if (workItemStatuses != null)
          'workItemStatuses':
              workItemStatuses!.map((value) => value.toJson()).toList(),
        if (workerId != null) 'workerId': workerId!,
      };
}

/// Response from a request to report the status of WorkItems.
class ReportWorkItemStatusResponse {
  /// Untranslated bag-of-bytes WorkProgressUpdateResponse for UnifiedWorker.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? unifiedWorkerResponse;

  /// A set of messages indicating the service-side state for each WorkItem
  /// whose status was reported, in the same order as the WorkItemStatus
  /// messages in the ReportWorkItemStatusRequest which resulting in this
  /// response.
  core.List<WorkItemServiceState>? workItemServiceStates;

  ReportWorkItemStatusResponse();

  ReportWorkItemStatusResponse.fromJson(core.Map _json) {
    if (_json.containsKey('unifiedWorkerResponse')) {
      unifiedWorkerResponse = (_json['unifiedWorkerResponse']
              as core.Map<core.String, core.dynamic>)
          .map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('workItemServiceStates')) {
      workItemServiceStates = (_json['workItemServiceStates'] as core.List)
          .map<WorkItemServiceState>((value) => WorkItemServiceState.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (unifiedWorkerResponse != null)
          'unifiedWorkerResponse': unifiedWorkerResponse!,
        if (workItemServiceStates != null)
          'workItemServiceStates':
              workItemServiceStates!.map((value) => value.toJson()).toList(),
      };
}

/// Represents the level of parallelism in a WorkItem's input, reported by the
/// worker.
class ReportedParallelism {
  /// Specifies whether the parallelism is infinite.
  ///
  /// If true, "value" is ignored. Infinite parallelism means the service will
  /// assume that the work item can always be split into more non-empty work
  /// items by dynamic splitting. This is a work-around for lack of support for
  /// infinity by the current JSON-based Java RPC stack.
  core.bool? isInfinite;

  /// Specifies the level of parallelism in case it is finite.
  core.double? value;

  ReportedParallelism();

  ReportedParallelism.fromJson(core.Map _json) {
    if (_json.containsKey('isInfinite')) {
      isInfinite = _json['isInfinite'] as core.bool;
    }
    if (_json.containsKey('value')) {
      value = (_json['value'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (isInfinite != null) 'isInfinite': isInfinite!,
        if (value != null) 'value': value!,
      };
}

/// Worker metrics exported from workers.
///
/// This contains resource utilization metrics accumulated from a variety of
/// sources. For more information, see go/df-resource-signals.
class ResourceUtilizationReport {
  /// Per container information.
  ///
  /// Key: container name.
  core.Map<core.String, ResourceUtilizationReport>? containers;

  /// CPU utilization samples.
  core.List<CPUTime>? cpuTime;

  /// Memory utilization samples.
  core.List<MemInfo>? memoryInfo;

  ResourceUtilizationReport();

  ResourceUtilizationReport.fromJson(core.Map _json) {
    if (_json.containsKey('containers')) {
      containers =
          (_json['containers'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          ResourceUtilizationReport.fromJson(
              item as core.Map<core.String, core.dynamic>),
        ),
      );
    }
    if (_json.containsKey('cpuTime')) {
      cpuTime = (_json['cpuTime'] as core.List)
          .map<CPUTime>((value) =>
              CPUTime.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('memoryInfo')) {
      memoryInfo = (_json['memoryInfo'] as core.List)
          .map<MemInfo>((value) =>
              MemInfo.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (containers != null)
          'containers':
              containers!.map((key, item) => core.MapEntry(key, item.toJson())),
        if (cpuTime != null)
          'cpuTime': cpuTime!.map((value) => value.toJson()).toList(),
        if (memoryInfo != null)
          'memoryInfo': memoryInfo!.map((value) => value.toJson()).toList(),
      };
}

/// Service-side response to WorkerMessage reporting resource utilization.
class ResourceUtilizationReportResponse {
  ResourceUtilizationReportResponse();

  ResourceUtilizationReportResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// The environment values to set at runtime.
class RuntimeEnvironment {
  /// Additional experiment flags for the job.
  core.List<core.String>? additionalExperiments;

  /// Additional user labels to be specified for the job.
  ///
  /// Keys and values should follow the restrictions specified in the
  /// [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions)
  /// page. An object containing a list of "key": value pairs. Example: {
  /// "name": "wrench", "mass": "1kg", "count": "3" }.
  core.Map<core.String, core.String>? additionalUserLabels;

  /// Whether to bypass the safety checks for the job's temporary directory.
  ///
  /// Use with caution.
  core.bool? bypassTempDirValidation;

  /// Whether to enable Streaming Engine for the job.
  core.bool? enableStreamingEngine;

  /// Configuration for VM IPs.
  /// Possible string values are:
  /// - "WORKER_IP_UNSPECIFIED" : The configuration is unknown, or unspecified.
  /// - "WORKER_IP_PUBLIC" : Workers should have public IP addresses.
  /// - "WORKER_IP_PRIVATE" : Workers should have private IP addresses.
  core.String? ipConfiguration;

  /// Name for the Cloud KMS key for the job.
  ///
  /// Key format is: projects//locations//keyRings//cryptoKeys/
  core.String? kmsKeyName;

  /// The machine type to use for the job.
  ///
  /// Defaults to the value from the template if not specified.
  core.String? machineType;

  /// The maximum number of Google Compute Engine instances to be made available
  /// to your pipeline during execution, from 1 to 1000.
  core.int? maxWorkers;

  /// Network to which VMs will be assigned.
  ///
  /// If empty or unspecified, the service will use the network "default".
  core.String? network;

  /// The initial number of Google Compute Engine instnaces for the job.
  core.int? numWorkers;

  /// The email address of the service account to run the job as.
  core.String? serviceAccountEmail;

  /// Subnetwork to which VMs will be assigned, if desired.
  ///
  /// You can specify a subnetwork using either a complete URL or an abbreviated
  /// path. Expected to be of the form
  /// "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK"
  /// or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located
  /// in a Shared VPC network, you must use the complete URL.
  core.String? subnetwork;

  /// The Cloud Storage path to use for temporary files.
  ///
  /// Must be a valid Cloud Storage URL, beginning with `gs://`.
  core.String? tempLocation;

  /// The Compute Engine region
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1".
  ///
  /// Mutually exclusive with worker_zone. If neither worker_region nor
  /// worker_zone is specified, default to the control plane's region.
  core.String? workerRegion;

  /// The Compute Engine zone
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1-a".
  ///
  /// Mutually exclusive with worker_region. If neither worker_region nor
  /// worker_zone is specified, a zone in the control plane's region is chosen
  /// based on available capacity. If both `worker_zone` and `zone` are set,
  /// `worker_zone` takes precedence.
  core.String? workerZone;

  /// The Compute Engine
  /// [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones)
  /// for launching worker instances to run your pipeline.
  ///
  /// In the future, worker_zone will take precedence.
  core.String? zone;

  RuntimeEnvironment();

  RuntimeEnvironment.fromJson(core.Map _json) {
    if (_json.containsKey('additionalExperiments')) {
      additionalExperiments = (_json['additionalExperiments'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('additionalUserLabels')) {
      additionalUserLabels =
          (_json['additionalUserLabels'] as core.Map<core.String, core.dynamic>)
              .map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('bypassTempDirValidation')) {
      bypassTempDirValidation = _json['bypassTempDirValidation'] as core.bool;
    }
    if (_json.containsKey('enableStreamingEngine')) {
      enableStreamingEngine = _json['enableStreamingEngine'] as core.bool;
    }
    if (_json.containsKey('ipConfiguration')) {
      ipConfiguration = _json['ipConfiguration'] as core.String;
    }
    if (_json.containsKey('kmsKeyName')) {
      kmsKeyName = _json['kmsKeyName'] as core.String;
    }
    if (_json.containsKey('machineType')) {
      machineType = _json['machineType'] as core.String;
    }
    if (_json.containsKey('maxWorkers')) {
      maxWorkers = _json['maxWorkers'] as core.int;
    }
    if (_json.containsKey('network')) {
      network = _json['network'] as core.String;
    }
    if (_json.containsKey('numWorkers')) {
      numWorkers = _json['numWorkers'] as core.int;
    }
    if (_json.containsKey('serviceAccountEmail')) {
      serviceAccountEmail = _json['serviceAccountEmail'] as core.String;
    }
    if (_json.containsKey('subnetwork')) {
      subnetwork = _json['subnetwork'] as core.String;
    }
    if (_json.containsKey('tempLocation')) {
      tempLocation = _json['tempLocation'] as core.String;
    }
    if (_json.containsKey('workerRegion')) {
      workerRegion = _json['workerRegion'] as core.String;
    }
    if (_json.containsKey('workerZone')) {
      workerZone = _json['workerZone'] as core.String;
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalExperiments != null)
          'additionalExperiments': additionalExperiments!,
        if (additionalUserLabels != null)
          'additionalUserLabels': additionalUserLabels!,
        if (bypassTempDirValidation != null)
          'bypassTempDirValidation': bypassTempDirValidation!,
        if (enableStreamingEngine != null)
          'enableStreamingEngine': enableStreamingEngine!,
        if (ipConfiguration != null) 'ipConfiguration': ipConfiguration!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (machineType != null) 'machineType': machineType!,
        if (maxWorkers != null) 'maxWorkers': maxWorkers!,
        if (network != null) 'network': network!,
        if (numWorkers != null) 'numWorkers': numWorkers!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (tempLocation != null) 'tempLocation': tempLocation!,
        if (workerRegion != null) 'workerRegion': workerRegion!,
        if (workerZone != null) 'workerZone': workerZone!,
        if (zone != null) 'zone': zone!,
      };
}

/// RuntimeMetadata describing a runtime environment.
class RuntimeMetadata {
  /// The parameters for the template.
  core.List<ParameterMetadata>? parameters;

  /// SDK Info for the template.
  SDKInfo? sdkInfo;

  RuntimeMetadata();

  RuntimeMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('parameters')) {
      parameters = (_json['parameters'] as core.List)
          .map<ParameterMetadata>((value) => ParameterMetadata.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('sdkInfo')) {
      sdkInfo = SDKInfo.fromJson(
          _json['sdkInfo'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameters != null)
          'parameters': parameters!.map((value) => value.toJson()).toList(),
        if (sdkInfo != null) 'sdkInfo': sdkInfo!.toJson(),
      };
}

/// SDK Information.
class SDKInfo {
  /// The SDK Language.
  ///
  /// Required.
  /// Possible string values are:
  /// - "UNKNOWN" : UNKNOWN Language.
  /// - "JAVA" : Java.
  /// - "PYTHON" : Python.
  core.String? language;

  /// The SDK version.
  ///
  /// Optional.
  core.String? version;

  SDKInfo();

  SDKInfo.fromJson(core.Map _json) {
    if (_json.containsKey('language')) {
      language = _json['language'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (language != null) 'language': language!,
        if (version != null) 'version': version!,
      };
}

/// Defines a SDK harness container for executing Dataflow pipelines.
class SdkHarnessContainerImage {
  /// A docker container image that resides in Google Container Registry.
  core.String? containerImage;

  /// Environment ID for the Beam runner API proto Environment that corresponds
  /// to the current SDK Harness.
  core.String? environmentId;

  /// If true, recommends the Dataflow service to use only one core per SDK
  /// container instance with this image.
  ///
  /// If false (or unset) recommends using more than one core per SDK container
  /// instance with this image for efficiency. Note that Dataflow service may
  /// choose to override this property if needed.
  core.bool? useSingleCorePerContainer;

  SdkHarnessContainerImage();

  SdkHarnessContainerImage.fromJson(core.Map _json) {
    if (_json.containsKey('containerImage')) {
      containerImage = _json['containerImage'] as core.String;
    }
    if (_json.containsKey('environmentId')) {
      environmentId = _json['environmentId'] as core.String;
    }
    if (_json.containsKey('useSingleCorePerContainer')) {
      useSingleCorePerContainer =
          _json['useSingleCorePerContainer'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerImage != null) 'containerImage': containerImage!,
        if (environmentId != null) 'environmentId': environmentId!,
        if (useSingleCorePerContainer != null)
          'useSingleCorePerContainer': useSingleCorePerContainer!,
      };
}

/// The version of the SDK used to run the job.
class SdkVersion {
  /// The support status for this SDK version.
  /// Possible string values are:
  /// - "UNKNOWN" : Cloud Dataflow is unaware of this version.
  /// - "SUPPORTED" : This is a known version of an SDK, and is supported.
  /// - "STALE" : A newer version of the SDK family exists, and an update is
  /// recommended.
  /// - "DEPRECATED" : This version of the SDK is deprecated and will eventually
  /// be unsupported.
  /// - "UNSUPPORTED" : Support for this SDK version has ended and it should no
  /// longer be used.
  core.String? sdkSupportStatus;

  /// The version of the SDK used to run the job.
  core.String? version;

  /// A readable string describing the version of the SDK.
  core.String? versionDisplayName;

  SdkVersion();

  SdkVersion.fromJson(core.Map _json) {
    if (_json.containsKey('sdkSupportStatus')) {
      sdkSupportStatus = _json['sdkSupportStatus'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
    if (_json.containsKey('versionDisplayName')) {
      versionDisplayName = _json['versionDisplayName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (sdkSupportStatus != null) 'sdkSupportStatus': sdkSupportStatus!,
        if (version != null) 'version': version!,
        if (versionDisplayName != null)
          'versionDisplayName': versionDisplayName!,
      };
}

/// Request to send encoded debug information.
class SendDebugCaptureRequest {
  /// The internal component id for which debug information is sent.
  core.String? componentId;

  /// The encoded debug information.
  core.String? data;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  core.String? location;

  /// The worker id, i.e., VM hostname.
  core.String? workerId;

  SendDebugCaptureRequest();

  SendDebugCaptureRequest.fromJson(core.Map _json) {
    if (_json.containsKey('componentId')) {
      componentId = _json['componentId'] as core.String;
    }
    if (_json.containsKey('data')) {
      data = _json['data'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('workerId')) {
      workerId = _json['workerId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (componentId != null) 'componentId': componentId!,
        if (data != null) 'data': data!,
        if (location != null) 'location': location!,
        if (workerId != null) 'workerId': workerId!,
      };
}

/// Response to a send capture request.
///
/// nothing
class SendDebugCaptureResponse {
  SendDebugCaptureResponse();

  SendDebugCaptureResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// A request for sending worker messages to the service.
class SendWorkerMessagesRequest {
  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job.
  core.String? location;

  /// The WorkerMessages to send.
  core.List<WorkerMessage>? workerMessages;

  SendWorkerMessagesRequest();

  SendWorkerMessagesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('workerMessages')) {
      workerMessages = (_json['workerMessages'] as core.List)
          .map<WorkerMessage>((value) => WorkerMessage.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (workerMessages != null)
          'workerMessages':
              workerMessages!.map((value) => value.toJson()).toList(),
      };
}

/// The response to the worker messages.
class SendWorkerMessagesResponse {
  /// The servers response to the worker messages.
  core.List<WorkerMessageResponse>? workerMessageResponses;

  SendWorkerMessagesResponse();

  SendWorkerMessagesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('workerMessageResponses')) {
      workerMessageResponses = (_json['workerMessageResponses'] as core.List)
          .map<WorkerMessageResponse>((value) => WorkerMessageResponse.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (workerMessageResponses != null)
          'workerMessageResponses':
              workerMessageResponses!.map((value) => value.toJson()).toList(),
      };
}

/// Describes a particular function to invoke.
class SeqMapTask {
  /// Information about each of the inputs.
  core.List<SideInputInfo>? inputs;

  /// The user-provided name of the SeqDo operation.
  core.String? name;

  /// Information about each of the outputs.
  core.List<SeqMapTaskOutputInfo>? outputInfos;

  /// System-defined name of the stage containing the SeqDo operation.
  ///
  /// Unique across the workflow.
  core.String? stageName;

  /// System-defined name of the SeqDo operation.
  ///
  /// Unique across the workflow.
  core.String? systemName;

  /// The user function to invoke.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? userFn;

  SeqMapTask();

  SeqMapTask.fromJson(core.Map _json) {
    if (_json.containsKey('inputs')) {
      inputs = (_json['inputs'] as core.List)
          .map<SideInputInfo>((value) => SideInputInfo.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('outputInfos')) {
      outputInfos = (_json['outputInfos'] as core.List)
          .map<SeqMapTaskOutputInfo>((value) => SeqMapTaskOutputInfo.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('stageName')) {
      stageName = _json['stageName'] as core.String;
    }
    if (_json.containsKey('systemName')) {
      systemName = _json['systemName'] as core.String;
    }
    if (_json.containsKey('userFn')) {
      userFn = (_json['userFn'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputs != null)
          'inputs': inputs!.map((value) => value.toJson()).toList(),
        if (name != null) 'name': name!,
        if (outputInfos != null)
          'outputInfos': outputInfos!.map((value) => value.toJson()).toList(),
        if (stageName != null) 'stageName': stageName!,
        if (systemName != null) 'systemName': systemName!,
        if (userFn != null) 'userFn': userFn!,
      };
}

/// Information about an output of a SeqMapTask.
class SeqMapTaskOutputInfo {
  /// The sink to write the output value to.
  Sink? sink;

  /// The id of the TupleTag the user code will tag the output value by.
  core.String? tag;

  SeqMapTaskOutputInfo();

  SeqMapTaskOutputInfo.fromJson(core.Map _json) {
    if (_json.containsKey('sink')) {
      sink =
          Sink.fromJson(_json['sink'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('tag')) {
      tag = _json['tag'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (sink != null) 'sink': sink!.toJson(),
        if (tag != null) 'tag': tag!,
      };
}

/// A task which consists of a shell command for the worker to execute.
class ShellTask {
  /// The shell command to run.
  core.String? command;

  /// Exit code for the task.
  core.int? exitCode;

  ShellTask();

  ShellTask.fromJson(core.Map _json) {
    if (_json.containsKey('command')) {
      command = _json['command'] as core.String;
    }
    if (_json.containsKey('exitCode')) {
      exitCode = _json['exitCode'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (command != null) 'command': command!,
        if (exitCode != null) 'exitCode': exitCode!,
      };
}

/// Information about a side input of a DoFn or an input of a SeqDoFn.
class SideInputInfo {
  /// How to interpret the source element(s) as a side input value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? kind;

  /// The source(s) to read element(s) from to get the value of this side input.
  ///
  /// If more than one source, then the elements are taken from the sources, in
  /// the specified order if order matters. At least one source is required.
  core.List<Source>? sources;

  /// The id of the tag the user code will access this side input by; this
  /// should correspond to the tag of some MultiOutputInfo.
  core.String? tag;

  SideInputInfo();

  SideInputInfo.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = (_json['kind'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('sources')) {
      sources = (_json['sources'] as core.List)
          .map<Source>((value) =>
              Source.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('tag')) {
      tag = _json['tag'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (sources != null)
          'sources': sources!.map((value) => value.toJson()).toList(),
        if (tag != null) 'tag': tag!,
      };
}

/// A sink that records can be encoded and written to.
class Sink {
  /// The codec to use to encode data written to the sink.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? codec;

  /// The sink to write to, plus its parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? spec;

  Sink();

  Sink.fromJson(core.Map _json) {
    if (_json.containsKey('codec')) {
      codec = (_json['codec'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('spec')) {
      spec = (_json['spec'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (codec != null) 'codec': codec!,
        if (spec != null) 'spec': spec!,
      };
}

/// Represents a snapshot of a job.
class Snapshot {
  /// The time this snapshot was created.
  core.String? creationTime;

  /// User specified description of the snapshot.
  ///
  /// Maybe empty.
  core.String? description;

  /// The disk byte size of the snapshot.
  ///
  /// Only available for snapshots in READY state.
  core.String? diskSizeBytes;

  /// The unique ID of this snapshot.
  core.String? id;

  /// The project this snapshot belongs to.
  core.String? projectId;

  /// PubSub snapshot metadata.
  core.List<PubsubSnapshotMetadata>? pubsubMetadata;

  /// Cloud region where this snapshot lives in, e.g., "us-central1".
  core.String? region;

  /// The job this snapshot was created from.
  core.String? sourceJobId;

  /// State of the snapshot.
  /// Possible string values are:
  /// - "UNKNOWN_SNAPSHOT_STATE" : Unknown state.
  /// - "PENDING" : Snapshot intent to create has been persisted, snapshotting
  /// of state has not yet started.
  /// - "RUNNING" : Snapshotting is being performed.
  /// - "READY" : Snapshot has been created and is ready to be used.
  /// - "FAILED" : Snapshot failed to be created.
  /// - "DELETED" : Snapshot has been deleted.
  core.String? state;

  /// The time after which this snapshot will be automatically deleted.
  core.String? ttl;

  Snapshot();

  Snapshot.fromJson(core.Map _json) {
    if (_json.containsKey('creationTime')) {
      creationTime = _json['creationTime'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('diskSizeBytes')) {
      diskSizeBytes = _json['diskSizeBytes'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
    if (_json.containsKey('pubsubMetadata')) {
      pubsubMetadata = (_json['pubsubMetadata'] as core.List)
          .map<PubsubSnapshotMetadata>((value) =>
              PubsubSnapshotMetadata.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('region')) {
      region = _json['region'] as core.String;
    }
    if (_json.containsKey('sourceJobId')) {
      sourceJobId = _json['sourceJobId'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('ttl')) {
      ttl = _json['ttl'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creationTime': creationTime!,
        if (description != null) 'description': description!,
        if (diskSizeBytes != null) 'diskSizeBytes': diskSizeBytes!,
        if (id != null) 'id': id!,
        if (projectId != null) 'projectId': projectId!,
        if (pubsubMetadata != null)
          'pubsubMetadata':
              pubsubMetadata!.map((value) => value.toJson()).toList(),
        if (region != null) 'region': region!,
        if (sourceJobId != null) 'sourceJobId': sourceJobId!,
        if (state != null) 'state': state!,
        if (ttl != null) 'ttl': ttl!,
      };
}

/// Request to create a snapshot of a job.
class SnapshotJobRequest {
  /// User specified description of the snapshot.
  ///
  /// Maybe empty.
  core.String? description;

  /// The location that contains this job.
  core.String? location;

  /// If true, perform snapshots for sources which support this.
  core.bool? snapshotSources;

  /// TTL for the snapshot.
  core.String? ttl;

  SnapshotJobRequest();

  SnapshotJobRequest.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('snapshotSources')) {
      snapshotSources = _json['snapshotSources'] as core.bool;
    }
    if (_json.containsKey('ttl')) {
      ttl = _json['ttl'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (location != null) 'location': location!,
        if (snapshotSources != null) 'snapshotSources': snapshotSources!,
        if (ttl != null) 'ttl': ttl!,
      };
}

/// A source that records can be read and decoded from.
class Source {
  /// While splitting, sources may specify the produced bundles as differences
  /// against another source, in order to save backend-side memory and allow
  /// bigger jobs.
  ///
  /// For details, see SourceSplitRequest. To support this use case, the full
  /// set of parameters of the source is logically obtained by taking the latest
  /// explicitly specified value of each parameter in the order: base_specs
  /// (later items win), spec (overrides anything in base_specs).
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? baseSpecs;

  /// The codec to use to decode data read from the source.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? codec;

  /// Setting this value to true hints to the framework that the source doesn't
  /// need splitting, and using SourceSplitRequest on it would yield
  /// SOURCE_SPLIT_OUTCOME_USE_CURRENT.
  ///
  /// E.g. a file splitter may set this to true when splitting a single file
  /// into a set of byte ranges of appropriate size, and set this to false when
  /// splitting a filepattern into individual files. However, for efficiency, a
  /// file splitter may decide to produce file subranges directly from the
  /// filepattern to avoid a splitting round-trip. See SourceSplitRequest for an
  /// overview of the splitting process. This field is meaningful only in the
  /// Source objects populated by the user (e.g. when filling in a
  /// DerivedSource). Source objects supplied by the framework to the user don't
  /// have this field populated.
  core.bool? doesNotNeedSplitting;

  /// Optionally, metadata for this source can be supplied right away, avoiding
  /// a SourceGetMetadataOperation roundtrip (see SourceOperationRequest).
  ///
  /// This field is meaningful only in the Source objects populated by the user
  /// (e.g. when filling in a DerivedSource). Source objects supplied by the
  /// framework to the user don't have this field populated.
  SourceMetadata? metadata;

  /// The source to read from, plus its parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? spec;

  Source();

  Source.fromJson(core.Map _json) {
    if (_json.containsKey('baseSpecs')) {
      baseSpecs = (_json['baseSpecs'] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map<core.String, core.dynamic>).map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('codec')) {
      codec = (_json['codec'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('doesNotNeedSplitting')) {
      doesNotNeedSplitting = _json['doesNotNeedSplitting'] as core.bool;
    }
    if (_json.containsKey('metadata')) {
      metadata = SourceMetadata.fromJson(
          _json['metadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('spec')) {
      spec = (_json['spec'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseSpecs != null) 'baseSpecs': baseSpecs!,
        if (codec != null) 'codec': codec!,
        if (doesNotNeedSplitting != null)
          'doesNotNeedSplitting': doesNotNeedSplitting!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (spec != null) 'spec': spec!,
      };
}

/// DEPRECATED in favor of DynamicSourceSplit.
class SourceFork {
  /// DEPRECATED
  SourceSplitShard? primary;

  /// DEPRECATED
  DerivedSource? primarySource;

  /// DEPRECATED
  SourceSplitShard? residual;

  /// DEPRECATED
  DerivedSource? residualSource;

  SourceFork();

  SourceFork.fromJson(core.Map _json) {
    if (_json.containsKey('primary')) {
      primary = SourceSplitShard.fromJson(
          _json['primary'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('primarySource')) {
      primarySource = DerivedSource.fromJson(
          _json['primarySource'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('residual')) {
      residual = SourceSplitShard.fromJson(
          _json['residual'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('residualSource')) {
      residualSource = DerivedSource.fromJson(
          _json['residualSource'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (primary != null) 'primary': primary!.toJson(),
        if (primarySource != null) 'primarySource': primarySource!.toJson(),
        if (residual != null) 'residual': residual!.toJson(),
        if (residualSource != null) 'residualSource': residualSource!.toJson(),
      };
}

/// A request to compute the SourceMetadata of a Source.
class SourceGetMetadataRequest {
  /// Specification of the source whose metadata should be computed.
  Source? source;

  SourceGetMetadataRequest();

  SourceGetMetadataRequest.fromJson(core.Map _json) {
    if (_json.containsKey('source')) {
      source = Source.fromJson(
          _json['source'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (source != null) 'source': source!.toJson(),
      };
}

/// The result of a SourceGetMetadataOperation.
class SourceGetMetadataResponse {
  /// The computed metadata.
  SourceMetadata? metadata;

  SourceGetMetadataResponse();

  SourceGetMetadataResponse.fromJson(core.Map _json) {
    if (_json.containsKey('metadata')) {
      metadata = SourceMetadata.fromJson(
          _json['metadata'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!.toJson(),
      };
}

/// Metadata about a Source useful for automatically optimizing and tuning the
/// pipeline, etc.
class SourceMetadata {
  /// An estimate of the total size (in bytes) of the data that would be read
  /// from this source.
  ///
  /// This estimate is in terms of external storage size, before any
  /// decompression or other processing done by the reader.
  core.String? estimatedSizeBytes;

  /// Specifies that the size of this source is known to be infinite (this is a
  /// streaming source).
  core.bool? infinite;

  /// Whether this source is known to produce key/value pairs with the (encoded)
  /// keys in lexicographically sorted order.
  core.bool? producesSortedKeys;

  SourceMetadata();

  SourceMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('estimatedSizeBytes')) {
      estimatedSizeBytes = _json['estimatedSizeBytes'] as core.String;
    }
    if (_json.containsKey('infinite')) {
      infinite = _json['infinite'] as core.bool;
    }
    if (_json.containsKey('producesSortedKeys')) {
      producesSortedKeys = _json['producesSortedKeys'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (estimatedSizeBytes != null)
          'estimatedSizeBytes': estimatedSizeBytes!,
        if (infinite != null) 'infinite': infinite!,
        if (producesSortedKeys != null)
          'producesSortedKeys': producesSortedKeys!,
      };
}

/// A work item that represents the different operations that can be performed
/// on a user-defined Source specification.
class SourceOperationRequest {
  /// Information about a request to get metadata about a source.
  SourceGetMetadataRequest? getMetadata;

  /// User-provided name of the Read instruction for this source.
  core.String? name;

  /// System-defined name for the Read instruction for this source in the
  /// original workflow graph.
  core.String? originalName;

  /// Information about a request to split a source.
  SourceSplitRequest? split;

  /// System-defined name of the stage containing the source operation.
  ///
  /// Unique across the workflow.
  core.String? stageName;

  /// System-defined name of the Read instruction for this source.
  ///
  /// Unique across the workflow.
  core.String? systemName;

  SourceOperationRequest();

  SourceOperationRequest.fromJson(core.Map _json) {
    if (_json.containsKey('getMetadata')) {
      getMetadata = SourceGetMetadataRequest.fromJson(
          _json['getMetadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('originalName')) {
      originalName = _json['originalName'] as core.String;
    }
    if (_json.containsKey('split')) {
      split = SourceSplitRequest.fromJson(
          _json['split'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('stageName')) {
      stageName = _json['stageName'] as core.String;
    }
    if (_json.containsKey('systemName')) {
      systemName = _json['systemName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (getMetadata != null) 'getMetadata': getMetadata!.toJson(),
        if (name != null) 'name': name!,
        if (originalName != null) 'originalName': originalName!,
        if (split != null) 'split': split!.toJson(),
        if (stageName != null) 'stageName': stageName!,
        if (systemName != null) 'systemName': systemName!,
      };
}

/// The result of a SourceOperationRequest, specified in
/// ReportWorkItemStatusRequest.source_operation when the work item is
/// completed.
class SourceOperationResponse {
  /// A response to a request to get metadata about a source.
  SourceGetMetadataResponse? getMetadata;

  /// A response to a request to split a source.
  SourceSplitResponse? split;

  SourceOperationResponse();

  SourceOperationResponse.fromJson(core.Map _json) {
    if (_json.containsKey('getMetadata')) {
      getMetadata = SourceGetMetadataResponse.fromJson(
          _json['getMetadata'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('split')) {
      split = SourceSplitResponse.fromJson(
          _json['split'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (getMetadata != null) 'getMetadata': getMetadata!.toJson(),
        if (split != null) 'split': split!.toJson(),
      };
}

/// Hints for splitting a Source into bundles (parts for parallel processing)
/// using SourceSplitRequest.
class SourceSplitOptions {
  /// The source should be split into a set of bundles where the estimated size
  /// of each is approximately this many bytes.
  core.String? desiredBundleSizeBytes;

  /// DEPRECATED in favor of desired_bundle_size_bytes.
  core.String? desiredShardSizeBytes;

  SourceSplitOptions();

  SourceSplitOptions.fromJson(core.Map _json) {
    if (_json.containsKey('desiredBundleSizeBytes')) {
      desiredBundleSizeBytes = _json['desiredBundleSizeBytes'] as core.String;
    }
    if (_json.containsKey('desiredShardSizeBytes')) {
      desiredShardSizeBytes = _json['desiredShardSizeBytes'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (desiredBundleSizeBytes != null)
          'desiredBundleSizeBytes': desiredBundleSizeBytes!,
        if (desiredShardSizeBytes != null)
          'desiredShardSizeBytes': desiredShardSizeBytes!,
      };
}

/// Represents the operation to split a high-level Source specification into
/// bundles (parts for parallel processing).
///
/// At a high level, splitting of a source into bundles happens as follows:
/// SourceSplitRequest is applied to the source. If it returns
/// SOURCE_SPLIT_OUTCOME_USE_CURRENT, no further splitting happens and the
/// source is used "as is". Otherwise, splitting is applied recursively to each
/// produced DerivedSource. As an optimization, for any Source, if its
/// does_not_need_splitting is true, the framework assumes that splitting this
/// source would return SOURCE_SPLIT_OUTCOME_USE_CURRENT, and doesn't initiate a
/// SourceSplitRequest. This applies both to the initial source being split and
/// to bundles produced from it.
class SourceSplitRequest {
  /// Hints for tuning the splitting process.
  SourceSplitOptions? options;

  /// Specification of the source to be split.
  Source? source;

  SourceSplitRequest();

  SourceSplitRequest.fromJson(core.Map _json) {
    if (_json.containsKey('options')) {
      options = SourceSplitOptions.fromJson(
          _json['options'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('source')) {
      source = Source.fromJson(
          _json['source'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!.toJson(),
        if (source != null) 'source': source!.toJson(),
      };
}

/// The response to a SourceSplitRequest.
class SourceSplitResponse {
  /// If outcome is SPLITTING_HAPPENED, then this is a list of bundles into
  /// which the source was split.
  ///
  /// Otherwise this field is ignored. This list can be empty, which means the
  /// source represents an empty input.
  core.List<DerivedSource>? bundles;

  /// Indicates whether splitting happened and produced a list of bundles.
  ///
  /// If this is USE_CURRENT_SOURCE_AS_IS, the current source should be
  /// processed "as is" without splitting. "bundles" is ignored in this case. If
  /// this is SPLITTING_HAPPENED, then "bundles" contains a list of bundles into
  /// which the source was split.
  /// Possible string values are:
  /// - "SOURCE_SPLIT_OUTCOME_UNKNOWN" : The source split outcome is unknown, or
  /// unspecified.
  /// - "SOURCE_SPLIT_OUTCOME_USE_CURRENT" : The current source should be
  /// processed "as is" without splitting.
  /// - "SOURCE_SPLIT_OUTCOME_SPLITTING_HAPPENED" : Splitting produced a list of
  /// bundles.
  core.String? outcome;

  /// DEPRECATED in favor of bundles.
  core.List<SourceSplitShard>? shards;

  SourceSplitResponse();

  SourceSplitResponse.fromJson(core.Map _json) {
    if (_json.containsKey('bundles')) {
      bundles = (_json['bundles'] as core.List)
          .map<DerivedSource>((value) => DerivedSource.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('outcome')) {
      outcome = _json['outcome'] as core.String;
    }
    if (_json.containsKey('shards')) {
      shards = (_json['shards'] as core.List)
          .map<SourceSplitShard>((value) => SourceSplitShard.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundles != null)
          'bundles': bundles!.map((value) => value.toJson()).toList(),
        if (outcome != null) 'outcome': outcome!,
        if (shards != null)
          'shards': shards!.map((value) => value.toJson()).toList(),
      };
}

/// DEPRECATED in favor of DerivedSource.
class SourceSplitShard {
  /// DEPRECATED
  /// Possible string values are:
  /// - "SOURCE_DERIVATION_MODE_UNKNOWN" : The source derivation is unknown, or
  /// unspecified.
  /// - "SOURCE_DERIVATION_MODE_INDEPENDENT" : Produce a completely independent
  /// Source with no base.
  /// - "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT" : Produce a Source based on
  /// the Source being split.
  /// - "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT" : Produce a Source based on
  /// the base of the Source being split.
  core.String? derivationMode;

  /// DEPRECATED
  Source? source;

  SourceSplitShard();

  SourceSplitShard.fromJson(core.Map _json) {
    if (_json.containsKey('derivationMode')) {
      derivationMode = _json['derivationMode'] as core.String;
    }
    if (_json.containsKey('source')) {
      source = Source.fromJson(
          _json['source'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (derivationMode != null) 'derivationMode': derivationMode!,
        if (source != null) 'source': source!.toJson(),
      };
}

/// Metadata for a Spanner connector used by the job.
class SpannerIODetails {
  /// DatabaseId accessed in the connection.
  core.String? databaseId;

  /// InstanceId accessed in the connection.
  core.String? instanceId;

  /// ProjectId accessed in the connection.
  core.String? projectId;

  SpannerIODetails();

  SpannerIODetails.fromJson(core.Map _json) {
    if (_json.containsKey('databaseId')) {
      databaseId = _json['databaseId'] as core.String;
    }
    if (_json.containsKey('instanceId')) {
      instanceId = _json['instanceId'] as core.String;
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseId != null) 'databaseId': databaseId!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// A representation of an int64, n, that is immune to precision loss when
/// encoded in JSON.
class SplitInt64 {
  /// The high order bits, including the sign: n >> 32.
  core.int? highBits;

  /// The low order bits: n & 0xffffffff.
  core.int? lowBits;

  SplitInt64();

  SplitInt64.fromJson(core.Map _json) {
    if (_json.containsKey('highBits')) {
      highBits = _json['highBits'] as core.int;
    }
    if (_json.containsKey('lowBits')) {
      lowBits = _json['lowBits'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (highBits != null) 'highBits': highBits!,
        if (lowBits != null) 'lowBits': lowBits!,
      };
}

/// Information about the workers and work items within a stage.
class StageExecutionDetails {
  /// If present, this response does not contain all requested tasks.
  ///
  /// To obtain the next page of results, repeat the request with page_token set
  /// to this value.
  core.String? nextPageToken;

  /// Workers that have done work on the stage.
  core.List<WorkerDetails>? workers;

  StageExecutionDetails();

  StageExecutionDetails.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('workers')) {
      workers = (_json['workers'] as core.List)
          .map<WorkerDetails>((value) => WorkerDetails.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (workers != null)
          'workers': workers!.map((value) => value.toJson()).toList(),
      };
}

/// Description of an input or output of an execution stage.
class StageSource {
  /// Dataflow service generated name for this source.
  core.String? name;

  /// User name for the original user transform or collection with which this
  /// source is most closely associated.
  core.String? originalTransformOrCollection;

  /// Size of the source, if measurable.
  core.String? sizeBytes;

  /// Human-readable name for this source; may be user or system generated.
  core.String? userName;

  StageSource();

  StageSource.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('originalTransformOrCollection')) {
      originalTransformOrCollection =
          _json['originalTransformOrCollection'] as core.String;
    }
    if (_json.containsKey('sizeBytes')) {
      sizeBytes = _json['sizeBytes'] as core.String;
    }
    if (_json.containsKey('userName')) {
      userName = _json['userName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (originalTransformOrCollection != null)
          'originalTransformOrCollection': originalTransformOrCollection!,
        if (sizeBytes != null) 'sizeBytes': sizeBytes!,
        if (userName != null) 'userName': userName!,
      };
}

/// Information about a particular execution stage of a job.
class StageSummary {
  /// End time of this stage.
  ///
  /// If the work item is completed, this is the actual end time of the stage.
  /// Otherwise, it is the predicted end time.
  core.String? endTime;

  /// Metrics for this stage.
  core.List<MetricUpdate>? metrics;

  /// Progress for this stage.
  ///
  /// Only applicable to Batch jobs.
  ProgressTimeseries? progress;

  /// ID of this stage
  core.String? stageId;

  /// Start time of this stage.
  core.String? startTime;

  /// State of this stage.
  /// Possible string values are:
  /// - "EXECUTION_STATE_UNKNOWN" : The component state is unknown or
  /// unspecified.
  /// - "EXECUTION_STATE_NOT_STARTED" : The component is not yet running.
  /// - "EXECUTION_STATE_RUNNING" : The component is currently running.
  /// - "EXECUTION_STATE_SUCCEEDED" : The component succeeded.
  /// - "EXECUTION_STATE_FAILED" : The component failed.
  /// - "EXECUTION_STATE_CANCELLED" : Execution of the component was cancelled.
  core.String? state;

  StageSummary();

  StageSummary.fromJson(core.Map _json) {
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<MetricUpdate>((value) => MetricUpdate.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('progress')) {
      progress = ProgressTimeseries.fromJson(
          _json['progress'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('stageId')) {
      stageId = _json['stageId'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (metrics != null)
          'metrics': metrics!.map((value) => value.toJson()).toList(),
        if (progress != null) 'progress': progress!.toJson(),
        if (stageId != null) 'stageId': stageId!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
      };
}

/// State family configuration.
class StateFamilyConfig {
  /// If true, this family corresponds to a read operation.
  core.bool? isRead;

  /// The state family value.
  core.String? stateFamily;

  StateFamilyConfig();

  StateFamilyConfig.fromJson(core.Map _json) {
    if (_json.containsKey('isRead')) {
      isRead = _json['isRead'] as core.bool;
    }
    if (_json.containsKey('stateFamily')) {
      stateFamily = _json['stateFamily'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (isRead != null) 'isRead': isRead!,
        if (stateFamily != null) 'stateFamily': stateFamily!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map<core.String, core.dynamic>).map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// Defines a particular step within a Cloud Dataflow job.
///
/// A job consists of multiple steps, each of which performs some specific
/// operation as part of the overall job. Data is typically passed from one step
/// to another as part of the job. Here's an example of a sequence of steps
/// which together implement a Map-Reduce job: * Read a collection of data from
/// some source, parsing the collection's elements. * Validate the elements. *
/// Apply a user-defined function to map each element to some value and extract
/// an element-specific key value. * Group elements with the same key into a
/// single element with that key, transforming a multiply-keyed collection into
/// a uniquely-keyed collection. * Write the elements out to some data sink.
/// Note that the Cloud Dataflow service may be used to run many different types
/// of jobs, not just Map-Reduce.
class Step {
  /// The kind of step in the Cloud Dataflow job.
  core.String? kind;

  /// The name that identifies the step.
  ///
  /// This must be unique for each step with respect to all other steps in the
  /// Cloud Dataflow job.
  core.String? name;

  /// Named properties associated with the step.
  ///
  /// Each kind of predefined step has its own required set of properties. Must
  /// be provided on Create. Only retrieved with JOB_VIEW_ALL.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? properties;

  Step();

  Step.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('properties')) {
      properties =
          (_json['properties'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (properties != null) 'properties': properties!,
      };
}

/// Describes a stream of data, either as input to be processed or as output of
/// a streaming Dataflow job.
class StreamLocation {
  /// The stream is a custom source.
  CustomSourceLocation? customSourceLocation;

  /// The stream is a pubsub stream.
  PubsubLocation? pubsubLocation;

  /// The stream is a streaming side input.
  StreamingSideInputLocation? sideInputLocation;

  /// The stream is part of another computation within the current streaming
  /// Dataflow job.
  StreamingStageLocation? streamingStageLocation;

  StreamLocation();

  StreamLocation.fromJson(core.Map _json) {
    if (_json.containsKey('customSourceLocation')) {
      customSourceLocation = CustomSourceLocation.fromJson(
          _json['customSourceLocation'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pubsubLocation')) {
      pubsubLocation = PubsubLocation.fromJson(
          _json['pubsubLocation'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sideInputLocation')) {
      sideInputLocation = StreamingSideInputLocation.fromJson(
          _json['sideInputLocation'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('streamingStageLocation')) {
      streamingStageLocation = StreamingStageLocation.fromJson(
          _json['streamingStageLocation']
              as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (customSourceLocation != null)
          'customSourceLocation': customSourceLocation!.toJson(),
        if (pubsubLocation != null) 'pubsubLocation': pubsubLocation!.toJson(),
        if (sideInputLocation != null)
          'sideInputLocation': sideInputLocation!.toJson(),
        if (streamingStageLocation != null)
          'streamingStageLocation': streamingStageLocation!.toJson(),
      };
}

/// Streaming appliance snapshot configuration.
class StreamingApplianceSnapshotConfig {
  /// Indicates which endpoint is used to import appliance state.
  core.String? importStateEndpoint;

  /// If set, indicates the snapshot id for the snapshot being performed.
  core.String? snapshotId;

  StreamingApplianceSnapshotConfig();

  StreamingApplianceSnapshotConfig.fromJson(core.Map _json) {
    if (_json.containsKey('importStateEndpoint')) {
      importStateEndpoint = _json['importStateEndpoint'] as core.String;
    }
    if (_json.containsKey('snapshotId')) {
      snapshotId = _json['snapshotId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (importStateEndpoint != null)
          'importStateEndpoint': importStateEndpoint!,
        if (snapshotId != null) 'snapshotId': snapshotId!,
      };
}

/// Configuration information for a single streaming computation.
class StreamingComputationConfig {
  /// Unique identifier for this computation.
  core.String? computationId;

  /// Instructions that comprise the computation.
  core.List<ParallelInstruction>? instructions;

  /// Stage name of this computation.
  core.String? stageName;

  /// System defined name for this computation.
  core.String? systemName;

  /// Map from user name of stateful transforms in this stage to their state
  /// family.
  core.Map<core.String, core.String>? transformUserNameToStateFamily;

  StreamingComputationConfig();

  StreamingComputationConfig.fromJson(core.Map _json) {
    if (_json.containsKey('computationId')) {
      computationId = _json['computationId'] as core.String;
    }
    if (_json.containsKey('instructions')) {
      instructions = (_json['instructions'] as core.List)
          .map<ParallelInstruction>((value) => ParallelInstruction.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('stageName')) {
      stageName = _json['stageName'] as core.String;
    }
    if (_json.containsKey('systemName')) {
      systemName = _json['systemName'] as core.String;
    }
    if (_json.containsKey('transformUserNameToStateFamily')) {
      transformUserNameToStateFamily = (_json['transformUserNameToStateFamily']
              as core.Map<core.String, core.dynamic>)
          .map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (computationId != null) 'computationId': computationId!,
        if (instructions != null)
          'instructions': instructions!.map((value) => value.toJson()).toList(),
        if (stageName != null) 'stageName': stageName!,
        if (systemName != null) 'systemName': systemName!,
        if (transformUserNameToStateFamily != null)
          'transformUserNameToStateFamily': transformUserNameToStateFamily!,
      };
}

/// Describes full or partial data disk assignment information of the
/// computation ranges.
class StreamingComputationRanges {
  /// The ID of the computation.
  core.String? computationId;

  /// Data disk assignments for ranges from this computation.
  core.List<KeyRangeDataDiskAssignment>? rangeAssignments;

  StreamingComputationRanges();

  StreamingComputationRanges.fromJson(core.Map _json) {
    if (_json.containsKey('computationId')) {
      computationId = _json['computationId'] as core.String;
    }
    if (_json.containsKey('rangeAssignments')) {
      rangeAssignments = (_json['rangeAssignments'] as core.List)
          .map<KeyRangeDataDiskAssignment>((value) =>
              KeyRangeDataDiskAssignment.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (computationId != null) 'computationId': computationId!,
        if (rangeAssignments != null)
          'rangeAssignments':
              rangeAssignments!.map((value) => value.toJson()).toList(),
      };
}

/// A task which describes what action should be performed for the specified
/// streaming computation ranges.
class StreamingComputationTask {
  /// Contains ranges of a streaming computation this task should apply to.
  core.List<StreamingComputationRanges>? computationRanges;

  /// Describes the set of data disks this task should apply to.
  core.List<MountedDataDisk>? dataDisks;

  /// A type of streaming computation task.
  /// Possible string values are:
  /// - "STREAMING_COMPUTATION_TASK_UNKNOWN" : The streaming computation task is
  /// unknown, or unspecified.
  /// - "STREAMING_COMPUTATION_TASK_STOP" : Stop processing specified streaming
  /// computation range(s).
  /// - "STREAMING_COMPUTATION_TASK_START" : Start processing specified
  /// streaming computation range(s).
  core.String? taskType;

  StreamingComputationTask();

  StreamingComputationTask.fromJson(core.Map _json) {
    if (_json.containsKey('computationRanges')) {
      computationRanges = (_json['computationRanges'] as core.List)
          .map<StreamingComputationRanges>((value) =>
              StreamingComputationRanges.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('dataDisks')) {
      dataDisks = (_json['dataDisks'] as core.List)
          .map<MountedDataDisk>((value) => MountedDataDisk.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('taskType')) {
      taskType = _json['taskType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (computationRanges != null)
          'computationRanges':
              computationRanges!.map((value) => value.toJson()).toList(),
        if (dataDisks != null)
          'dataDisks': dataDisks!.map((value) => value.toJson()).toList(),
        if (taskType != null) 'taskType': taskType!,
      };
}

/// A task that carries configuration information for streaming computations.
class StreamingConfigTask {
  /// Chunk size for commit streams from the harness to windmill.
  core.String? commitStreamChunkSizeBytes;

  /// Chunk size for get data streams from the harness to windmill.
  core.String? getDataStreamChunkSizeBytes;

  /// Maximum size for work item commit supported windmill storage layer.
  core.String? maxWorkItemCommitBytes;

  /// Set of computation configuration information.
  core.List<StreamingComputationConfig>? streamingComputationConfigs;

  /// Map from user step names to state families.
  core.Map<core.String, core.String>? userStepToStateFamilyNameMap;

  /// If present, the worker must use this endpoint to communicate with Windmill
  /// Service dispatchers, otherwise the worker must continue to use whatever
  /// endpoint it had been using.
  core.String? windmillServiceEndpoint;

  /// If present, the worker must use this port to communicate with Windmill
  /// Service dispatchers.
  ///
  /// Only applicable when windmill_service_endpoint is specified.
  core.String? windmillServicePort;

  StreamingConfigTask();

  StreamingConfigTask.fromJson(core.Map _json) {
    if (_json.containsKey('commitStreamChunkSizeBytes')) {
      commitStreamChunkSizeBytes =
          _json['commitStreamChunkSizeBytes'] as core.String;
    }
    if (_json.containsKey('getDataStreamChunkSizeBytes')) {
      getDataStreamChunkSizeBytes =
          _json['getDataStreamChunkSizeBytes'] as core.String;
    }
    if (_json.containsKey('maxWorkItemCommitBytes')) {
      maxWorkItemCommitBytes = _json['maxWorkItemCommitBytes'] as core.String;
    }
    if (_json.containsKey('streamingComputationConfigs')) {
      streamingComputationConfigs =
          (_json['streamingComputationConfigs'] as core.List)
              .map<StreamingComputationConfig>((value) =>
                  StreamingComputationConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList();
    }
    if (_json.containsKey('userStepToStateFamilyNameMap')) {
      userStepToStateFamilyNameMap = (_json['userStepToStateFamilyNameMap']
              as core.Map<core.String, core.dynamic>)
          .map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('windmillServiceEndpoint')) {
      windmillServiceEndpoint = _json['windmillServiceEndpoint'] as core.String;
    }
    if (_json.containsKey('windmillServicePort')) {
      windmillServicePort = _json['windmillServicePort'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitStreamChunkSizeBytes != null)
          'commitStreamChunkSizeBytes': commitStreamChunkSizeBytes!,
        if (getDataStreamChunkSizeBytes != null)
          'getDataStreamChunkSizeBytes': getDataStreamChunkSizeBytes!,
        if (maxWorkItemCommitBytes != null)
          'maxWorkItemCommitBytes': maxWorkItemCommitBytes!,
        if (streamingComputationConfigs != null)
          'streamingComputationConfigs': streamingComputationConfigs!
              .map((value) => value.toJson())
              .toList(),
        if (userStepToStateFamilyNameMap != null)
          'userStepToStateFamilyNameMap': userStepToStateFamilyNameMap!,
        if (windmillServiceEndpoint != null)
          'windmillServiceEndpoint': windmillServiceEndpoint!,
        if (windmillServicePort != null)
          'windmillServicePort': windmillServicePort!,
      };
}

/// A task which initializes part of a streaming Dataflow job.
class StreamingSetupTask {
  /// The user has requested drain.
  core.bool? drain;

  /// The TCP port on which the worker should listen for messages from other
  /// streaming computation workers.
  core.int? receiveWorkPort;

  /// Configures streaming appliance snapshot.
  StreamingApplianceSnapshotConfig? snapshotConfig;

  /// The global topology of the streaming Dataflow job.
  TopologyConfig? streamingComputationTopology;

  /// The TCP port used by the worker to communicate with the Dataflow worker
  /// harness.
  core.int? workerHarnessPort;

  StreamingSetupTask();

  StreamingSetupTask.fromJson(core.Map _json) {
    if (_json.containsKey('drain')) {
      drain = _json['drain'] as core.bool;
    }
    if (_json.containsKey('receiveWorkPort')) {
      receiveWorkPort = _json['receiveWorkPort'] as core.int;
    }
    if (_json.containsKey('snapshotConfig')) {
      snapshotConfig = StreamingApplianceSnapshotConfig.fromJson(
          _json['snapshotConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('streamingComputationTopology')) {
      streamingComputationTopology = TopologyConfig.fromJson(
          _json['streamingComputationTopology']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('workerHarnessPort')) {
      workerHarnessPort = _json['workerHarnessPort'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (drain != null) 'drain': drain!,
        if (receiveWorkPort != null) 'receiveWorkPort': receiveWorkPort!,
        if (snapshotConfig != null) 'snapshotConfig': snapshotConfig!.toJson(),
        if (streamingComputationTopology != null)
          'streamingComputationTopology':
              streamingComputationTopology!.toJson(),
        if (workerHarnessPort != null) 'workerHarnessPort': workerHarnessPort!,
      };
}

/// Identifies the location of a streaming side input.
class StreamingSideInputLocation {
  /// Identifies the state family where this side input is stored.
  core.String? stateFamily;

  /// Identifies the particular side input within the streaming Dataflow job.
  core.String? tag;

  StreamingSideInputLocation();

  StreamingSideInputLocation.fromJson(core.Map _json) {
    if (_json.containsKey('stateFamily')) {
      stateFamily = _json['stateFamily'] as core.String;
    }
    if (_json.containsKey('tag')) {
      tag = _json['tag'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (stateFamily != null) 'stateFamily': stateFamily!,
        if (tag != null) 'tag': tag!,
      };
}

/// Identifies the location of a streaming computation stage, for stage-to-stage
/// communication.
class StreamingStageLocation {
  /// Identifies the particular stream within the streaming Dataflow job.
  core.String? streamId;

  StreamingStageLocation();

  StreamingStageLocation.fromJson(core.Map _json) {
    if (_json.containsKey('streamId')) {
      streamId = _json['streamId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (streamId != null) 'streamId': streamId!,
      };
}

/// A metric value representing a list of strings.
class StringList {
  /// Elements of the list.
  core.List<core.String>? elements;

  StringList();

  StringList.fromJson(core.Map _json) {
    if (_json.containsKey('elements')) {
      elements = (_json['elements'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (elements != null) 'elements': elements!,
      };
}

/// A rich message format, including a human readable string, a key for
/// identifying the message, and structured data associated with the message for
/// programmatic consumption.
class StructuredMessage {
  /// Identifier for this message type.
  ///
  /// Used by external systems to internationalize or personalize message.
  core.String? messageKey;

  /// Human-readable version of message.
  core.String? messageText;

  /// The structured data associated with this message.
  core.List<Parameter>? parameters;

  StructuredMessage();

  StructuredMessage.fromJson(core.Map _json) {
    if (_json.containsKey('messageKey')) {
      messageKey = _json['messageKey'] as core.String;
    }
    if (_json.containsKey('messageText')) {
      messageText = _json['messageText'] as core.String;
    }
    if (_json.containsKey('parameters')) {
      parameters = (_json['parameters'] as core.List)
          .map<Parameter>((value) =>
              Parameter.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (messageKey != null) 'messageKey': messageKey!,
        if (messageText != null) 'messageText': messageText!,
        if (parameters != null)
          'parameters': parameters!.map((value) => value.toJson()).toList(),
      };
}

/// Taskrunner configuration settings.
class TaskRunnerSettings {
  /// Whether to also send taskrunner log info to stderr.
  core.bool? alsologtostderr;

  /// The location on the worker for task-specific subdirectories.
  core.String? baseTaskDir;

  /// The base URL for the taskrunner to use when accessing Google Cloud APIs.
  ///
  /// When workers access Google Cloud APIs, they logically do so via relative
  /// URLs. If this field is specified, it supplies the base URL to use for
  /// resolving these relative URLs. The normative algorithm used is defined by
  /// RFC 1808, "Relative Uniform Resource Locators". If not specified, the
  /// default value is "http://www.googleapis.com/"
  core.String? baseUrl;

  /// The file to store preprocessing commands in.
  core.String? commandlinesFileName;

  /// Whether to continue taskrunner if an exception is hit.
  core.bool? continueOnException;

  /// The API version of endpoint, e.g. "v1b3"
  core.String? dataflowApiVersion;

  /// The command to launch the worker harness.
  core.String? harnessCommand;

  /// The suggested backend language.
  core.String? languageHint;

  /// The directory on the VM to store logs.
  core.String? logDir;

  /// Whether to send taskrunner log info to Google Compute Engine VM serial
  /// console.
  core.bool? logToSerialconsole;

  /// Indicates where to put logs.
  ///
  /// If this is not specified, the logs will not be uploaded. The supported
  /// resource type is: Google Cloud Storage:
  /// storage.googleapis.com/{bucket}/{object}
  /// bucket.storage.googleapis.com/{object}
  core.String? logUploadLocation;

  /// The OAuth2 scopes to be requested by the taskrunner in order to access the
  /// Cloud Dataflow API.
  core.List<core.String>? oauthScopes;

  /// The settings to pass to the parallel worker harness.
  WorkerSettings? parallelWorkerSettings;

  /// The streaming worker main class name.
  core.String? streamingWorkerMainClass;

  /// The UNIX group ID on the worker VM to use for tasks launched by
  /// taskrunner; e.g. "wheel".
  core.String? taskGroup;

  /// The UNIX user ID on the worker VM to use for tasks launched by taskrunner;
  /// e.g. "root".
  core.String? taskUser;

  /// The prefix of the resources the taskrunner should use for temporary
  /// storage.
  ///
  /// The supported resource type is: Google Cloud Storage:
  /// storage.googleapis.com/{bucket}/{object}
  /// bucket.storage.googleapis.com/{object}
  core.String? tempStoragePrefix;

  /// The ID string of the VM.
  core.String? vmId;

  /// The file to store the workflow in.
  core.String? workflowFileName;

  TaskRunnerSettings();

  TaskRunnerSettings.fromJson(core.Map _json) {
    if (_json.containsKey('alsologtostderr')) {
      alsologtostderr = _json['alsologtostderr'] as core.bool;
    }
    if (_json.containsKey('baseTaskDir')) {
      baseTaskDir = _json['baseTaskDir'] as core.String;
    }
    if (_json.containsKey('baseUrl')) {
      baseUrl = _json['baseUrl'] as core.String;
    }
    if (_json.containsKey('commandlinesFileName')) {
      commandlinesFileName = _json['commandlinesFileName'] as core.String;
    }
    if (_json.containsKey('continueOnException')) {
      continueOnException = _json['continueOnException'] as core.bool;
    }
    if (_json.containsKey('dataflowApiVersion')) {
      dataflowApiVersion = _json['dataflowApiVersion'] as core.String;
    }
    if (_json.containsKey('harnessCommand')) {
      harnessCommand = _json['harnessCommand'] as core.String;
    }
    if (_json.containsKey('languageHint')) {
      languageHint = _json['languageHint'] as core.String;
    }
    if (_json.containsKey('logDir')) {
      logDir = _json['logDir'] as core.String;
    }
    if (_json.containsKey('logToSerialconsole')) {
      logToSerialconsole = _json['logToSerialconsole'] as core.bool;
    }
    if (_json.containsKey('logUploadLocation')) {
      logUploadLocation = _json['logUploadLocation'] as core.String;
    }
    if (_json.containsKey('oauthScopes')) {
      oauthScopes = (_json['oauthScopes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('parallelWorkerSettings')) {
      parallelWorkerSettings = WorkerSettings.fromJson(
          _json['parallelWorkerSettings']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('streamingWorkerMainClass')) {
      streamingWorkerMainClass =
          _json['streamingWorkerMainClass'] as core.String;
    }
    if (_json.containsKey('taskGroup')) {
      taskGroup = _json['taskGroup'] as core.String;
    }
    if (_json.containsKey('taskUser')) {
      taskUser = _json['taskUser'] as core.String;
    }
    if (_json.containsKey('tempStoragePrefix')) {
      tempStoragePrefix = _json['tempStoragePrefix'] as core.String;
    }
    if (_json.containsKey('vmId')) {
      vmId = _json['vmId'] as core.String;
    }
    if (_json.containsKey('workflowFileName')) {
      workflowFileName = _json['workflowFileName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (alsologtostderr != null) 'alsologtostderr': alsologtostderr!,
        if (baseTaskDir != null) 'baseTaskDir': baseTaskDir!,
        if (baseUrl != null) 'baseUrl': baseUrl!,
        if (commandlinesFileName != null)
          'commandlinesFileName': commandlinesFileName!,
        if (continueOnException != null)
          'continueOnException': continueOnException!,
        if (dataflowApiVersion != null)
          'dataflowApiVersion': dataflowApiVersion!,
        if (harnessCommand != null) 'harnessCommand': harnessCommand!,
        if (languageHint != null) 'languageHint': languageHint!,
        if (logDir != null) 'logDir': logDir!,
        if (logToSerialconsole != null)
          'logToSerialconsole': logToSerialconsole!,
        if (logUploadLocation != null) 'logUploadLocation': logUploadLocation!,
        if (oauthScopes != null) 'oauthScopes': oauthScopes!,
        if (parallelWorkerSettings != null)
          'parallelWorkerSettings': parallelWorkerSettings!.toJson(),
        if (streamingWorkerMainClass != null)
          'streamingWorkerMainClass': streamingWorkerMainClass!,
        if (taskGroup != null) 'taskGroup': taskGroup!,
        if (taskUser != null) 'taskUser': taskUser!,
        if (tempStoragePrefix != null) 'tempStoragePrefix': tempStoragePrefix!,
        if (vmId != null) 'vmId': vmId!,
        if (workflowFileName != null) 'workflowFileName': workflowFileName!,
      };
}

/// Metadata describing a template.
class TemplateMetadata {
  /// A description of the template.
  ///
  /// Optional.
  core.String? description;

  /// The name of the template.
  ///
  /// Required.
  core.String? name;

  /// The parameters for the template.
  core.List<ParameterMetadata>? parameters;

  TemplateMetadata();

  TemplateMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('parameters')) {
      parameters = (_json['parameters'] as core.List)
          .map<ParameterMetadata>((value) => ParameterMetadata.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (parameters != null)
          'parameters': parameters!.map((value) => value.toJson()).toList(),
      };
}

/// Global topology of the streaming Dataflow job, including all computations
/// and their sharded locations.
class TopologyConfig {
  /// The computations associated with a streaming Dataflow job.
  core.List<ComputationTopology>? computations;

  /// The disks assigned to a streaming Dataflow job.
  core.List<DataDiskAssignment>? dataDiskAssignments;

  /// The size (in bits) of keys that will be assigned to source messages.
  core.int? forwardingKeyBits;

  /// Version number for persistent state.
  core.int? persistentStateVersion;

  /// Maps user stage names to stable computation names.
  core.Map<core.String, core.String>? userStageToComputationNameMap;

  TopologyConfig();

  TopologyConfig.fromJson(core.Map _json) {
    if (_json.containsKey('computations')) {
      computations = (_json['computations'] as core.List)
          .map<ComputationTopology>((value) => ComputationTopology.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('dataDiskAssignments')) {
      dataDiskAssignments = (_json['dataDiskAssignments'] as core.List)
          .map<DataDiskAssignment>((value) => DataDiskAssignment.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('forwardingKeyBits')) {
      forwardingKeyBits = _json['forwardingKeyBits'] as core.int;
    }
    if (_json.containsKey('persistentStateVersion')) {
      persistentStateVersion = _json['persistentStateVersion'] as core.int;
    }
    if (_json.containsKey('userStageToComputationNameMap')) {
      userStageToComputationNameMap = (_json['userStageToComputationNameMap']
              as core.Map<core.String, core.dynamic>)
          .map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (computations != null)
          'computations': computations!.map((value) => value.toJson()).toList(),
        if (dataDiskAssignments != null)
          'dataDiskAssignments':
              dataDiskAssignments!.map((value) => value.toJson()).toList(),
        if (forwardingKeyBits != null) 'forwardingKeyBits': forwardingKeyBits!,
        if (persistentStateVersion != null)
          'persistentStateVersion': persistentStateVersion!,
        if (userStageToComputationNameMap != null)
          'userStageToComputationNameMap': userStageToComputationNameMap!,
      };
}

/// Description of the type, names/ids, and input/outputs for a transform.
class TransformSummary {
  /// Transform-specific display data.
  core.List<DisplayData>? displayData;

  /// SDK generated id of this transform instance.
  core.String? id;

  /// User names for all collection inputs to this transform.
  core.List<core.String>? inputCollectionName;

  /// Type of transform.
  /// Possible string values are:
  /// - "UNKNOWN_KIND" : Unrecognized transform type.
  /// - "PAR_DO_KIND" : ParDo transform.
  /// - "GROUP_BY_KEY_KIND" : Group By Key transform.
  /// - "FLATTEN_KIND" : Flatten transform.
  /// - "READ_KIND" : Read transform.
  /// - "WRITE_KIND" : Write transform.
  /// - "CONSTANT_KIND" : Constructs from a constant value, such as with
  /// Create.of.
  /// - "SINGLETON_KIND" : Creates a Singleton view of a collection.
  /// - "SHUFFLE_KIND" : Opening or closing a shuffle session, often as part of
  /// a GroupByKey.
  core.String? kind;

  /// User provided name for this transform instance.
  core.String? name;

  /// User names for all collection outputs to this transform.
  core.List<core.String>? outputCollectionName;

  TransformSummary();

  TransformSummary.fromJson(core.Map _json) {
    if (_json.containsKey('displayData')) {
      displayData = (_json['displayData'] as core.List)
          .map<DisplayData>((value) => DisplayData.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('inputCollectionName')) {
      inputCollectionName = (_json['inputCollectionName'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('outputCollectionName')) {
      outputCollectionName = (_json['outputCollectionName'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayData != null)
          'displayData': displayData!.map((value) => value.toJson()).toList(),
        if (id != null) 'id': id!,
        if (inputCollectionName != null)
          'inputCollectionName': inputCollectionName!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (outputCollectionName != null)
          'outputCollectionName': outputCollectionName!,
      };
}

/// Response to the validation request.
class ValidateResponse {
  /// Will be empty if validation succeeds.
  core.String? errorMessage;

  /// Information about the validated query.
  ///
  /// Not defined if validation fails.
  QueryInfo? queryInfo;

  ValidateResponse();

  ValidateResponse.fromJson(core.Map _json) {
    if (_json.containsKey('errorMessage')) {
      errorMessage = _json['errorMessage'] as core.String;
    }
    if (_json.containsKey('queryInfo')) {
      queryInfo = QueryInfo.fromJson(
          _json['queryInfo'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (queryInfo != null) 'queryInfo': queryInfo!.toJson(),
      };
}

/// WorkItem represents basic information about a WorkItem to be executed in the
/// cloud.
class WorkItem {
  /// Work item-specific configuration as an opaque blob.
  core.String? configuration;

  /// Identifies this WorkItem.
  core.String? id;

  /// The initial index to use when reporting the status of the WorkItem.
  core.String? initialReportIndex;

  /// Identifies the workflow job this WorkItem belongs to.
  core.String? jobId;

  /// Time when the lease on this Work will expire.
  core.String? leaseExpireTime;

  /// Additional information for MapTask WorkItems.
  MapTask? mapTask;

  /// Any required packages that need to be fetched in order to execute this
  /// WorkItem.
  core.List<Package>? packages;

  /// Identifies the cloud project this WorkItem belongs to.
  core.String? projectId;

  /// Recommended reporting interval.
  core.String? reportStatusInterval;

  /// Additional information for SeqMapTask WorkItems.
  SeqMapTask? seqMapTask;

  /// Additional information for ShellTask WorkItems.
  ShellTask? shellTask;

  /// Additional information for source operation WorkItems.
  SourceOperationRequest? sourceOperationTask;

  /// Additional information for StreamingComputationTask WorkItems.
  StreamingComputationTask? streamingComputationTask;

  /// Additional information for StreamingConfigTask WorkItems.
  StreamingConfigTask? streamingConfigTask;

  /// Additional information for StreamingSetupTask WorkItems.
  StreamingSetupTask? streamingSetupTask;

  WorkItem();

  WorkItem.fromJson(core.Map _json) {
    if (_json.containsKey('configuration')) {
      configuration = _json['configuration'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('initialReportIndex')) {
      initialReportIndex = _json['initialReportIndex'] as core.String;
    }
    if (_json.containsKey('jobId')) {
      jobId = _json['jobId'] as core.String;
    }
    if (_json.containsKey('leaseExpireTime')) {
      leaseExpireTime = _json['leaseExpireTime'] as core.String;
    }
    if (_json.containsKey('mapTask')) {
      mapTask = MapTask.fromJson(
          _json['mapTask'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('packages')) {
      packages = (_json['packages'] as core.List)
          .map<Package>((value) =>
              Package.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
    if (_json.containsKey('reportStatusInterval')) {
      reportStatusInterval = _json['reportStatusInterval'] as core.String;
    }
    if (_json.containsKey('seqMapTask')) {
      seqMapTask = SeqMapTask.fromJson(
          _json['seqMapTask'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('shellTask')) {
      shellTask = ShellTask.fromJson(
          _json['shellTask'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sourceOperationTask')) {
      sourceOperationTask = SourceOperationRequest.fromJson(
          _json['sourceOperationTask'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('streamingComputationTask')) {
      streamingComputationTask = StreamingComputationTask.fromJson(
          _json['streamingComputationTask']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('streamingConfigTask')) {
      streamingConfigTask = StreamingConfigTask.fromJson(
          _json['streamingConfigTask'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('streamingSetupTask')) {
      streamingSetupTask = StreamingSetupTask.fromJson(
          _json['streamingSetupTask'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (configuration != null) 'configuration': configuration!,
        if (id != null) 'id': id!,
        if (initialReportIndex != null)
          'initialReportIndex': initialReportIndex!,
        if (jobId != null) 'jobId': jobId!,
        if (leaseExpireTime != null) 'leaseExpireTime': leaseExpireTime!,
        if (mapTask != null) 'mapTask': mapTask!.toJson(),
        if (packages != null)
          'packages': packages!.map((value) => value.toJson()).toList(),
        if (projectId != null) 'projectId': projectId!,
        if (reportStatusInterval != null)
          'reportStatusInterval': reportStatusInterval!,
        if (seqMapTask != null) 'seqMapTask': seqMapTask!.toJson(),
        if (shellTask != null) 'shellTask': shellTask!.toJson(),
        if (sourceOperationTask != null)
          'sourceOperationTask': sourceOperationTask!.toJson(),
        if (streamingComputationTask != null)
          'streamingComputationTask': streamingComputationTask!.toJson(),
        if (streamingConfigTask != null)
          'streamingConfigTask': streamingConfigTask!.toJson(),
        if (streamingSetupTask != null)
          'streamingSetupTask': streamingSetupTask!.toJson(),
      };
}

/// Information about an individual work item execution.
class WorkItemDetails {
  /// Attempt ID of this work item
  core.String? attemptId;

  /// End time of this work item attempt.
  ///
  /// If the work item is completed, this is the actual end time of the work
  /// item. Otherwise, it is the predicted end time.
  core.String? endTime;

  /// Metrics for this work item.
  core.List<MetricUpdate>? metrics;

  /// Progress of this work item.
  ProgressTimeseries? progress;

  /// Start time of this work item attempt.
  core.String? startTime;

  /// State of this work item.
  /// Possible string values are:
  /// - "EXECUTION_STATE_UNKNOWN" : The component state is unknown or
  /// unspecified.
  /// - "EXECUTION_STATE_NOT_STARTED" : The component is not yet running.
  /// - "EXECUTION_STATE_RUNNING" : The component is currently running.
  /// - "EXECUTION_STATE_SUCCEEDED" : The component succeeded.
  /// - "EXECUTION_STATE_FAILED" : The component failed.
  /// - "EXECUTION_STATE_CANCELLED" : Execution of the component was cancelled.
  core.String? state;

  /// Name of this work item.
  core.String? taskId;

  WorkItemDetails();

  WorkItemDetails.fromJson(core.Map _json) {
    if (_json.containsKey('attemptId')) {
      attemptId = _json['attemptId'] as core.String;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<MetricUpdate>((value) => MetricUpdate.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('progress')) {
      progress = ProgressTimeseries.fromJson(
          _json['progress'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('taskId')) {
      taskId = _json['taskId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (attemptId != null) 'attemptId': attemptId!,
        if (endTime != null) 'endTime': endTime!,
        if (metrics != null)
          'metrics': metrics!.map((value) => value.toJson()).toList(),
        if (progress != null) 'progress': progress!.toJson(),
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (taskId != null) 'taskId': taskId!,
      };
}

/// The Dataflow service's idea of the current state of a WorkItem being
/// processed by a worker.
class WorkItemServiceState {
  /// If set, a request to complete the work item with the given status.
  ///
  /// This will not be set to OK, unless supported by the specific kind of
  /// WorkItem. It can be used for the backend to indicate a WorkItem must
  /// terminate, e.g., for aborting work.
  Status? completeWorkStatus;

  /// Other data returned by the service, specific to the particular worker
  /// harness.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? harnessData;

  /// A hot key is a symptom of poor data distribution in which there are enough
  /// elements mapped to a single key to impact pipeline performance.
  ///
  /// When present, this field includes metadata associated with any hot key.
  HotKeyDetection? hotKeyDetection;

  /// Time at which the current lease will expire.
  core.String? leaseExpireTime;

  /// The short ids that workers should use in subsequent metric updates.
  ///
  /// Workers should strive to use short ids whenever possible, but it is ok to
  /// request the short_id again if a worker lost track of it (e.g. if the
  /// worker is recovering from a crash). NOTE: it is possible that the response
  /// may have short ids for a subset of the metrics.
  core.List<MetricShortId>? metricShortId;

  /// The index value to use for the next report sent by the worker.
  ///
  /// Note: If the report call fails for whatever reason, the worker should
  /// reuse this index for subsequent report attempts.
  core.String? nextReportIndex;

  /// New recommended reporting interval.
  core.String? reportStatusInterval;

  /// The progress point in the WorkItem where the Dataflow service suggests
  /// that the worker truncate the task.
  ApproximateSplitRequest? splitRequest;

  /// DEPRECATED in favor of split_request.
  ApproximateProgress? suggestedStopPoint;

  /// Obsolete, always empty.
  Position? suggestedStopPosition;

  WorkItemServiceState();

  WorkItemServiceState.fromJson(core.Map _json) {
    if (_json.containsKey('completeWorkStatus')) {
      completeWorkStatus = Status.fromJson(
          _json['completeWorkStatus'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('harnessData')) {
      harnessData =
          (_json['harnessData'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('hotKeyDetection')) {
      hotKeyDetection = HotKeyDetection.fromJson(
          _json['hotKeyDetection'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('leaseExpireTime')) {
      leaseExpireTime = _json['leaseExpireTime'] as core.String;
    }
    if (_json.containsKey('metricShortId')) {
      metricShortId = (_json['metricShortId'] as core.List)
          .map<MetricShortId>((value) => MetricShortId.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextReportIndex')) {
      nextReportIndex = _json['nextReportIndex'] as core.String;
    }
    if (_json.containsKey('reportStatusInterval')) {
      reportStatusInterval = _json['reportStatusInterval'] as core.String;
    }
    if (_json.containsKey('splitRequest')) {
      splitRequest = ApproximateSplitRequest.fromJson(
          _json['splitRequest'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('suggestedStopPoint')) {
      suggestedStopPoint = ApproximateProgress.fromJson(
          _json['suggestedStopPoint'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('suggestedStopPosition')) {
      suggestedStopPosition = Position.fromJson(_json['suggestedStopPosition']
          as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (completeWorkStatus != null)
          'completeWorkStatus': completeWorkStatus!.toJson(),
        if (harnessData != null) 'harnessData': harnessData!,
        if (hotKeyDetection != null)
          'hotKeyDetection': hotKeyDetection!.toJson(),
        if (leaseExpireTime != null) 'leaseExpireTime': leaseExpireTime!,
        if (metricShortId != null)
          'metricShortId':
              metricShortId!.map((value) => value.toJson()).toList(),
        if (nextReportIndex != null) 'nextReportIndex': nextReportIndex!,
        if (reportStatusInterval != null)
          'reportStatusInterval': reportStatusInterval!,
        if (splitRequest != null) 'splitRequest': splitRequest!.toJson(),
        if (suggestedStopPoint != null)
          'suggestedStopPoint': suggestedStopPoint!.toJson(),
        if (suggestedStopPosition != null)
          'suggestedStopPosition': suggestedStopPosition!.toJson(),
      };
}

/// Conveys a worker's progress through the work described by a WorkItem.
class WorkItemStatus {
  /// True if the WorkItem was completed (successfully or unsuccessfully).
  core.bool? completed;

  /// Worker output counters for this WorkItem.
  core.List<CounterUpdate>? counterUpdates;

  /// See documentation of stop_position.
  DynamicSourceSplit? dynamicSourceSplit;

  /// Specifies errors which occurred during processing.
  ///
  /// If errors are provided, and completed = true, then the WorkItem is
  /// considered to have failed.
  core.List<Status>? errors;

  /// DEPRECATED in favor of counter_updates.
  core.List<MetricUpdate>? metricUpdates;

  /// DEPRECATED in favor of reported_progress.
  ApproximateProgress? progress;

  /// The report index.
  ///
  /// When a WorkItem is leased, the lease will contain an initial report index.
  /// When a WorkItem's status is reported to the system, the report should be
  /// sent with that report index, and the response will contain the index the
  /// worker should use for the next report. Reports received with unexpected
  /// index values will be rejected by the service. In order to preserve
  /// idempotency, the worker should not alter the contents of a report, even if
  /// the worker must submit the same report multiple times before getting back
  /// a response. The worker should not submit a subsequent report until the
  /// response for the previous report had been received from the service.
  core.String? reportIndex;

  /// The worker's progress through this WorkItem.
  ApproximateReportedProgress? reportedProgress;

  /// Amount of time the worker requests for its lease.
  core.String? requestedLeaseDuration;

  /// DEPRECATED in favor of dynamic_source_split.
  SourceFork? sourceFork;

  /// If the work item represented a SourceOperationRequest, and the work is
  /// completed, contains the result of the operation.
  SourceOperationResponse? sourceOperationResponse;

  /// A worker may split an active map task in two parts, "primary" and
  /// "residual", continuing to process the primary part and returning the
  /// residual part into the pool of available work.
  ///
  /// This event is called a "dynamic split" and is critical to the dynamic work
  /// rebalancing feature. The two obtained sub-tasks are called "parts" of the
  /// split. The parts, if concatenated, must represent the same input as would
  /// be read by the current task if the split did not happen. The exact way in
  /// which the original task is decomposed into the two parts is specified
  /// either as a position demarcating them (stop_position), or explicitly as
  /// two DerivedSources, if this task consumes a user-defined source type
  /// (dynamic_source_split). The "current" task is adjusted as a result of the
  /// split: after a task with range \[A, B) sends a stop_position update at C,
  /// its range is considered to be \[A, C), e.g.: * Progress should be
  /// interpreted relative to the new range, e.g. "75% completed" means "75% of
  /// \[A, C) completed" * The worker should interpret proposed_stop_position
  /// relative to the new range, e.g. "split at 68%" should be interpreted as
  /// "split at 68% of \[A, C)". * If the worker chooses to split again using
  /// stop_position, only stop_positions in \[A, C) will be accepted. * Etc.
  /// dynamic_source_split has similar semantics: e.g., if a task with source S
  /// splits using dynamic_source_split into {P, R} (where P and R must be
  /// together equivalent to S), then subsequent progress and
  /// proposed_stop_position should be interpreted relative to P, and in a
  /// potential subsequent dynamic_source_split into {P', R'}, P' and R' must be
  /// together equivalent to P, etc.
  Position? stopPosition;

  /// Total time the worker spent being throttled by external systems.
  core.double? totalThrottlerWaitTimeSeconds;

  /// Identifies the WorkItem.
  core.String? workItemId;

  WorkItemStatus();

  WorkItemStatus.fromJson(core.Map _json) {
    if (_json.containsKey('completed')) {
      completed = _json['completed'] as core.bool;
    }
    if (_json.containsKey('counterUpdates')) {
      counterUpdates = (_json['counterUpdates'] as core.List)
          .map<CounterUpdate>((value) => CounterUpdate.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('dynamicSourceSplit')) {
      dynamicSourceSplit = DynamicSourceSplit.fromJson(
          _json['dynamicSourceSplit'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('errors')) {
      errors = (_json['errors'] as core.List)
          .map<Status>((value) =>
              Status.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('metricUpdates')) {
      metricUpdates = (_json['metricUpdates'] as core.List)
          .map<MetricUpdate>((value) => MetricUpdate.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('progress')) {
      progress = ApproximateProgress.fromJson(
          _json['progress'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('reportIndex')) {
      reportIndex = _json['reportIndex'] as core.String;
    }
    if (_json.containsKey('reportedProgress')) {
      reportedProgress = ApproximateReportedProgress.fromJson(
          _json['reportedProgress'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('requestedLeaseDuration')) {
      requestedLeaseDuration = _json['requestedLeaseDuration'] as core.String;
    }
    if (_json.containsKey('sourceFork')) {
      sourceFork = SourceFork.fromJson(
          _json['sourceFork'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sourceOperationResponse')) {
      sourceOperationResponse = SourceOperationResponse.fromJson(
          _json['sourceOperationResponse']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('stopPosition')) {
      stopPosition = Position.fromJson(
          _json['stopPosition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('totalThrottlerWaitTimeSeconds')) {
      totalThrottlerWaitTimeSeconds =
          (_json['totalThrottlerWaitTimeSeconds'] as core.num).toDouble();
    }
    if (_json.containsKey('workItemId')) {
      workItemId = _json['workItemId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (completed != null) 'completed': completed!,
        if (counterUpdates != null)
          'counterUpdates':
              counterUpdates!.map((value) => value.toJson()).toList(),
        if (dynamicSourceSplit != null)
          'dynamicSourceSplit': dynamicSourceSplit!.toJson(),
        if (errors != null)
          'errors': errors!.map((value) => value.toJson()).toList(),
        if (metricUpdates != null)
          'metricUpdates':
              metricUpdates!.map((value) => value.toJson()).toList(),
        if (progress != null) 'progress': progress!.toJson(),
        if (reportIndex != null) 'reportIndex': reportIndex!,
        if (reportedProgress != null)
          'reportedProgress': reportedProgress!.toJson(),
        if (requestedLeaseDuration != null)
          'requestedLeaseDuration': requestedLeaseDuration!,
        if (sourceFork != null) 'sourceFork': sourceFork!.toJson(),
        if (sourceOperationResponse != null)
          'sourceOperationResponse': sourceOperationResponse!.toJson(),
        if (stopPosition != null) 'stopPosition': stopPosition!.toJson(),
        if (totalThrottlerWaitTimeSeconds != null)
          'totalThrottlerWaitTimeSeconds': totalThrottlerWaitTimeSeconds!,
        if (workItemId != null) 'workItemId': workItemId!,
      };
}

/// Information about a worker
class WorkerDetails {
  /// Work items processed by this worker, sorted by time.
  core.List<WorkItemDetails>? workItems;

  /// Name of this worker
  core.String? workerName;

  WorkerDetails();

  WorkerDetails.fromJson(core.Map _json) {
    if (_json.containsKey('workItems')) {
      workItems = (_json['workItems'] as core.List)
          .map<WorkItemDetails>((value) => WorkItemDetails.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('workerName')) {
      workerName = _json['workerName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (workItems != null)
          'workItems': workItems!.map((value) => value.toJson()).toList(),
        if (workerName != null) 'workerName': workerName!,
      };
}

/// WorkerHealthReport contains information about the health of a worker.
///
/// The VM should be identified by the labels attached to the WorkerMessage that
/// this health ping belongs to.
class WorkerHealthReport {
  /// Message describing any unusual health reports.
  core.String? msg;

  /// The pods running on the worker.
  ///
  /// See:
  /// http://kubernetes.io/v1.1/docs/api-reference/v1/definitions.html#_v1_pod
  /// This field is used by the worker to send the status of the indvidual
  /// containers running on each worker.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? pods;

  /// The interval at which the worker is sending health reports.
  ///
  /// The default value of 0 should be interpreted as the field is not being
  /// explicitly set by the worker.
  core.String? reportInterval;

  /// Code to describe a specific reason, if known, that a VM has reported
  /// broken state.
  core.String? vmBrokenCode;

  /// Whether the VM is in a permanently broken state.
  ///
  /// Broken VMs should be abandoned or deleted ASAP to avoid assigning or
  /// completing any work.
  core.bool? vmIsBroken;

  /// Whether the VM is currently healthy.
  core.bool? vmIsHealthy;

  /// The time the VM was booted.
  core.String? vmStartupTime;

  WorkerHealthReport();

  WorkerHealthReport.fromJson(core.Map _json) {
    if (_json.containsKey('msg')) {
      msg = _json['msg'] as core.String;
    }
    if (_json.containsKey('pods')) {
      pods = (_json['pods'] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map<core.String, core.dynamic>).map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('reportInterval')) {
      reportInterval = _json['reportInterval'] as core.String;
    }
    if (_json.containsKey('vmBrokenCode')) {
      vmBrokenCode = _json['vmBrokenCode'] as core.String;
    }
    if (_json.containsKey('vmIsBroken')) {
      vmIsBroken = _json['vmIsBroken'] as core.bool;
    }
    if (_json.containsKey('vmIsHealthy')) {
      vmIsHealthy = _json['vmIsHealthy'] as core.bool;
    }
    if (_json.containsKey('vmStartupTime')) {
      vmStartupTime = _json['vmStartupTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (msg != null) 'msg': msg!,
        if (pods != null) 'pods': pods!,
        if (reportInterval != null) 'reportInterval': reportInterval!,
        if (vmBrokenCode != null) 'vmBrokenCode': vmBrokenCode!,
        if (vmIsBroken != null) 'vmIsBroken': vmIsBroken!,
        if (vmIsHealthy != null) 'vmIsHealthy': vmIsHealthy!,
        if (vmStartupTime != null) 'vmStartupTime': vmStartupTime!,
      };
}

/// WorkerHealthReportResponse contains information returned to the worker in
/// response to a health ping.
class WorkerHealthReportResponse {
  /// A positive value indicates the worker should change its reporting interval
  /// to the specified value.
  ///
  /// The default value of zero means no change in report rate is requested by
  /// the server.
  core.String? reportInterval;

  WorkerHealthReportResponse();

  WorkerHealthReportResponse.fromJson(core.Map _json) {
    if (_json.containsKey('reportInterval')) {
      reportInterval = _json['reportInterval'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (reportInterval != null) 'reportInterval': reportInterval!,
      };
}

/// A report of an event in a worker's lifecycle.
///
/// The proto contains one event, because the worker is expected to
/// asynchronously send each message immediately after the event. Due to this
/// asynchrony, messages may arrive out of order (or missing), and it is up to
/// the consumer to interpret. The timestamp of the event is in the enclosing
/// WorkerMessage proto.
class WorkerLifecycleEvent {
  /// The start time of this container.
  ///
  /// All events will report this so that events can be grouped together across
  /// container/VM restarts.
  core.String? containerStartTime;

  /// The event being reported.
  /// Possible string values are:
  /// - "UNKNOWN_EVENT" : Invalid event.
  /// - "OS_START" : The time the VM started.
  /// - "CONTAINER_START" : Our container code starts running. Multiple
  /// containers could be distinguished with WorkerMessage.labels if desired.
  /// - "NETWORK_UP" : The worker has a functional external network connection.
  /// - "STAGING_FILES_DOWNLOAD_START" : Started downloading staging files.
  /// - "STAGING_FILES_DOWNLOAD_FINISH" : Finished downloading all staging
  /// files.
  /// - "SDK_INSTALL_START" : For applicable SDKs, started installation of SDK
  /// and worker packages.
  /// - "SDK_INSTALL_FINISH" : Finished installing SDK.
  core.String? event;

  /// Other stats that can accompany an event.
  ///
  /// E.g. { "downloaded_bytes" : "123456" }
  core.Map<core.String, core.String>? metadata;

  WorkerLifecycleEvent();

  WorkerLifecycleEvent.fromJson(core.Map _json) {
    if (_json.containsKey('containerStartTime')) {
      containerStartTime = _json['containerStartTime'] as core.String;
    }
    if (_json.containsKey('event')) {
      event = _json['event'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata = (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerStartTime != null)
          'containerStartTime': containerStartTime!,
        if (event != null) 'event': event!,
        if (metadata != null) 'metadata': metadata!,
      };
}

/// WorkerMessage provides information to the backend about a worker.
class WorkerMessage {
  /// Labels are used to group WorkerMessages.
  ///
  /// For example, a worker_message about a particular container might have the
  /// labels: { "JOB_ID": "2015-04-22", "WORKER_ID": "wordcount-vm-2015…"
  /// "CONTAINER_TYPE": "worker", "CONTAINER_ID": "ac1234def"} Label tags
  /// typically correspond to Label enum values. However, for ease of
  /// development other strings can be used as tags. LABEL_UNSPECIFIED should
  /// not be used here.
  core.Map<core.String, core.String>? labels;

  /// The timestamp of the worker_message.
  core.String? time;

  /// The health of a worker.
  WorkerHealthReport? workerHealthReport;

  /// Record of worker lifecycle events.
  WorkerLifecycleEvent? workerLifecycleEvent;

  /// A worker message code.
  WorkerMessageCode? workerMessageCode;

  /// Resource metrics reported by workers.
  ResourceUtilizationReport? workerMetrics;

  /// Shutdown notice by workers.
  WorkerShutdownNotice? workerShutdownNotice;

  WorkerMessage();

  WorkerMessage.fromJson(core.Map _json) {
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('time')) {
      time = _json['time'] as core.String;
    }
    if (_json.containsKey('workerHealthReport')) {
      workerHealthReport = WorkerHealthReport.fromJson(
          _json['workerHealthReport'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('workerLifecycleEvent')) {
      workerLifecycleEvent = WorkerLifecycleEvent.fromJson(
          _json['workerLifecycleEvent'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('workerMessageCode')) {
      workerMessageCode = WorkerMessageCode.fromJson(
          _json['workerMessageCode'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('workerMetrics')) {
      workerMetrics = ResourceUtilizationReport.fromJson(
          _json['workerMetrics'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('workerShutdownNotice')) {
      workerShutdownNotice = WorkerShutdownNotice.fromJson(
          _json['workerShutdownNotice'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (time != null) 'time': time!,
        if (workerHealthReport != null)
          'workerHealthReport': workerHealthReport!.toJson(),
        if (workerLifecycleEvent != null)
          'workerLifecycleEvent': workerLifecycleEvent!.toJson(),
        if (workerMessageCode != null)
          'workerMessageCode': workerMessageCode!.toJson(),
        if (workerMetrics != null) 'workerMetrics': workerMetrics!.toJson(),
        if (workerShutdownNotice != null)
          'workerShutdownNotice': workerShutdownNotice!.toJson(),
      };
}

/// A message code is used to report status and error messages to the service.
///
/// The message codes are intended to be machine readable. The service will take
/// care of translating these into user understandable messages if necessary.
/// Example use cases: 1. Worker processes reporting successful startup. 2.
/// Worker processes reporting specific errors (e.g. package staging failure).
class WorkerMessageCode {
  /// The code is a string intended for consumption by a machine that identifies
  /// the type of message being sent.
  ///
  /// Examples: 1. "HARNESS_STARTED" might be used to indicate the worker
  /// harness has started. 2. "GCS_DOWNLOAD_ERROR" might be used to indicate an
  /// error downloading a Cloud Storage file as part of the boot process of one
  /// of the worker containers. This is a string and not an enum to make it easy
  /// to add new codes without waiting for an API change.
  core.String? code;

  /// Parameters contains specific information about the code.
  ///
  /// This is a struct to allow parameters of different types. Examples: 1. For
  /// a "HARNESS_STARTED" message parameters might provide the name of the
  /// worker and additional data like timing information. 2. For a
  /// "GCS_DOWNLOAD_ERROR" parameters might contain fields listing the Cloud
  /// Storage objects being downloaded and fields containing errors. In general
  /// complex data structures should be avoided. If a worker needs to send a
  /// specific and complicated data structure then please consider defining a
  /// new proto and adding it to the data oneof in WorkerMessageResponse.
  /// Conventions: Parameters should only be used for information that isn't
  /// typically passed as a label. hostname and other worker identifiers should
  /// almost always be passed as labels since they will be included on most
  /// messages.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? parameters;

  WorkerMessageCode();

  WorkerMessageCode.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.String;
    }
    if (_json.containsKey('parameters')) {
      parameters =
          (_json['parameters'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (parameters != null) 'parameters': parameters!,
      };
}

/// A worker_message response allows the server to pass information to the
/// sender.
class WorkerMessageResponse {
  /// The service's response to a worker's health report.
  WorkerHealthReportResponse? workerHealthReportResponse;

  /// Service's response to reporting worker metrics (currently empty).
  ResourceUtilizationReportResponse? workerMetricsResponse;

  /// Service's response to shutdown notice (currently empty).
  WorkerShutdownNoticeResponse? workerShutdownNoticeResponse;

  WorkerMessageResponse();

  WorkerMessageResponse.fromJson(core.Map _json) {
    if (_json.containsKey('workerHealthReportResponse')) {
      workerHealthReportResponse = WorkerHealthReportResponse.fromJson(
          _json['workerHealthReportResponse']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('workerMetricsResponse')) {
      workerMetricsResponse = ResourceUtilizationReportResponse.fromJson(
          _json['workerMetricsResponse']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('workerShutdownNoticeResponse')) {
      workerShutdownNoticeResponse = WorkerShutdownNoticeResponse.fromJson(
          _json['workerShutdownNoticeResponse']
              as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (workerHealthReportResponse != null)
          'workerHealthReportResponse': workerHealthReportResponse!.toJson(),
        if (workerMetricsResponse != null)
          'workerMetricsResponse': workerMetricsResponse!.toJson(),
        if (workerShutdownNoticeResponse != null)
          'workerShutdownNoticeResponse':
              workerShutdownNoticeResponse!.toJson(),
      };
}

/// Describes one particular pool of Cloud Dataflow workers to be instantiated
/// by the Cloud Dataflow service in order to perform the computations required
/// by a job.
///
/// Note that a workflow job may use multiple pools, in order to match the
/// various computational requirements of the various stages of the job.
class WorkerPool {
  /// Settings for autoscaling of this WorkerPool.
  AutoscalingSettings? autoscalingSettings;

  /// Data disks that are used by a VM in this workflow.
  core.List<Disk>? dataDisks;

  /// The default package set to install.
  ///
  /// This allows the service to select a default set of packages which are
  /// useful to worker harnesses written in a particular language.
  /// Possible string values are:
  /// - "DEFAULT_PACKAGE_SET_UNKNOWN" : The default set of packages to stage is
  /// unknown, or unspecified.
  /// - "DEFAULT_PACKAGE_SET_NONE" : Indicates that no packages should be staged
  /// at the worker unless explicitly specified by the job.
  /// - "DEFAULT_PACKAGE_SET_JAVA" : Stage packages typically useful to workers
  /// written in Java.
  /// - "DEFAULT_PACKAGE_SET_PYTHON" : Stage packages typically useful to
  /// workers written in Python.
  core.String? defaultPackageSet;

  /// Size of root disk for VMs, in GB.
  ///
  /// If zero or unspecified, the service will attempt to choose a reasonable
  /// default.
  core.int? diskSizeGb;

  /// Fully qualified source image for disks.
  core.String? diskSourceImage;

  /// Type of root disk for VMs.
  ///
  /// If empty or unspecified, the service will attempt to choose a reasonable
  /// default.
  core.String? diskType;

  /// Configuration for VM IPs.
  /// Possible string values are:
  /// - "WORKER_IP_UNSPECIFIED" : The configuration is unknown, or unspecified.
  /// - "WORKER_IP_PUBLIC" : Workers should have public IP addresses.
  /// - "WORKER_IP_PRIVATE" : Workers should have private IP addresses.
  core.String? ipConfiguration;

  /// The kind of the worker pool; currently only `harness` and `shuffle` are
  /// supported.
  core.String? kind;

  /// Machine type (e.g. "n1-standard-1").
  ///
  /// If empty or unspecified, the service will attempt to choose a reasonable
  /// default.
  core.String? machineType;

  /// Metadata to set on the Google Compute Engine VMs.
  core.Map<core.String, core.String>? metadata;

  /// Network to which VMs will be assigned.
  ///
  /// If empty or unspecified, the service will use the network "default".
  core.String? network;

  /// The number of threads per worker harness.
  ///
  /// If empty or unspecified, the service will choose a number of threads
  /// (according to the number of cores on the selected machine type for batch,
  /// or 1 by convention for streaming).
  core.int? numThreadsPerWorker;

  /// Number of Google Compute Engine workers in this pool needed to execute the
  /// job.
  ///
  /// If zero or unspecified, the service will attempt to choose a reasonable
  /// default.
  core.int? numWorkers;

  /// The action to take on host maintenance, as defined by the Google Compute
  /// Engine API.
  core.String? onHostMaintenance;

  /// Packages to be installed on workers.
  core.List<Package>? packages;

  /// Extra arguments for this worker pool.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? poolArgs;

  /// Set of SDK harness containers needed to execute this pipeline.
  ///
  /// This will only be set in the Fn API path. For non-cross-language pipelines
  /// this should have only one entry. Cross-language pipelines will have two or
  /// more entries.
  core.List<SdkHarnessContainerImage>? sdkHarnessContainerImages;

  /// Subnetwork to which VMs will be assigned, if desired.
  ///
  /// Expected to be of the form "regions/REGION/subnetworks/SUBNETWORK".
  core.String? subnetwork;

  /// Settings passed through to Google Compute Engine workers when using the
  /// standard Dataflow task runner.
  ///
  /// Users should ignore this field.
  TaskRunnerSettings? taskrunnerSettings;

  /// Sets the policy for determining when to turndown worker pool.
  ///
  /// Allowed values are: `TEARDOWN_ALWAYS`, `TEARDOWN_ON_SUCCESS`, and
  /// `TEARDOWN_NEVER`. `TEARDOWN_ALWAYS` means workers are always torn down
  /// regardless of whether the job succeeds. `TEARDOWN_ON_SUCCESS` means
  /// workers are torn down if the job succeeds. `TEARDOWN_NEVER` means the
  /// workers are never torn down. If the workers are not torn down by the
  /// service, they will continue to run and use Google Compute Engine VM
  /// resources in the user's project until they are explicitly terminated by
  /// the user. Because of this, Google recommends using the `TEARDOWN_ALWAYS`
  /// policy except for small, manually supervised test jobs. If unknown or
  /// unspecified, the service will attempt to choose a reasonable default.
  /// Possible string values are:
  /// - "TEARDOWN_POLICY_UNKNOWN" : The teardown policy isn't specified, or is
  /// unknown.
  /// - "TEARDOWN_ALWAYS" : Always teardown the resource.
  /// - "TEARDOWN_ON_SUCCESS" : Teardown the resource on success. This is useful
  /// for debugging failures.
  /// - "TEARDOWN_NEVER" : Never teardown the resource. This is useful for
  /// debugging and development.
  core.String? teardownPolicy;

  /// Docker container image that executes the Cloud Dataflow worker harness,
  /// residing in Google Container Registry.
  ///
  /// Deprecated for the Fn API path. Use sdk_harness_container_images instead.
  ///
  /// Required.
  core.String? workerHarnessContainerImage;

  /// Zone to run the worker pools in.
  ///
  /// If empty or unspecified, the service will attempt to choose a reasonable
  /// default.
  core.String? zone;

  WorkerPool();

  WorkerPool.fromJson(core.Map _json) {
    if (_json.containsKey('autoscalingSettings')) {
      autoscalingSettings = AutoscalingSettings.fromJson(
          _json['autoscalingSettings'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dataDisks')) {
      dataDisks = (_json['dataDisks'] as core.List)
          .map<Disk>((value) =>
              Disk.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('defaultPackageSet')) {
      defaultPackageSet = _json['defaultPackageSet'] as core.String;
    }
    if (_json.containsKey('diskSizeGb')) {
      diskSizeGb = _json['diskSizeGb'] as core.int;
    }
    if (_json.containsKey('diskSourceImage')) {
      diskSourceImage = _json['diskSourceImage'] as core.String;
    }
    if (_json.containsKey('diskType')) {
      diskType = _json['diskType'] as core.String;
    }
    if (_json.containsKey('ipConfiguration')) {
      ipConfiguration = _json['ipConfiguration'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('machineType')) {
      machineType = _json['machineType'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata = (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
    if (_json.containsKey('network')) {
      network = _json['network'] as core.String;
    }
    if (_json.containsKey('numThreadsPerWorker')) {
      numThreadsPerWorker = _json['numThreadsPerWorker'] as core.int;
    }
    if (_json.containsKey('numWorkers')) {
      numWorkers = _json['numWorkers'] as core.int;
    }
    if (_json.containsKey('onHostMaintenance')) {
      onHostMaintenance = _json['onHostMaintenance'] as core.String;
    }
    if (_json.containsKey('packages')) {
      packages = (_json['packages'] as core.List)
          .map<Package>((value) =>
              Package.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('poolArgs')) {
      poolArgs = (_json['poolArgs'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.Object,
        ),
      );
    }
    if (_json.containsKey('sdkHarnessContainerImages')) {
      sdkHarnessContainerImages =
          (_json['sdkHarnessContainerImages'] as core.List)
              .map<SdkHarnessContainerImage>((value) =>
                  SdkHarnessContainerImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList();
    }
    if (_json.containsKey('subnetwork')) {
      subnetwork = _json['subnetwork'] as core.String;
    }
    if (_json.containsKey('taskrunnerSettings')) {
      taskrunnerSettings = TaskRunnerSettings.fromJson(
          _json['taskrunnerSettings'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('teardownPolicy')) {
      teardownPolicy = _json['teardownPolicy'] as core.String;
    }
    if (_json.containsKey('workerHarnessContainerImage')) {
      workerHarnessContainerImage =
          _json['workerHarnessContainerImage'] as core.String;
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoscalingSettings != null)
          'autoscalingSettings': autoscalingSettings!.toJson(),
        if (dataDisks != null)
          'dataDisks': dataDisks!.map((value) => value.toJson()).toList(),
        if (defaultPackageSet != null) 'defaultPackageSet': defaultPackageSet!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (diskSourceImage != null) 'diskSourceImage': diskSourceImage!,
        if (diskType != null) 'diskType': diskType!,
        if (ipConfiguration != null) 'ipConfiguration': ipConfiguration!,
        if (kind != null) 'kind': kind!,
        if (machineType != null) 'machineType': machineType!,
        if (metadata != null) 'metadata': metadata!,
        if (network != null) 'network': network!,
        if (numThreadsPerWorker != null)
          'numThreadsPerWorker': numThreadsPerWorker!,
        if (numWorkers != null) 'numWorkers': numWorkers!,
        if (onHostMaintenance != null) 'onHostMaintenance': onHostMaintenance!,
        if (packages != null)
          'packages': packages!.map((value) => value.toJson()).toList(),
        if (poolArgs != null) 'poolArgs': poolArgs!,
        if (sdkHarnessContainerImages != null)
          'sdkHarnessContainerImages': sdkHarnessContainerImages!
              .map((value) => value.toJson())
              .toList(),
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (taskrunnerSettings != null)
          'taskrunnerSettings': taskrunnerSettings!.toJson(),
        if (teardownPolicy != null) 'teardownPolicy': teardownPolicy!,
        if (workerHarnessContainerImage != null)
          'workerHarnessContainerImage': workerHarnessContainerImage!,
        if (zone != null) 'zone': zone!,
      };
}

/// Provides data to pass through to the worker harness.
class WorkerSettings {
  /// The base URL for accessing Google Cloud APIs.
  ///
  /// When workers access Google Cloud APIs, they logically do so via relative
  /// URLs. If this field is specified, it supplies the base URL to use for
  /// resolving these relative URLs. The normative algorithm used is defined by
  /// RFC 1808, "Relative Uniform Resource Locators". If not specified, the
  /// default value is "http://www.googleapis.com/"
  core.String? baseUrl;

  /// Whether to send work progress updates to the service.
  core.bool? reportingEnabled;

  /// The Cloud Dataflow service path relative to the root URL, for example,
  /// "dataflow/v1b3/projects".
  core.String? servicePath;

  /// The Shuffle service path relative to the root URL, for example,
  /// "shuffle/v1beta1".
  core.String? shuffleServicePath;

  /// The prefix of the resources the system should use for temporary storage.
  ///
  /// The supported resource type is: Google Cloud Storage:
  /// storage.googleapis.com/{bucket}/{object}
  /// bucket.storage.googleapis.com/{object}
  core.String? tempStoragePrefix;

  /// The ID of the worker running this pipeline.
  core.String? workerId;

  WorkerSettings();

  WorkerSettings.fromJson(core.Map _json) {
    if (_json.containsKey('baseUrl')) {
      baseUrl = _json['baseUrl'] as core.String;
    }
    if (_json.containsKey('reportingEnabled')) {
      reportingEnabled = _json['reportingEnabled'] as core.bool;
    }
    if (_json.containsKey('servicePath')) {
      servicePath = _json['servicePath'] as core.String;
    }
    if (_json.containsKey('shuffleServicePath')) {
      shuffleServicePath = _json['shuffleServicePath'] as core.String;
    }
    if (_json.containsKey('tempStoragePrefix')) {
      tempStoragePrefix = _json['tempStoragePrefix'] as core.String;
    }
    if (_json.containsKey('workerId')) {
      workerId = _json['workerId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseUrl != null) 'baseUrl': baseUrl!,
        if (reportingEnabled != null) 'reportingEnabled': reportingEnabled!,
        if (servicePath != null) 'servicePath': servicePath!,
        if (shuffleServicePath != null)
          'shuffleServicePath': shuffleServicePath!,
        if (tempStoragePrefix != null) 'tempStoragePrefix': tempStoragePrefix!,
        if (workerId != null) 'workerId': workerId!,
      };
}

/// Shutdown notification from workers.
///
/// This is to be sent by the shutdown script of the worker VM so that the
/// backend knows that the VM is being shut down.
class WorkerShutdownNotice {
  /// The reason for the worker shutdown.
  ///
  /// Current possible values are: "UNKNOWN": shutdown reason is unknown.
  /// "PREEMPTION": shutdown reason is preemption. Other possible reasons may be
  /// added in the future.
  core.String? reason;

  WorkerShutdownNotice();

  WorkerShutdownNotice.fromJson(core.Map _json) {
    if (_json.containsKey('reason')) {
      reason = _json['reason'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (reason != null) 'reason': reason!,
      };
}

/// Service-side response to WorkerMessage issuing shutdown notice.
class WorkerShutdownNoticeResponse {
  WorkerShutdownNoticeResponse();

  WorkerShutdownNoticeResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// An instruction that writes records.
///
/// Takes one input, produces no outputs.
class WriteInstruction {
  /// The input.
  InstructionInput? input;

  /// The sink to write to.
  Sink? sink;

  WriteInstruction();

  WriteInstruction.fromJson(core.Map _json) {
    if (_json.containsKey('input')) {
      input = InstructionInput.fromJson(
          _json['input'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sink')) {
      sink =
          Sink.fromJson(_json['sink'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (input != null) 'input': input!.toJson(),
        if (sink != null) 'sink': sink!.toJson(),
      };
}
