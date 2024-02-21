# Demo DuckDB & dbt project

This repository goes along a video tutorial you can watch [here](https://www.youtube.com/watch?v=asxGh2TrNyI&t).

This is a simple project using DuckDB & dbt. 
The repo contains two models based on the [WHO air quality dataset](https://www.who.int/data/gho/data/themes/air-pollution/who-air-quality-database) that is hosted on a public S3 bucket as a parquet file.
The `dbt` pipelines output two CSVs in `output/` folder. While the bucket is public, you would be required to setup `S3_ACCESS_KEY_ID` `S3_SECRET_ACCESS_KEY` environment variable (can be dummy values) to run the pipeline.

# Development
## Install dependencies
This project use the [dbt-duckdb](https://github.com/jwills/dbt-duckdb) adapter for DuckDB.
You can install it by doing `pip install dbt-duckdb`.
This include `dbt`, `dbt-duckdb` adapter and `duckdb`.
## Using devcontainer
There's a [devcontainer](https://code.visualstudio.com/docs/devcontainers/containers) you can use for either local developement or through GitHub Codespace.

## Running the pipeline
Inside the dbt project `/dbt_demo`, run `dbt run`
