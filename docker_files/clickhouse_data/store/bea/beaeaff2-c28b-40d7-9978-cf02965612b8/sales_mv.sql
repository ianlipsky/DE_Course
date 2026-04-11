ATTACH MATERIALIZED VIEW _ UUID 'f5b38eaa-40a0-4815-81c5-d0673bc10679' TO INNER UUID '32420190-b46c-4daf-ac16-0157d155112f'
(
    `date_sale` Date,
    `product_id` UInt32,
    `total_quantity` AggregateFunction(sum, UInt32),
    `total_cost` AggregateFunction(sum, Float64)
)
ENGINE = AggregatingMergeTree
ORDER BY (date_sale, product_id)
SETTINGS index_granularity = 8192 AS
SELECT
    date_sale,
    product_id,
    sumState(quantity) AS total_quantity,
    sumState(quantity * price) AS total_cost
FROM default.sales_raw
GROUP BY
    date_sale,
    product_id
