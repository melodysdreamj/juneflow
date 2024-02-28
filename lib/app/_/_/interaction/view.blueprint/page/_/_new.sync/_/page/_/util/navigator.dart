import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../../../../../../util/start_app.dart';
import '../params.dart';
import '../life_cycle/ready_view.dart';
import 'view_skeleton.dart';

export '../params.dart';

class NewNavigator {
  NewParams params;
  String? tag;

  NewNavigator(this.params, {this.tag});

  movePageGo(BuildContext context, {String? slug}) {
    Map<String, dynamic> queryParams = params.toJson();
    if (tag != null) queryParams['tag'] = tag;
    if (slug != null) queryParams['slug'] = slug;

    if (slug != null) {
      GoRouter.of(context)
          .go('/$slug?${Uri(queryParameters: queryParams).query}');
    } else {
      GoRouter.of(context).go(
          '/${toSnakeCase('New')}?${Uri(queryParameters: queryParams).query}');
    }
  }

  movePagePush(BuildContext context, {String? slug}) {
    Map<String, dynamic> queryParams = params.toJson();
    if (tag != null) queryParams['tag'] = tag;
    if (slug != null) queryParams['slug'] = slug;

    if (slug != null) {
      GoRouter.of(context)
          .push('/$slug?${Uri(queryParameters: queryParams).query}');
    } else {
      GoRouter.of(context).push(
          '/${toSnakeCase('New')}?${Uri(queryParameters: queryParams).query}');
    }
  }

  movePageReplace(BuildContext context, {String? slug}) {
    Map<String, dynamic> queryParams = params.toJson();
    if (tag != null) queryParams['tag'] = tag;
    if (slug != null) queryParams['slug'] = slug;

    if (slug != null) {
      GoRouter.of(context)
          .replace('/$slug?${Uri(queryParameters: queryParams).query}');
    } else {
      GoRouter.of(context).replace(
          '/${toSnakeCase('New')}?${Uri(queryParameters: queryParams).query}');
    }
  }

  movePagePushReplacement(BuildContext context, {String? slug}) {
    Map<String, dynamic> queryParams = params.toJson();
    if (tag != null) queryParams['tag'] = tag;
    if (slug != null) queryParams['slug'] = slug;

    if (slug != null) {
      GoRouter.of(context)
          .pushReplacement('/$slug?${Uri(queryParameters: queryParams).query}');
    } else {
      GoRouter.of(context).pushReplacement(
          '/${toSnakeCase('New')}?${Uri(queryParameters: queryParams).query}');
    }
  }

  movePageOffAll(BuildContext context, {String? slug}) {
    Map<String, dynamic> queryParams = params.toJson();
    if (tag != null) queryParams['tag'] = tag;
    if (slug != null) queryParams['slug'] = slug;

    while (context.canPop() == true) {
      context.pop();
    }
    if (slug != null) {
      GoRouter.of(context)
          .go('/$slug?${Uri(queryParameters: queryParams).query}');
    } else {
      GoRouter.of(context).go(
          '/${toSnakeCase('New')}?${Uri(queryParameters: queryParams).query}');
    }
  }

  withoutRouterMovePage(BuildContext context, {String? slug}) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => NewView(
          params: params,
          slug: slug,
          tag: tag,
        ),
      ),
    );
  }
}
