---
title: "Make The Final API"
linktitle: "API"
#description: "By Andrew Flemming"
Draft: true
type: 'page'
---

# API

Yes, MakeTheFinal.ca has an API! (I know, finally, right?) 

The full body of content is available as a readonly JSON file, found at `https://makethefinal.ca/posts/data.json`.

```json
{
"count" : "167",
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

Additionally, each individual post can be found at `https://makethefinal.ca/posts/<POST-ID>/data.json`.
```json
{
    "title" : "If you want to be better, you’ve got to get as good as they are",
    "date" : "2013-03-10T23:07:00-05:00",
    "event" : "2013 Brier",
    "game" : "Final",
    "tags" : "[2013 Brier]",
    "id" : "2013-03-10-be-better",
    "url" : "https://makethefinal.ca/posts/2013-03-10-be-better/"
}
```

Data:
| Field | Contents             |
| ----- | -------------------- |
| title | The quotation        |
| date  | ISO format           |
| event |                      |
| game  |                      |
| tags  |                      |
| id    |                      |
| url   | URL to the published |

