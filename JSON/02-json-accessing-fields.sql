SELECT CAST('{"name": "Postgres", "version": 14}' AS JSONB);
-- SELECT CAST('{"name": "Postgres", "version": 14}' AS JSONB) -> 'version';
-- SELECT CAST('{"name": "Postgres", "version": 14}' AS JSONB) -> 'name';
SELECT CAST('{"name": "Postgres", "version": "14.1.0", "versionInfo": {"major": 14, "minor": 1, "patch":0}}' AS JSONB);
SELECT CAST('{"name": "Postgres", "version": "14.1.0", "versionInfo": {"major": 14, "minor": 1, "patch":0}}' AS JSONB) ->
    'versionInfo' ->> 'major';
SELECT CAST('{"name": "Postgres", "version": "14.1.0", "versionInfo": {"major": 14, "minor": 1, "patch":0}}' AS JSONB) ->
    'version' AS NUMERIC;
