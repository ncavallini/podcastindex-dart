# PodcastIndex Library for Dart/Flutter

ℹ️ This library provides easy access to the <a href="https://podcastindex.org/" target="_blank">PodcastIndex</a> API to find podcasts feeds & episodes.

📱 This library can be used in Flutter apps, too!

## Features

Only the most important part of the PodcastIndex API has been implemented (for now). 
For terminology, please refer to the official <a href="https://podcastindex-org.github.io/docs-api" target="_blank">API Docs</a>.



> [!NOTE]
>
> ⚡ **Current Progress: 15/40 endpoints implemented.** 



> [!NOTE]
>
> A *feed* represents a podcast in its totality; an *episode* represents a single episode of a specific feed. 
>
> PodcastIndex uses *feed* and *podcast* interchangeably. Albeit confusing, we do the same here.

> [!TIP]
>
> Pay attention to the use of singular/plural in method names. For example, `findFeedById` returns a `Future<Feed>`, whereas `findFeedsByTerm` returns a `Future<List<Feed>>`.

> [!TIP]
>
> All methods return a `Future<...>`, as HTTP call are asynchronous. Just use `await` in front of the method call, and mark the *calling* method as `async`.
>
> ```dart
> void f() async {
>     List<Feed> results = await feedService.findFeedsByTerm("some term"); 
>     
>     // Notice that the return type is not wrapped in a Future, because we called 		the method with await
> }
> ```



### Search

> [!IMPORTANT]
>
> Endpoints in the *Search* category use both the `FeedService` and the `EpisodeService`! It's always better to instantiate both at the same time.



| Name                                                         | Implemented? | Endpoint               | Method                                |
| ------------------------------------------------------------ | ------------ | ---------------------- | ------------------------------------- |
| [Search (podcasts) by term](https://podcastindex-org.github.io/docs-api/#get-/search/byterm) | ✅            | `/search/byterm`       | `FeedService.findFeedsByTerm`         |
| [Search podcasts by title](https://podcastindex-org.github.io/docs-api/#get-/search/bytitle) | ✅            | `/search/bytitle`      | `FeedService.findFeedsByTitle`        |
| [Search episodes by person](https://podcastindex-org.github.io/docs-api/#get-/search/byperson) | ✅            | `/search/byperson`     | `EpisodeService.findEpisodesByPerson` |
| [Search Music Podcasts](https://podcastindex-org.github.io/docs-api/#get-/search/music/byterm) | ✅            | `/search/music/byterm` | `FeedService.findMusicFeedsByTerm`    |



### Podcasts (*Feeds*)

| Name                                                         | Implemented? | Endpoint               | Method                              |
| ------------------------------------------------------------ | ------------ | ---------------------- | ----------------------------------- |
| [By Feed ID](https://podcastindex-org.github.io/docs-api/#get-/podcasts/byfeedid) | ✅            | `/podcasts/byfeedid`   | `FeedService.findFeedById`          |
| [By Feed URL](https://podcastindex-org.github.io/docs-api/#get-/podcasts/byfeedurl) | ✅            | `/podcasts/byfeedurl`  | `FeedService.findFeedByUrl`         |
| [By iTunes ID](https://podcastindex-org.github.io/docs-api/#get-/podcasts/byitunesid) | ✅            | `/podcasts/byitunesid` | `FeedService.findFeedByItunesId`    |
| [By GUID](https://podcastindex-org.github.io/docs-api/#get-/podcasts/byguid) | ✅            | `/podcasts/byguid`     | `FeedService.findFeedByPodcastGuid` |
| [By Tag](https://podcastindex-org.github.io/docs-api/#get-/podcasts/bytag) | ❌            | `/podcasts/bytag`      | -                                   |
| [By Medium](https://podcastindex-org.github.io/docs-api/#get-/podcasts/bymedium) | ✅            | `/oodcasts/bymedium`   | `FeedService.findFeedByMedium`      |
| [Trending](https://podcastindex-org.github.io/docs-api/#get-/podcasts/trending) | ❌            | `/podcasts/trending`   | -                                   |
| [Dead](https://podcastindex-org.github.io/docs-api/#get-/podcasts/dead) | ❌            | `/podcasts/dead`       | -                                   |

> [!NOTE]
>
> The GUID is a unique, global identifier for the podcast. See the namespace spec for [guid](https://github.com/Podcastindex-org/podcast-namespace/blob/main/docs/1.0.md#guid) for details. (*from PodcastIndex API Docs*).




### Episodes

| Name                                                         | Implemented? | Endpoint               | Method                              |
| ------------------------------------------------------------ | ------------ | ---------------------- | ----------------------------------- |
| [By Feed ID](https://podcastindex-org.github.io/docs-api/#get-/episodes/byfeedid) | ✅            | `/episodes/byfeedid`   | `EpisodeService.findEpisodesByFeedId` |
| [By Feed URL](https://podcastindex-org.github.io/docs-api/#get-/episodes/byfeedurl) | ✅            | `/episodes/byfeedurl`  | `EpisodeService.findEpisodesByFeedUrl` |
| [By Podcast GUID](https://podcastindex-org.github.io/docs-api/#get-/episodes/bypodcastguid) | ✅            | `/episodes/bypodcastguid` | `EpisodeService.findEpisodesByPodcastGuid` |
| [By GUID](https://podcastindex-org.github.io/docs-api/#get-/episodes/byguid) | ✅            | `/episodes/byguid`     | `EpisodeService.findEpisodeByGuid` |
| [By iTunes ID](https://podcastindex-org.github.io/docs-api/#get-/episodes/byitunesid) | ❌            | `/episodes/byitunesid`    | -                                          |
| [By ID](https://podcastindex-org.github.io/docs-api/#get-/episodes/byid) | ✅            | `/episodes/byid`          | `EpisodeService.findEpisodeById`           |
| [Live](https://podcastindex-org.github.io/docs-api/#get-/episodes/live) | ✅            | `/episodes/live`          | `EpisodeService.findLiveEpisodes`          |
| [Random](https://podcastindex-org.github.io/docs-api/#get-/episodes/random) | ❌            | `/episodes/random`        | -                                   |

> [!WARNING]
>
> Do not get confused! Podcast GUID `!=` GUID. The first one is the GUID of the feed the episode is part of; the latter is the GUID of the single, specific episode.
>
> Finally, *ID* is the PodcastIndex internal ID (an `int`).



### Other Endpoints

The PodcastIndex API exposes many more endpoints! Following categories hasn't been implemented **at all**:

- Recent
- Value
- Stats
- Categories
- Hub 
- Add
- Apple Replacement



Please note that you can manually call not-yet-implemented endpoints using 

```dart
HttpUtil.get(endpoint)
```
from this library, where `endpoint` is of the form `/some-endpoint`. **This function will take care of authentication for you.** A standard `Future<Response>` will be returned.

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

 > [!NOTE]
> You can get these two values by signing up > for a **free** PodcastIndex account <a href="https://api.podcastindex.org/" target="_blank">here</a>.
   
   

 
3. Import the library in your files:
   ```dart
    import 'package:podcastindex_dart/src/entity/episode.dart';
    import 'package:podcastindex_dart/src/service/episode_service.dart';
    import 'package:podcastindex_dart/src/service/feed_service.dart';
   ```

## Usage

There are essentially two *services* that deal with the two fundamentals type returned by the API: `FeedService` and `EpisodeService`.

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

> [!NOTE]
>
> The name of parameters and fields reflects those of the <a href="https://podcastindex-org.github.io/docs-api" target="_blank">official API</a>.

