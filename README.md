iknowSocial
===========

###General description
As for **now** `iknowSocial` provides following:
  * COS-wrapper for [VK API](http://vk.com/dev/methods).
  * Convenient way to work comfortably with VK data, using classes from `VKReader.Data` package.
  * Lister for `iKnow` to directly load/list VK data to your domain/loader.
  * Simple [demo](../master/csp/vkreader.csp.xml) to query VK newsfeed.
  * Useful [class](../master/Misc/DomainEmotionalColoringCounter.xml) to count emotional coloring for all sources in domain.
  * [UI-tool](../master/csp/scaffold.csp.xml) to build current emotional dictionary closure for future analysis.

###Limitations
  * `iknowSocial` only runs on Cache 2015.2 and later, due to iKnow stemming usage.

###Installation
To install `iknowSocial`, import code from this repo to your namespace with a user who has access 
to `%SYS` and SSL configurations editing, and run the following line in terminal:

    set status = ##class(Util.Misc).Install()

In case all went smooth, you'll get your status `$$$OK`.
Under the hood this method creates an empty SSL configuration with name defined by 
parameter `SSLConfigurationName` from class `Util.Requests.RequestSender`. It also creates iKnow 
domain with russian iKnow configuration and sets stemming for this domain.


###LoadingTask
~~Open Cache' Management Portal->System Operation->Task Manager->Import Tasks.
Import tasks from a file LoadTweetsTask.xml.~~
~~Open Portal->System Operation->Task Manager->Task Schedule. Task name is "LoadTweets"~~

There is no LoadTweets task at the moment - background tweets fetch support will be reimplemented as 
part of upcoming streamin API support.
