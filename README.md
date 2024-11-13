ℹ️ This library provides easy access to the <a href="https://podcastindex.org/" target="_blank">PodcastIndex</a> API to find podcasts feeds & episodes.

📱 This library can be used in Flutter apps, too!

## Features

Only the most important part of the PodcastIndex API has been implemented (for now). 
For terminology, please refer to the official <a href="https://podcastindex-org.github.io/docs-api" target="_blank">API Docs</a>.

### Feeds

### Episodes

### Other Endpoints

Please note that you can manually call not-yet-implemented endpoints using 
```dart
HttpUtil.get(endpoint)
``` 
from this library, where `endpoint` is of the form `/some-endpoint`. This function will take care of authentication for you.

## Getting started

1. Install the library as usual:
    ```bash
    dart pub add podcastindex_dart
    ``` 
    or, if using Flutter:
    ```bash
    dart pub add podcastindex_dart
    ``` 



1. If you don't have one already, create a `.env` file at the root of your project.
   
   Paste following content: 
   ```bash
    PODCASTINDEX_API_KEY='your_api_key'
    PODCASTINDEX_API_SECRET='your_api_secret'
    ```
⚠️ You can get these two values by signing up for a **free** PodcastIndex account <a href="https://api.podcastindex.org/" target="_blank">here</a>.

3. Import the library in your files:
   ```dart
    import 'package:podcastindex_dart/src/entity/episode.dart';
    import 'package:podcastindex_dart/src/service/episode_service.dart';
    import 'package:podcastindex_dart/src/service/feed_service.dart';
   ```

## Usage

There are essentially two *services* that deal with the two fundamentals type returned by the API: `FeedService` and `EpisodeService`.

A *feed* represents a podcast in its totality; an *episode* represents a single episode of a specific feed. 

Simply instantiate the desired service:
```dart
var feedService = FeedService();
var episodeService = EpisodeService();
```
On these objects, method names reflects that of the PodcastIndex API's endpoints and are pretty self-explanatory.

As usual, please refer to the <a href="https://podcastindex-org.github.io/docs-api" target="_blank">official API Docs</a>.

## Example
Let's suppose we want to match all podcasts (*feeds*) with a given word (**a typical usage for a search bar!**).

This is how I'd do it: 
```dart
String term = searchBarInput.value; /*Dumb code, just for you to get the idea!*/

List<Feed> searchResults = feedService.findFeedsByTerm(term);
```

To limit the search at the first 10 results, we can modify the code to include the `max` optional parameter:
```dart
List<Feed> searchResults = feedService.findFeedsByTerm(term, max: 10);
```
Additionally, to let explicit contents out of the results, we can set the `clean` flag:

```dart
List<Feed> searchResults = feedService.findFeedsByTerm(term, max: 10, clean: true);
```

To play an episode (in reality, to get the stream URL of a specific episode), we would write the following:

```dart
  int episodeId = 16795089; // found with some other calls.
  Episode episode = await episodeService.findEpisodeById(episodeId);
  String playbackUrl = episode.enclosureUrl.toString();


audioplayer.play(playbackUrl); // Dumb code, to get the idea!
```

ℹ️ The name of parameters and fields reflects those of the <a href="https://podcastindex-org.github.io/docs-api" target="_blank">official API</a>.

