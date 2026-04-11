ATTACH TABLE _ UUID 'b2348be2-d028-4a37-991f-0d29d8047d35'
(
    `id` UInt32,
    `column1` String,
    `column2` String
)
ENGINE = MergeTree
ORDER BY id
SETTINGS index_granularity = 8192
