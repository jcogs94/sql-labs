SELECT
    origin.city AS origin,
    origin.icao AS airport,
    routes.airline_id,
    destination.city AS destination,
    destination.icao AS airport
FROM
    airports AS origin
INNER JOIN
    routes
ON
    origin.id = routes.origin_id
INNER JOIN
    airports AS destination
ON
    routes.dest_id = destination.id
WHERE
    origin.city = 'New York'
AND
    destination.city = 'Paris'
;
