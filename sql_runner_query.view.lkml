view: sql_runner_query {
  derived_table: {
    sql: SELECT
        text,
        MAX(retweeted_status.retweet_count) AS max_retweets,
        retweeted_status.user.screen_name
      FROM
        [rtda.tweets]
      WHERE
        text CONTAINS 'bigdata'
      GROUP BY
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
    fields: [text, max_retweets, retweeted_status_user_screen_name]
  }
}
