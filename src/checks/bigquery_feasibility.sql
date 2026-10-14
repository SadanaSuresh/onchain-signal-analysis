-- Data feasibility check, run in the BigQuery sandbox on 13 Oct 2026.
-- Results are logged in research.md (2026-10-13 entry).

-- 1) Are the public datasets current?  (run; result: BTC 22:06 UTC, ETH 22:33 UTC)
SELECT 'bitcoin' AS chain, MAX(timestamp) AS latest_block_utc
FROM `bigquery-public-data.crypto_bitcoin.blocks`
UNION ALL
SELECT 'ethereum', MAX(timestamp)
FROM `bigquery-public-data.crypto_ethereum.blocks`;

-- 2) Size of a 3-month pull of Ethereum token transfers.
--    Dry run only (not run); the editor estimated 46.93 GB.
SELECT block_timestamp, token_address, from_address, to_address, value
FROM `bigquery-public-data.crypto_ethereum.token_transfers`
WHERE block_timestamp >= TIMESTAMP('2026-07-13')
  AND block_timestamp < TIMESTAMP('2026-10-13');
