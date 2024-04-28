# make request to api

```
flutter pub add retrofit
flutter pub add dev:retrofit_generator
flutter pub add dev:build_runner
```

# comparing dart objects

```
flutter pub add equatable
```

# Database

```
flutter pub add floor
flutter pub add dev:floor_generator
```

# run builder

crate part, factory, route
example

```dart
part 'news_api_service.g.dart';

@RestApi(baseUrl:newsAPIBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("apiKey") String ? apiKey,
    @Query("country") String ? country,
    @Query("category") String ? category,
  });
}
```


```
flutter pub run build_runner build
```

# state management

```
flutter pub add flutter_bloc
```