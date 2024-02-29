## copy this code to app_router in lib/util/config/router/_.dart

specific path

```
GoRoute(
      path: '/${toSnakeCase('New')}',
      pageBuilder: (context, state) {
        return MaterialPage<void>(
          key: state.pageKey,
          child: NewView(
            params: NewParams.fromUri(context, state.uri),
            tag: state.uri.queryParameters['tag'],
            slug: null,
          ),
        );
      },
    ),
```

wildcard path

```
GoRoute(
      path: '/:slug',
      pageBuilder: (context, state) {
        return MaterialPage<void>(
          key: state.pageKey,
          child: NewView(
              params: NewParams.fromUri(context, state.uri),
              tag: state.uri.queryParameters['tag']),
              slug: state.uri.pathSegments[0],
        );
      },
    ),
```