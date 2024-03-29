SELECT round(S.LAT_N,4)
FROM station AS S
WHERE
    (
        SELECT count(Lat_N)
        FROM station
        WHERE Lat_N < S.LAT_N
    ) = (
        SELECT count(Lat_N)
        FROM station
        WHERE Lat_N > S.LAT_N
    );