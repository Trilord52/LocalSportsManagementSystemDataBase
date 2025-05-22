SELECT
    first_name,
    last_name,
    dob,
    TIMESTAMPDIFF(YEAR, dob, CURDATE()) AS age
FROM Players;