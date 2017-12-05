//1. Query to get records.
  SELECT
      *,
      ( 6371 * acos( cos( radians(-33.50) ) * cos( radians( `lat` ) ) * cos( radians( `lng` ) - radians(151.84) ) + sin( radians(-33.50) ) * sin( radians( `lat` ) ) ) ) AS distance
  FROM `mosques`
  HAVING distance <= 75 (KM)
  ORDER BY distance ASC
// Reference Link: https://stackoverflow.com/questions/8850336/radius-of-40-kilometers-using-latitude-and-longitude
