connection: "twitter_streaming_bq"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=4.10
# NOTE: for BigQuery specific considerations

explore: tweets {}
