# src

Code for the on-chain signal dashboard.

First up (Objective 1, by 20 Nov 2026): the data pipeline. It pulls on-chain
history from the Google BigQuery public datasets and price data through CCXT
for Bitcoin and Ethereum, 3 months of history plus a live feed (Alchemy/Infura
for Ethereum, Mempool.space for Bitcoin).

- `checks/bigquery_feasibility.sql`: the two queries I ran on 13 Oct 2026 to
  check the data is up to date and how big a 3-month pull would be. Results
  are in `research.md`.
