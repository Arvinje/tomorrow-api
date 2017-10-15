# API Endpoints

## Registration

#### Request
`POST https://tomorrowgame.com/api/v1/users`
```json
{
  "username": "sample_user",
  "character": "Cube",
  "agent": "Android/4.2 1.0"
}
```

#### Response
Status: `201`
```json
{
  "api_key": "e6d968de8c2692c4760f394a258cb23c"
}
```

The `api_key` in response have to be in `Authorization` header in all future requests.

## Visiting a hotspot

#### Request
`POST https://tomorrowgame.com/api/v1/hotspots/[HOTSPOT_ID]/visit`
```json
EMPTY BODY
```

#### Response(if it's a new hotspot)
Status: `201`
```json
EMPTY BODY
```

#### Response(if it's an already visited hotspot)
Status: `200`
```json
EMPTY BODY
```

## Getting the leaderboard

#### Request
`GET https://tomorrowgame.com/api/v1/leaderboard`
```json
EMPTY BODY
```

#### Response
Status: `200`
```json
{
  "total_hotspots": "100",
  "visited_hotspots": "12",
  "rank": "142",
  "leaderboard": [
    {
      "FirstPlayer": "1"
    },
    {
      "SecondPlayer": "2"
    },
    .
    .
    .
    {
      "10thPlayer": "10"
    }
  ]
}
```

## Getting the hotspots list

#### Request
`GET https://tomorrowgame.com/api/v1/hotspots`
```json
EMPTY BODY
```

#### Response
Status: `200`
```json
{
  "hotspots": [
    {
      "id": "1231245314",
      "name": "UTA Main Building",
      "latitude": "62.3452",
      "longitude": "142.5368",
      "visited": true,
      "description": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    },
    {
      "id": "32623435",
      "name": "Pinni B",
      "latitude": "62.3202",
      "longitude": "142.54054",
      "visited": false,
      "description": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    }
  ]
}
```

## Getting a single hotspot

#### Request
`GET https://tomorrowgame.com/api/v1/hotspots/[HOTSPOT_ID]`
```json
EMPTY BODY
```

#### Response
Status: `200`
```json
{
  "id": "1231245314",
  "name": "UTA Main Building",
  "latitude": "62.3452",
  "longitude": "142.5368",
  "visited": true,
  "description": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
}
```
