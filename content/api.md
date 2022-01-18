---
title: "Make The Final API"
linktitle: "API"
#description: "By Andrew Flemming"
Draft: false
type: 'page'
---

Yes, MakeTheFinal.ca has an API! (I know, finally, right?) 

The full body of content is available in JSON format, found at `https://makethefinal.ca/posts/data.json`.

Additionally, each post can be pulled individually from its own URL: `https://makethefinal.ca/posts/<POST-ID>/data.json`.

Have fun!

## Data Format:

```json
{
"count" : 167,
"date" : "2022-01-17T15:48:00-05:00",
"posts" : [
	{
    "title" : "If you want to be better, you’ve got to get as good as they are",
    "date" : "2013-03-10T23:07:00-05:00",
    "event" : "2013 Brier",
    "game" : "Final",
    "tags" : "[2013 Brier]",
    "id" : "2013-03-10-be-better",
    "url" : "https://makethefinal.ca/posts/2013-03-10-be-better/"
	},
    ...
  ]
}
```

```
| Top Level
| ----- | ------------------------------------------------------------- |
| count | Total number of posts                                         |
| date  | Date of the last change, ISO 8601 format                      |
| posts | Array of all posts                                            |


| Post
| ----- | ------------------------------------------------------------- |
| title | The quotation from Vic                                        |
| date  | Date of this post, ISO 8601 format                            |
| event | The event the post was from, may be empty                     |
| game  | The game the post was from, may be empty                      |
| tags  | Post tags, in the format: [First tag, Second tag, Third]      |
| id    | Guaranteed to be unique per post, also serves as the URL slug |
| url   | URL to the published post on https://makethefinal.ca          |
```