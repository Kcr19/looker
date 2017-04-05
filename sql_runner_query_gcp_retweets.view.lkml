view: sql_runner_query_gcp_retweets {
  derived_table: {
    sql: SELECT
        created_at, text,
        MAX(retweeted_status.retweet_count) AS max_retweets,
        retweeted_status.user.screen_name
      FROM
        [rtda.tweets]
      WHERE
        text CONTAINS 'googlecloud'
      GROUP BY
        created_at,
        text,
        retweeted_status.user.screen_name
      ORDER BY
        max_retweets DESC
      LIMIT
        1000 IGNORE CASE;
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: max_retweets {
    type: number
    sql: ${TABLE}.max_retweets ;;
  }

  dimension: retweeted_status_user_screen_name {
    type: string
    sql: ${TABLE}.retweeted_status_user_screen_name ;;
  }

  set: detail {
    fields: [created_at_time, text, max_retweets, retweeted_status_user_screen_name]
  }
}
