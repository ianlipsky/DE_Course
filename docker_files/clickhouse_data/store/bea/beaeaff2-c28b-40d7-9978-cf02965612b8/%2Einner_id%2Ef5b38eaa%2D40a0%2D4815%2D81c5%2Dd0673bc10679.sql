ATTACH TABLE _ UUID '32420190-b46c-4daf-ac16-0157d155112f'
(
    `date_sale` Date,
    `product_id` UInt32,
    `total_quantity` AggregateFunction(sum, UInt32),
    `total_cost` AggregateFunction(sum, Float64)
)
ENGINE = AggregatingMergeTree
ORDER BY (date_sale, product_id)
SETTINGS index_granularity = 8192
