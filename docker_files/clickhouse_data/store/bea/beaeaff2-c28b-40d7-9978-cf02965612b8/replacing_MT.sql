ATTACH TABLE _ UUID '2aad8959-db71-408c-9455-edf89983bb3a'
(
    `key` Int64,
    `event_name` String,
    `eventTime` DateTime
)
ENGINE = ReplacingMergeTree
ORDER BY key
SETTINGS index_granularity = 8192
