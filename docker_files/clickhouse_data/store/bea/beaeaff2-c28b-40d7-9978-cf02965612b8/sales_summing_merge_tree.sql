ATTACH TABLE _ UUID '9e84ebf4-f6ae-4711-ba92-4637f395d103'
(
    `date` Date,
    `product` String,
    `quantity` UInt32
)
ENGINE = SummingMergeTree
ORDER BY date
SETTINGS index_granularity = 8192
