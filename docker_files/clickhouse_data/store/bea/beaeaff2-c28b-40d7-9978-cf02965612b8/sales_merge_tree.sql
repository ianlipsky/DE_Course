ATTACH TABLE _ UUID '40ff7489-d6e6-45c5-987c-9eacb2ad1692'
(
    `date` Date,
    `product` String,
    `quantity` UInt32,
    `price` Float32,
    `order_id` UInt32
)
ENGINE = MergeTree
ORDER BY date
SETTINGS index_granularity = 8192
