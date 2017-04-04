view: tweets {
  sql_table_name: rtda.tweets ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: contributors {
    type: string
    sql: ${TABLE}.contributors ;;
  }

  dimension: coordinates__coordinates {
    type: number
    sql: ${TABLE}.coordinates.coordinates ;;
    fanout_on: "coordinates.coordinates"
  }

  dimension: coordinates__type {
    type: string
    sql: ${TABLE}.coordinates.type ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: entities__hashtags__indices {
    type: number
    sql: ${TABLE}.entities.hashtags.indices ;;
    fanout_on: "entities.hashtags.indices"
  }

  dimension: entities__hashtags__text {
    type: string
    sql: ${TABLE}.entities.hashtags.text ;;
    fanout_on: "entities.hashtags"
  }

  dimension: entities__media__display_url {
    type: string
    sql: ${TABLE}.entities.media.display_url ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__expanded_url {
    type: string
    sql: ${TABLE}.entities.media.expanded_url ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__id {
    type: number
    sql: ${TABLE}.entities.media.id ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__id_str {
    type: string
    sql: ${TABLE}.entities.media.id_str ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__indices {
    type: number
    sql: ${TABLE}.entities.media.indices ;;
    fanout_on: "entities.media.indices"
  }

  dimension: entities__media__media_url {
    type: string
    sql: ${TABLE}.entities.media.media_url ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__media_url_https {
    type: string
    sql: ${TABLE}.entities.media.media_url_https ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__sizes__large__h {
    type: number
    sql: ${TABLE}.entities.media.sizes.large.h ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__sizes__large__resize {
    type: string
    sql: ${TABLE}.entities.media.sizes.large.resize ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__sizes__large__w {
    type: number
    sql: ${TABLE}.entities.media.sizes.large.w ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__sizes__medium__h {
    type: number
    sql: ${TABLE}.entities.media.sizes.medium.h ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__sizes__medium__resize {
    type: string
    sql: ${TABLE}.entities.media.sizes.medium.resize ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__sizes__medium__w {
    type: number
    sql: ${TABLE}.entities.media.sizes.medium.w ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__sizes__small__h {
    type: number
    sql: ${TABLE}.entities.media.sizes.small.h ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__sizes__small__resize {
    type: string
    sql: ${TABLE}.entities.media.sizes.small.resize ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__sizes__small__w {
    type: number
    sql: ${TABLE}.entities.media.sizes.small.w ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__sizes__thumb__h {
    type: number
    sql: ${TABLE}.entities.media.sizes.thumb.h ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__sizes__thumb__resize {
    type: string
    sql: ${TABLE}.entities.media.sizes.thumb.resize ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__sizes__thumb__w {
    type: number
    sql: ${TABLE}.entities.media.sizes.thumb.w ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__source_status_id {
    type: number
    sql: ${TABLE}.entities.media.source_status_id ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__source_status_id_str {
    type: string
    sql: ${TABLE}.entities.media.source_status_id_str ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__type {
    type: string
    sql: ${TABLE}.entities.media.type ;;
    fanout_on: "entities.media"
  }

  dimension: entities__media__url {
    type: string
    sql: ${TABLE}.entities.media.url ;;
    fanout_on: "entities.media"
  }

  dimension: entities__symbols__indices {
    type: number
    sql: ${TABLE}.entities.symbols.indices ;;
    fanout_on: "entities.symbols.indices"
  }

  dimension: entities__symbols__text {
    type: string
    sql: ${TABLE}.entities.symbols.text ;;
    fanout_on: "entities.symbols"
  }

  dimension: entities__trends {
    type: string
    sql: ${TABLE}.entities.trends ;;
    fanout_on: "entities.trends"
  }

  dimension: entities__urls__display_url {
    type: string
    sql: ${TABLE}.entities.urls.display_url ;;
    fanout_on: "entities.urls"
  }

  dimension: entities__urls__expanded_url {
    type: string
    sql: ${TABLE}.entities.urls.expanded_url ;;
    fanout_on: "entities.urls"
  }

  dimension: entities__urls__indices {
    type: number
    sql: ${TABLE}.entities.urls.indices ;;
    fanout_on: "entities.urls.indices"
  }

  dimension: entities__urls__url {
    type: string
    sql: ${TABLE}.entities.urls.url ;;
    fanout_on: "entities.urls"
  }

  dimension: entities__user_mentions__id {
    type: number
    sql: ${TABLE}.entities.user_mentions.id ;;
    fanout_on: "entities.user_mentions"
  }

  dimension: entities__user_mentions__id_str {
    type: string
    sql: ${TABLE}.entities.user_mentions.id_str ;;
    fanout_on: "entities.user_mentions"
  }

  dimension: entities__user_mentions__indices {
    type: number
    sql: ${TABLE}.entities.user_mentions.indices ;;
    fanout_on: "entities.user_mentions.indices"
  }

  dimension: entities__user_mentions__name {
    type: string
    sql: ${TABLE}.entities.user_mentions.name ;;
    fanout_on: "entities.user_mentions"
  }

  dimension: entities__user_mentions__screen_name {
    type: string
    sql: ${TABLE}.entities.user_mentions.screen_name ;;
    fanout_on: "entities.user_mentions"
  }

  dimension: extended_entities__media__display_url {
    type: string
    sql: ${TABLE}.extended_entities.media.display_url ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__expanded_url {
    type: string
    sql: ${TABLE}.extended_entities.media.expanded_url ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__id {
    type: number
    sql: ${TABLE}.extended_entities.media.id ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__id_str {
    type: string
    sql: ${TABLE}.extended_entities.media.id_str ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__indices {
    type: number
    sql: ${TABLE}.extended_entities.media.indices ;;
    fanout_on: "extended_entities.media.indices"
  }

  dimension: extended_entities__media__media_url {
    type: string
    sql: ${TABLE}.extended_entities.media.media_url ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__media_url_https {
    type: string
    sql: ${TABLE}.extended_entities.media.media_url_https ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__sizes__large__h {
    type: number
    sql: ${TABLE}.extended_entities.media.sizes.large.h ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__sizes__large__resize {
    type: string
    sql: ${TABLE}.extended_entities.media.sizes.large.resize ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__sizes__large__w {
    type: number
    sql: ${TABLE}.extended_entities.media.sizes.large.w ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__sizes__medium__h {
    type: number
    sql: ${TABLE}.extended_entities.media.sizes.medium.h ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__sizes__medium__resize {
    type: string
    sql: ${TABLE}.extended_entities.media.sizes.medium.resize ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__sizes__medium__w {
    type: number
    sql: ${TABLE}.extended_entities.media.sizes.medium.w ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__sizes__small__h {
    type: number
    sql: ${TABLE}.extended_entities.media.sizes.small.h ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__sizes__small__resize {
    type: string
    sql: ${TABLE}.extended_entities.media.sizes.small.resize ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__sizes__small__w {
    type: number
    sql: ${TABLE}.extended_entities.media.sizes.small.w ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__sizes__thumb__h {
    type: number
    sql: ${TABLE}.extended_entities.media.sizes.thumb.h ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__sizes__thumb__resize {
    type: string
    sql: ${TABLE}.extended_entities.media.sizes.thumb.resize ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__sizes__thumb__w {
    type: number
    sql: ${TABLE}.extended_entities.media.sizes.thumb.w ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__source_status_id {
    type: number
    sql: ${TABLE}.extended_entities.media.source_status_id ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__source_status_id_str {
    type: string
    sql: ${TABLE}.extended_entities.media.source_status_id_str ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__type {
    type: string
    sql: ${TABLE}.extended_entities.media.type ;;
    fanout_on: "extended_entities.media"
  }

  dimension: extended_entities__media__url {
    type: string
    sql: ${TABLE}.extended_entities.media.url ;;
    fanout_on: "extended_entities.media"
  }

  dimension: favorite_count {
    type: number
    sql: ${TABLE}.favorite_count ;;
  }

  dimension: favorited {
    type: yesno
    sql: ${TABLE}.favorited ;;
  }

  dimension: filter_level {
    type: string
    sql: ${TABLE}.filter_level ;;
  }

  dimension: geo__coordinates {
    type: number
    sql: ${TABLE}.geo.coordinates ;;
    fanout_on: "geo.coordinates"
  }

  dimension: geo__type {
    type: string
    sql: ${TABLE}.geo.type ;;
  }

  dimension: id_str {
    type: string
    sql: ${TABLE}.id_str ;;
  }

  dimension: in_reply_to_screen_name {
    type: string
    sql: ${TABLE}.in_reply_to_screen_name ;;
  }

  dimension: in_reply_to_status_id {
    type: number
    sql: ${TABLE}.in_reply_to_status_id ;;
  }

  dimension: in_reply_to_status_id_str {
    type: string
    sql: ${TABLE}.in_reply_to_status_id_str ;;
  }

  dimension: in_reply_to_user_id {
    type: number
    sql: ${TABLE}.in_reply_to_user_id ;;
  }

  dimension: in_reply_to_user_id_str {
    type: string
    sql: ${TABLE}.in_reply_to_user_id_str ;;
  }

  dimension: lang {
    type: string
    sql: ${TABLE}.lang ;;
  }

  dimension: place__attributes {
    type: string
    sql: ${TABLE}.place.attributes ;;
  }

  dimension: place__bounding_box__coordinates {
    type: number
    sql: ${TABLE}.place.bounding_box.coordinates ;;
    fanout_on: "place.bounding_box.coordinates"
  }

  dimension: place__bounding_box__type {
    type: string
    sql: ${TABLE}.place.bounding_box.type ;;
  }

  dimension: place__country {
   map_layer_name: countries
    sql: ${TABLE}.place.country ;;
  }

  dimension: place__country_code {
    map_layer_name: countries
    sql: ${TABLE}.place.country_code ;;
  }

  dimension: place__full_name {
    type: string
    sql: ${TABLE}.place.full_name ;;
  }

  dimension: place__id {
    type: string
    sql: ${TABLE}.place.id ;;
  }

  dimension: place__name {
    type: string
    sql: ${TABLE}.place.name ;;
  }

  dimension: place__place_type {
    type: string
    sql: ${TABLE}.place.place_type ;;
  }

  dimension: place__url {
    type: string
    sql: ${TABLE}.place.url ;;
  }

  dimension: possibly_sensitive {
    type: yesno
    sql: ${TABLE}.possibly_sensitive ;;
  }

  dimension: retweet_count {
    type: number
    sql: ${TABLE}.retweet_count ;;
  }

  dimension: retweeted {
    type: yesno
    sql: ${TABLE}.retweeted ;;
  }

  dimension: retweeted_status__contributors {
    type: string
    sql: ${TABLE}.retweeted_status.contributors ;;
  }

  dimension: retweeted_status__coordinates__coordinates {
    type: number
    sql: ${TABLE}.retweeted_status.coordinates.coordinates ;;
    fanout_on: "retweeted_status.coordinates.coordinates"
  }

  dimension: retweeted_status__coordinates__type {
    type: string
    sql: ${TABLE}.retweeted_status.coordinates.type ;;
  }

  dimension_group: retweeted_status__created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.retweeted_status.created_at ;;
  }

  dimension: retweeted_status__entities__hashtags__indices {
    type: number
    sql: ${TABLE}.retweeted_status.entities.hashtags.indices ;;
    fanout_on: "retweeted_status.entities.hashtags.indices"
  }

  dimension: retweeted_status__entities__hashtags__text {
    type: string
    sql: ${TABLE}.retweeted_status.entities.hashtags.text ;;
    fanout_on: "retweeted_status.entities.hashtags"
  }

  dimension: retweeted_status__entities__media__display_url {
    type: string
    sql: ${TABLE}.retweeted_status.entities.media.display_url ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__expanded_url {
    type: string
    sql: ${TABLE}.retweeted_status.entities.media.expanded_url ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__id {
    type: number
    sql: ${TABLE}.retweeted_status.entities.media.id ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__id_str {
    type: string
    sql: ${TABLE}.retweeted_status.entities.media.id_str ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__indices {
    type: number
    sql: ${TABLE}.retweeted_status.entities.media.indices ;;
    fanout_on: "retweeted_status.entities.media.indices"
  }

  dimension: retweeted_status__entities__media__media_url {
    type: string
    sql: ${TABLE}.retweeted_status.entities.media.media_url ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__media_url_https {
    type: string
    sql: ${TABLE}.retweeted_status.entities.media.media_url_https ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__sizes__large__h {
    type: number
    sql: ${TABLE}.retweeted_status.entities.media.sizes.large.h ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__sizes__large__resize {
    type: string
    sql: ${TABLE}.retweeted_status.entities.media.sizes.large.resize ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__sizes__large__w {
    type: number
    sql: ${TABLE}.retweeted_status.entities.media.sizes.large.w ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__sizes__medium__h {
    type: number
    sql: ${TABLE}.retweeted_status.entities.media.sizes.medium.h ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__sizes__medium__resize {
    type: string
    sql: ${TABLE}.retweeted_status.entities.media.sizes.medium.resize ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__sizes__medium__w {
    type: number
    sql: ${TABLE}.retweeted_status.entities.media.sizes.medium.w ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__sizes__small__h {
    type: number
    sql: ${TABLE}.retweeted_status.entities.media.sizes.small.h ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__sizes__small__resize {
    type: string
    sql: ${TABLE}.retweeted_status.entities.media.sizes.small.resize ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__sizes__small__w {
    type: number
    sql: ${TABLE}.retweeted_status.entities.media.sizes.small.w ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__sizes__thumb__h {
    type: number
    sql: ${TABLE}.retweeted_status.entities.media.sizes.thumb.h ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__sizes__thumb__resize {
    type: string
    sql: ${TABLE}.retweeted_status.entities.media.sizes.thumb.resize ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__sizes__thumb__w {
    type: number
    sql: ${TABLE}.retweeted_status.entities.media.sizes.thumb.w ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__source_status_id {
    type: number
    sql: ${TABLE}.retweeted_status.entities.media.source_status_id ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__source_status_id_str {
    type: string
    sql: ${TABLE}.retweeted_status.entities.media.source_status_id_str ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__type {
    type: string
    sql: ${TABLE}.retweeted_status.entities.media.type ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__media__url {
    type: string
    sql: ${TABLE}.retweeted_status.entities.media.url ;;
    fanout_on: "retweeted_status.entities.media"
  }

  dimension: retweeted_status__entities__symbols__indices {
    type: number
    sql: ${TABLE}.retweeted_status.entities.symbols.indices ;;
    fanout_on: "retweeted_status.entities.symbols.indices"
  }

  dimension: retweeted_status__entities__symbols__text {
    type: string
    sql: ${TABLE}.retweeted_status.entities.symbols.text ;;
    fanout_on: "retweeted_status.entities.symbols"
  }

  dimension: retweeted_status__entities__trends {
    type: string
    sql: ${TABLE}.retweeted_status.entities.trends ;;
    fanout_on: "retweeted_status.entities.trends"
  }

  dimension: retweeted_status__entities__urls__display_url {
    type: string
    sql: ${TABLE}.retweeted_status.entities.urls.display_url ;;
    fanout_on: "retweeted_status.entities.urls"
  }

  dimension: retweeted_status__entities__urls__expanded_url {
    type: string
    sql: ${TABLE}.retweeted_status.entities.urls.expanded_url ;;
    fanout_on: "retweeted_status.entities.urls"
  }

  dimension: retweeted_status__entities__urls__indices {
    type: number
    sql: ${TABLE}.retweeted_status.entities.urls.indices ;;
    fanout_on: "retweeted_status.entities.urls.indices"
  }

  dimension: retweeted_status__entities__urls__url {
    type: string
    sql: ${TABLE}.retweeted_status.entities.urls.url ;;
    fanout_on: "retweeted_status.entities.urls"
  }

  dimension: retweeted_status__entities__user_mentions__id {
    type: number
    sql: ${TABLE}.retweeted_status.entities.user_mentions.id ;;
    fanout_on: "retweeted_status.entities.user_mentions"
  }

  dimension: retweeted_status__entities__user_mentions__id_str {
    type: string
    sql: ${TABLE}.retweeted_status.entities.user_mentions.id_str ;;
    fanout_on: "retweeted_status.entities.user_mentions"
  }

  dimension: retweeted_status__entities__user_mentions__indices {
    type: number
    sql: ${TABLE}.retweeted_status.entities.user_mentions.indices ;;
    fanout_on: "retweeted_status.entities.user_mentions.indices"
  }

  dimension: retweeted_status__entities__user_mentions__name {
    type: string
    sql: ${TABLE}.retweeted_status.entities.user_mentions.name ;;
    fanout_on: "retweeted_status.entities.user_mentions"
  }

  dimension: retweeted_status__entities__user_mentions__screen_name {
    type: string
    sql: ${TABLE}.retweeted_status.entities.user_mentions.screen_name ;;
    fanout_on: "retweeted_status.entities.user_mentions"
  }

  dimension: retweeted_status__extended_entities__media__display_url {
    type: string
    sql: ${TABLE}.retweeted_status.extended_entities.media.display_url ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__expanded_url {
    type: string
    sql: ${TABLE}.retweeted_status.extended_entities.media.expanded_url ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__id {
    type: number
    sql: ${TABLE}.retweeted_status.extended_entities.media.id ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__id_str {
    type: string
    sql: ${TABLE}.retweeted_status.extended_entities.media.id_str ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__indices {
    type: number
    sql: ${TABLE}.retweeted_status.extended_entities.media.indices ;;
    fanout_on: "retweeted_status.extended_entities.media.indices"
  }

  dimension: retweeted_status__extended_entities__media__media_url {
    type: string
    sql: ${TABLE}.retweeted_status.extended_entities.media.media_url ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__media_url_https {
    type: string
    sql: ${TABLE}.retweeted_status.extended_entities.media.media_url_https ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__sizes__large__h {
    type: number
    sql: ${TABLE}.retweeted_status.extended_entities.media.sizes.large.h ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__sizes__large__resize {
    type: string
    sql: ${TABLE}.retweeted_status.extended_entities.media.sizes.large.resize ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__sizes__large__w {
    type: number
    sql: ${TABLE}.retweeted_status.extended_entities.media.sizes.large.w ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__sizes__medium__h {
    type: number
    sql: ${TABLE}.retweeted_status.extended_entities.media.sizes.medium.h ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__sizes__medium__resize {
    type: string
    sql: ${TABLE}.retweeted_status.extended_entities.media.sizes.medium.resize ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__sizes__medium__w {
    type: number
    sql: ${TABLE}.retweeted_status.extended_entities.media.sizes.medium.w ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__sizes__small__h {
    type: number
    sql: ${TABLE}.retweeted_status.extended_entities.media.sizes.small.h ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__sizes__small__resize {
    type: string
    sql: ${TABLE}.retweeted_status.extended_entities.media.sizes.small.resize ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__sizes__small__w {
    type: number
    sql: ${TABLE}.retweeted_status.extended_entities.media.sizes.small.w ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__sizes__thumb__h {
    type: number
    sql: ${TABLE}.retweeted_status.extended_entities.media.sizes.thumb.h ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__sizes__thumb__resize {
    type: string
    sql: ${TABLE}.retweeted_status.extended_entities.media.sizes.thumb.resize ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__sizes__thumb__w {
    type: number
    sql: ${TABLE}.retweeted_status.extended_entities.media.sizes.thumb.w ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__source_status_id {
    type: number
    sql: ${TABLE}.retweeted_status.extended_entities.media.source_status_id ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__source_status_id_str {
    type: string
    sql: ${TABLE}.retweeted_status.extended_entities.media.source_status_id_str ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__type {
    type: string
    sql: ${TABLE}.retweeted_status.extended_entities.media.type ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__extended_entities__media__url {
    type: string
    sql: ${TABLE}.retweeted_status.extended_entities.media.url ;;
    fanout_on: "retweeted_status.extended_entities.media"
  }

  dimension: retweeted_status__favorite_count {
    type: number
    sql: ${TABLE}.retweeted_status.favorite_count ;;
  }

  dimension: retweeted_status__favorited {
    type: yesno
    sql: ${TABLE}.retweeted_status.favorited ;;
  }

  dimension: retweeted_status__filter_level {
    type: string
    sql: ${TABLE}.retweeted_status.filter_level ;;
  }

  dimension: retweeted_status__geo__coordinates {
    type: number
    sql: ${TABLE}.retweeted_status.geo.coordinates ;;
    fanout_on: "retweeted_status.geo.coordinates"
  }

  dimension: retweeted_status__geo__pl {
    type: number
    sql: ${TABLE}.retweeted_status.geo.pl ;;
    fanout_on: "retweeted_status.geo.pl"
  }

  dimension: retweeted_status__geo__type {
    type: string
    sql: ${TABLE}.retweeted_status.geo.type ;;
  }

  dimension: retweeted_status__id {
    type: number
    sql: ${TABLE}.retweeted_status.id ;;
  }

  dimension: retweeted_status__id_str {
    type: string
    sql: ${TABLE}.retweeted_status.id_str ;;
  }

  dimension: retweeted_status__in_reply_to_screen_name {
    type: string
    sql: ${TABLE}.retweeted_status.in_reply_to_screen_name ;;
  }

  dimension: retweeted_status__in_reply_to_status_id {
    type: number
    sql: ${TABLE}.retweeted_status.in_reply_to_status_id ;;
  }

  dimension: retweeted_status__in_reply_to_status_id_str {
    type: string
    sql: ${TABLE}.retweeted_status.in_reply_to_status_id_str ;;
  }

  dimension: retweeted_status__in_reply_to_user_id {
    type: number
    sql: ${TABLE}.retweeted_status.in_reply_to_user_id ;;
  }

  dimension: retweeted_status__in_reply_to_user_id_str {
    type: string
    sql: ${TABLE}.retweeted_status.in_reply_to_user_id_str ;;
  }

  dimension: retweeted_status__lang {
    type: string
    sql: ${TABLE}.retweeted_status.lang ;;
  }

  dimension: retweeted_status__place__attributes {
    type: string
    sql: ${TABLE}.retweeted_status.place.attributes ;;
  }

  dimension: retweeted_status__place__bounding_box__coordinates {
    type: number
    sql: ${TABLE}.retweeted_status.place.bounding_box.coordinates ;;
    fanout_on: "retweeted_status.place.bounding_box.coordinates"
  }

  dimension: retweeted_status__place__bounding_box__type {
    type: string
    sql: ${TABLE}.retweeted_status.place.bounding_box.type ;;
  }

  dimension: retweeted_status__place__country {
    type: string
    sql: ${TABLE}.retweeted_status.place.country ;;
  }

  dimension: retweeted_status__place__country_code {
    type: string
    sql: ${TABLE}.retweeted_status.place.country_code ;;
  }

  dimension: retweeted_status__place__full_name {
    type: string
    sql: ${TABLE}.retweeted_status.place.full_name ;;
  }

  dimension: retweeted_status__place__id {
    type: string
    sql: ${TABLE}.retweeted_status.place.id ;;
  }

  dimension: retweeted_status__place__name {
    type: string
    sql: ${TABLE}.retweeted_status.place.name ;;
  }

  dimension: retweeted_status__place__place_type {
    type: string
    sql: ${TABLE}.retweeted_status.place.place_type ;;
  }

  dimension: retweeted_status__place__url {
    type: string
    sql: ${TABLE}.retweeted_status.place.url ;;
  }

  dimension: retweeted_status__possibly_sensitive {
    type: yesno
    sql: ${TABLE}.retweeted_status.possibly_sensitive ;;
  }

  dimension: retweeted_status__retweet_count {
    type: number
    sql: ${TABLE}.retweeted_status.retweet_count ;;
  }

  dimension: retweeted_status__retweeted {
    type: yesno
    sql: ${TABLE}.retweeted_status.retweeted ;;
  }

  dimension: retweeted_status__scopes__followers {
    type: yesno
    sql: ${TABLE}.retweeted_status.scopes.followers ;;
  }

  dimension: retweeted_status__source {
    type: string
    sql: ${TABLE}.retweeted_status.source ;;
  }

  dimension: retweeted_status__text {
    type: string
    sql: ${TABLE}.retweeted_status.text ;;
  }

  dimension: retweeted_status__timestamp_ms {
    type: string
    sql: ${TABLE}.retweeted_status.timestamp_ms ;;
  }

  dimension: retweeted_status__truncated {
    type: yesno
    sql: ${TABLE}.retweeted_status.truncated ;;
  }

  dimension: retweeted_status__user__contributors_enabled {
    type: yesno
    sql: ${TABLE}.retweeted_status.user.contributors_enabled ;;
  }

  dimension_group: retweeted_status__user__created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.retweeted_status.user.created_at ;;
  }

  dimension: retweeted_status__user__default_profile {
    type: yesno
    sql: ${TABLE}.retweeted_status.user.default_profile ;;
  }

  dimension: retweeted_status__user__default_profile_image {
    type: yesno
    sql: ${TABLE}.retweeted_status.user.default_profile_image ;;
  }

  dimension: retweeted_status__user__description {
    type: string
    sql: ${TABLE}.retweeted_status.user.description ;;
  }

  dimension: retweeted_status__user__favourites_count {
    type: number
    sql: ${TABLE}.retweeted_status.user.favourites_count ;;
  }

  dimension: retweeted_status__user__follow_request_sent {
    type: string
    sql: ${TABLE}.retweeted_status.user.follow_request_sent ;;
  }

  dimension: retweeted_status__user__followers_count {
    type: number
    sql: ${TABLE}.retweeted_status.user.followers_count ;;
  }

  dimension: retweeted_status__user__following {
    type: string
    sql: ${TABLE}.retweeted_status.user.following ;;
  }

  dimension: retweeted_status__user__friends_count {
    type: number
    sql: ${TABLE}.retweeted_status.user.friends_count ;;
  }

  dimension: retweeted_status__user__geo_enabled {
    type: yesno
    sql: ${TABLE}.retweeted_status.user.geo_enabled ;;
  }

  dimension: retweeted_status__user__id {
    type: number
    sql: ${TABLE}.retweeted_status.user.id ;;
  }

  dimension: retweeted_status__user__id_str {
    type: string
    sql: ${TABLE}.retweeted_status.user.id_str ;;
  }

  dimension: retweeted_status__user__is_translator {
    type: yesno
    sql: ${TABLE}.retweeted_status.user.is_translator ;;
  }

  dimension: retweeted_status__user__lang {
    type: string
    sql: ${TABLE}.retweeted_status.user.lang ;;
  }

  dimension: retweeted_status__user__listed_count {
    type: number
    sql: ${TABLE}.retweeted_status.user.listed_count ;;
  }

  dimension: retweeted_status__user__location {
    type: string
    sql: ${TABLE}.retweeted_status.user.location ;;
  }

  dimension: retweeted_status__user__name {
    type: string
    sql: ${TABLE}.retweeted_status.user.name ;;
  }

  dimension: retweeted_status__user__notifications {
    type: string
    sql: ${TABLE}.retweeted_status.user.notifications ;;
  }

  dimension: retweeted_status__user__profile_background_color {
    type: string
    sql: ${TABLE}.retweeted_status.user.profile_background_color ;;
  }

  dimension: retweeted_status__user__profile_background_image_url {
    type: string
    sql: ${TABLE}.retweeted_status.user.profile_background_image_url ;;
  }

  dimension: retweeted_status__user__profile_background_image_url_https {
    type: string
    sql: ${TABLE}.retweeted_status.user.profile_background_image_url_https ;;
  }

  dimension: retweeted_status__user__profile_background_tile {
    type: yesno
    sql: ${TABLE}.retweeted_status.user.profile_background_tile ;;
  }

  dimension: retweeted_status__user__profile_banner_url {
    type: string
    sql: ${TABLE}.retweeted_status.user.profile_banner_url ;;
  }

  dimension: retweeted_status__user__profile_image_url {
    type: string
    sql: ${TABLE}.retweeted_status.user.profile_image_url ;;
  }

  dimension: retweeted_status__user__profile_image_url_https {
    type: string
    sql: ${TABLE}.retweeted_status.user.profile_image_url_https ;;
  }

  dimension: retweeted_status__user__profile_link_color {
    type: string
    sql: ${TABLE}.retweeted_status.user.profile_link_color ;;
  }

  dimension: retweeted_status__user__profile_sidebar_border_color {
    type: string
    sql: ${TABLE}.retweeted_status.user.profile_sidebar_border_color ;;
  }

  dimension: retweeted_status__user__profile_sidebar_fill_color {
    type: string
    sql: ${TABLE}.retweeted_status.user.profile_sidebar_fill_color ;;
  }

  dimension: retweeted_status__user__profile_text_color {
    type: string
    sql: ${TABLE}.retweeted_status.user.profile_text_color ;;
  }

  dimension: retweeted_status__user__profile_use_background_image {
    type: yesno
    sql: ${TABLE}.retweeted_status.user.profile_use_background_image ;;
  }

  dimension: retweeted_status__user__protected {
    type: yesno
    sql: ${TABLE}.retweeted_status.user.protected ;;
  }

  dimension: retweeted_status__user__screen_name {
    type: string
    sql: ${TABLE}.retweeted_status.user.screen_name ;;
  }

  dimension: retweeted_status__user__statuses_count {
    type: number
    sql: ${TABLE}.retweeted_status.user.statuses_count ;;
  }

  dimension: retweeted_status__user__time_zone {
    type: string
    sql: ${TABLE}.retweeted_status.user.time_zone ;;
  }

  dimension: retweeted_status__user__url {
    type: string
    sql: ${TABLE}.retweeted_status.user.url ;;
  }

  dimension: retweeted_status__user__utc_offset {
    type: number
    sql: ${TABLE}.retweeted_status.user.utc_offset ;;
  }

  dimension: retweeted_status__user__verified {
    type: yesno
    sql: ${TABLE}.retweeted_status.user.verified ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: timestamp_ms {
    type: string
    sql: ${TABLE}.timestamp_ms ;;
  }

  dimension: truncated {
    type: yesno
    sql: ${TABLE}.truncated ;;
  }

  dimension: user__contributors_enabled {
    type: yesno
    sql: ${TABLE}.user.contributors_enabled ;;
  }

  dimension_group: user__created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.user.created_at ;;
  }

  dimension: user__default_profile {
    type: yesno
    sql: ${TABLE}.user.default_profile ;;
  }

  dimension: user__default_profile_image {
    type: yesno
    sql: ${TABLE}.user.default_profile_image ;;
  }

  dimension: user__description {
    type: string
    sql: ${TABLE}.user.description ;;
  }

  dimension: user__favourites_count {
    type: number
    sql: ${TABLE}.user.favourites_count ;;
  }

  dimension: user__follow_request_sent {
    type: string
    sql: ${TABLE}.user.follow_request_sent ;;
  }

  dimension: user__followers_count {
    type: number
    sql: ${TABLE}.user.followers_count ;;
  }

  dimension: user__following {
    type: string
    sql: ${TABLE}.user.following ;;
  }

  dimension: user__friends_count {
    type: number
    sql: ${TABLE}.user.friends_count ;;
  }

  dimension: user__geo_enabled {
    type: yesno
    sql: ${TABLE}.user.geo_enabled ;;
  }

  dimension: user__id {
    type: number
    sql: ${TABLE}.user.id ;;
  }

  dimension: user__id_str {
    type: string
    sql: ${TABLE}.user.id_str ;;
  }

  dimension: user__is_translator {
    type: yesno
    sql: ${TABLE}.user.is_translator ;;
  }

  dimension: user__lang {
    type: string
    sql: ${TABLE}.user.lang ;;
  }

  dimension: user__listed_count {
    type: number
    sql: ${TABLE}.user.listed_count ;;
  }

  dimension: user__location {
    type: string
    sql: ${TABLE}.user.location ;;
  }

  dimension: user__name {
    type: string
    sql: ${TABLE}.user.name ;;
  }

  dimension: user__notifications {
    type: string
    sql: ${TABLE}.user.notifications ;;
  }

  dimension: user__profile_background_color {
    type: string
    sql: ${TABLE}.user.profile_background_color ;;
  }

  dimension: user__profile_background_image_url {
    type: string
    sql: ${TABLE}.user.profile_background_image_url ;;
  }

  dimension: user__profile_background_image_url_https {
    type: string
    sql: ${TABLE}.user.profile_background_image_url_https ;;
  }

  dimension: user__profile_background_tile {
    type: yesno
    sql: ${TABLE}.user.profile_background_tile ;;
  }

  dimension: user__profile_banner_url {
    type: string
    sql: ${TABLE}.user.profile_banner_url ;;
  }

  dimension: user__profile_image_url {
    type: string
    sql: ${TABLE}.user.profile_image_url ;;
  }

  dimension: user__profile_image_url_https {
    type: string
    sql: ${TABLE}.user.profile_image_url_https ;;
  }

  dimension: user__profile_link_color {
    type: string
    sql: ${TABLE}.user.profile_link_color ;;
  }

  dimension: user__profile_sidebar_border_color {
    type: string
    sql: ${TABLE}.user.profile_sidebar_border_color ;;
  }

  dimension: user__profile_sidebar_fill_color {
    type: string
    sql: ${TABLE}.user.profile_sidebar_fill_color ;;
  }

  dimension: user__profile_text_color {
    type: string
    sql: ${TABLE}.user.profile_text_color ;;
  }

  dimension: user__profile_use_background_image {
    type: yesno
    sql: ${TABLE}.user.profile_use_background_image ;;
  }

  dimension: user__protected {
    type: yesno
    sql: ${TABLE}.user.protected ;;
  }

  dimension: user__screen_name {
    type: string
    sql: ${TABLE}.user.screen_name ;;
  }

  dimension: user__statuses_count {
    type: number
    sql: ${TABLE}.user.statuses_count ;;
  }

  dimension: user__time_zone {
    type: string
    sql: ${TABLE}.user.time_zone ;;
  }

  dimension: user__url {
    type: string
    sql: ${TABLE}.user.url ;;
  }

  dimension: user__utc_offset {
    type: number
    sql: ${TABLE}.user.utc_offset ;;
  }

  dimension: user__verified {
    type: yesno
    sql: ${TABLE}.user.verified ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [detail*]
  }

  measure: retweetcount {
    type: count
    approximate_threshold: 100000
    drill_fields: [retweet_count]
  }
  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      retweeted_status__in_reply_to_screen_name,
      retweeted_status__place__full_name,
      retweeted_status__place__name,
      retweeted_status__entities__user_mentions__screen_name,
      retweeted_status__entities__user_mentions__name,
      retweeted_status__user__screen_name,
      retweeted_status__user__name,
      in_reply_to_screen_name,
      place__full_name,
      place__name,
      entities__user_mentions__screen_name,
      entities__user_mentions__name,
      user__screen_name,
      user__name
    ]
  }
}
