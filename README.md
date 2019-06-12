# fern
```
                            
                            
   :##  Ｆｅｄｅｒａｔｅｄ  
   #. Ｅｄｉｔｏｒ  ａｎｄ  
   # Ｒｅａｄｅｒ  ｏｆ  Ｎｅｗｓ                                                               
 #####   ###    #:##: #:##: 
   #       :#   ##  # #  :#   /.\
   #    #   #   #     #   #  // \\
   #    #####   #     #   #  \\///
   #    #       #     #   #   \//
   #        #   #     #   # -=//=-
   #     ###:   #     #   #-=//==-
                            
                            
```
[fern](fern): a curses-based mastodon client modeled off usenet news readers & pine, with an emphasis on getting to 'timeline zero'

Fern depends upon [Mastodon.py](https://github.com/halcy/Mastodon.py), and is tested on python 2.7 (though it ought to work on python 3 as well).

## Installation

```
	pip install Mastodon.py
	sudo make install
```

## Philosophy

Fern comes out of some discussions on the fediverse about how user interface design influences behavior & how certain kinds of norms developed around reading whole threads in usenet because of the design of news clients. The UI of fern is an experiment in trying to encourage users to read entire threads, read their entire timeline, and treat the fediverse more like a medium for serious discussion (i.e., to de-twitterize the fediverse's culture with regard to sealioning).

It also tries to fill in a gap between command-line based clients like tootstream (wherein it's very easy to miss part of a thread or reply to the wrong post because the user manages IDs) and heavy, push-centered experiences like the mastodon web interface (wherein automatic loading can interrupt user input, and where the timeline can quickly get large enough to slow down your whole computer). This is a niche is shares with the likes of brutaldon.

To these ends, there are a couple general rules fern follows:

* navigation and display privileges new & meaningful content
* no operations occur without user input
* local cache is used whenever possible
* commonly-used operations ought to be one or two keystrokes
* the user shouldn't need to keep anything in mind other than the message they are reading or writing

More specifically:

* favorites are not meaningful information, and are not displayed at all (although it is possible to perform them)
* boosts are treated as duplicates of the original message (i.e., they inherit the 'read' status of the original message)
* expanding a thread is a single-keystroke operation
* skipping to the next or previous unread message is a single-keystroke operation, while navigating to the next or previous message regardless of read status requires also pressing shift
* CWs' openness is toggled globally, but the content of CW'd messages is not visible in the left-hand pane -- so, it's faster to read long threads where every item is CW'd
* messages are cached locally as soon as they are fetched or posted, and search runs against the local cache
* fetching new messages requires the user to perform the fetch operation (F) or open a thread (t)
* there is only one timeline pane (the left-hand pane), and new content is placed at the top of the timeline (even in events like thread expansion, where the entire thread is prepended to the top of the timeline)

## Missing features

Fern does not supply the ability to follow, mute, or block other users. It also doesn't allow you to mute threads, edit profile information, or change the visibility of your toots. It does not perform client-side size limit checks. It does not attempt to render HTML -- it turns both links and images into raw URLs, turns `<p>` and `<br>` tags into newlines, and strips all other tags entirely.

Fern was planned to support nuanced (killfile-like) blocking and filtering, but this has not yet been implemented.
