DROP TABLE IF EXISTS "wikipedia";

CREATE TABLE "wikipedia" AS
SELECT
  /* Time Spec :-) */
  date_trunc('minute', "__time") AS "__time", /* Rollup queryGranularity: minute */

  /* Dimensions */
  "sometimeLater",
  "channel",
  "cityName",
  "comment",
  "commentLength",
  "commentLengthStr",
  "countryIsoCode",
  "countryName",
  "deltaBucket100",
  "isAnonymous",
  "isMinor",
  "isNew",
  "isRobot",
  "isUnpatrolled",
  "metroCode",
  "namespace",
  "page",
  "regionIsoCode",
  "regionName",
  "user",
  "userChars",

  /* Measures */
  COUNT(*) AS "count",
  SUM("added") AS "added",
  SUM("deleted") AS "deleted",
  SUM("delta") AS "delta",
  MIN("delta") AS "min_delta",
  MAX("delta") AS "max_delta",
  SUM("deltaByTen") AS "deltaByTen"

FROM "wikipedia_raw"
GROUP BY
  date_trunc('minute', "__time"),
  "sometimeLater",
  "channel",
  "cityName",
  "comment",
  "commentLength",
  "commentLengthStr",
  "countryIsoCode",
  "countryName",
  "deltaBucket100",
  "isAnonymous",
  "isMinor",
  "isNew",
  "isRobot",
  "isUnpatrolled",
  "metroCode",
  "namespace",
  "page",
  "regionIsoCode",
  "regionName",
  "user",
  "userChars";

