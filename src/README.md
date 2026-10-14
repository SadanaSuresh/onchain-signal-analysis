# src
Source code for the on-chain signal dashboard.
Planned first (Objective 1, target 20 Nov 2026): data pipeline pulling historical on-chain data from Google BigQuery public datasets and market data from CCXT for Bitcoin and Ethereum, with 3 months of history plus a live feed (Alchemy/Infura for Ethereum, Mempool.space for Bitcoin).

- `checks/bigquery_feasibility.sql`: the two queries used for the 13 Oct 2026 data check (dataset freshness and the size of a 3-month pull). Results are in `research.md`.
