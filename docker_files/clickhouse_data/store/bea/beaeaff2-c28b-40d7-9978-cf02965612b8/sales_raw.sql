ATTACH TABLE _ UUID 'f345072c-c1ec-4891-932c-1218714ccc75'
(
    `date_sale` Date,
    `product_id` UInt32,
    `quantity` UInt32,
    `price` Float32
)
ENGINE = MergeTree
ORDER BY date_sale
SETTINGS index_granularity = 8192
