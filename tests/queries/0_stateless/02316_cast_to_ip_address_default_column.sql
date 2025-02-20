SET cast_ipv4_ipv6_default_on_conversion_error = 1;

DROP TABLE IF EXISTS ipv4_test;
CREATE TABLE ipv4_test
(
    id UInt64,
    value String
) ENGINE=MergeTree ORDER BY id;

ALTER TABLE ipv4_test MODIFY COLUMN value IPv4 DEFAULT '';

DROP TABLE ipv4_test;

DROP TABLE IF EXISTS ipv6_test;
CREATE TABLE ipv6_test
(
    id UInt64,
    value String
) ENGINE=MergeTree ORDER BY id;

ALTER TABLE ipv6_test MODIFY COLUMN value IPv4 DEFAULT '';
SELECT * FROM ipv6_test;

DROP TABLE ipv6_test;
