view: mpa_d_date {
  sql_table_name: mpa_d_date ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: date_key {
    type: number
    sql: ${TABLE}.date_key ;;
  }

  dimension: day {
    type: yesno
    sql: ${TABLE}.day ;;
  }

  dimension: day_name {
    type: string
    sql: ${TABLE}.day_name ;;
  }

  dimension: day_of_quarter {
    type: yesno
    sql: ${TABLE}.day_of_quarter ;;
  }

  dimension: day_of_week {
    type: yesno
    sql: ${TABLE}.day_of_week ;;
  }

  dimension: day_of_year {
    type: number
    sql: ${TABLE}.day_of_year ;;
  }

  dimension: day_order {
    type: number
    sql: ${TABLE}.day_order ;;
  }

  dimension_group: first_day_of_month {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.first_day_of_month ;;
  }

  dimension_group: first_day_of_quarter {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.first_day_of_quarter ;;
  }

  dimension_group: first_day_of_week {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.first_day_of_week ;;
  }

  dimension_group: first_day_of_year {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.first_day_of_year ;;
  }

  dimension: is_last_day_of_month {
    type: yesno
    sql: ${TABLE}.is_last_day_of_month ;;
  }

  dimension: is_last_day_of_quarter {
    type: yesno
    sql: ${TABLE}.is_last_day_of_quarter ;;
  }

  dimension: is_last_day_of_week {
    type: yesno
    sql: ${TABLE}.is_last_day_of_week ;;
  }

  dimension: is_last_month_of_quarter {
    type: yesno
    sql: ${TABLE}.is_last_month_of_quarter ;;
  }

  dimension: is_last_week_of_month {
    type: yesno
    sql: ${TABLE}.is_last_week_of_month ;;
  }

  dimension: is_last_week_of_quarter {
    type: yesno
    sql: ${TABLE}.is_last_week_of_quarter ;;
  }

  dimension: is_weekday {
    type: yesno
    sql: ${TABLE}.is_weekday ;;
  }

  dimension: month {
    type: yesno
    sql: ${TABLE}.month ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.month_name ;;
  }

  dimension: month_of_quarter {
    type: yesno
    sql: ${TABLE}.month_of_quarter ;;
  }

  dimension: month_order {
    type: number
    sql: ${TABLE}.month_order ;;
  }

  dimension: quarter {
    type: yesno
    sql: ${TABLE}.quarter ;;
  }

  dimension: quarter_order {
    type: number
    sql: ${TABLE}.quarter_order ;;
  }

  dimension: week_of_month {
    type: yesno
    sql: ${TABLE}.week_of_month ;;
  }

  dimension: week_of_quarter {
    type: yesno
    sql: ${TABLE}.week_of_quarter ;;
  }

  dimension: week_of_year {
    type: yesno
    sql: ${TABLE}.week_of_year ;;
  }

  dimension: week_order {
    type: number
    sql: ${TABLE}.week_order ;;
  }

  dimension: week_run_num {
    type: number
    sql: ${TABLE}.week_run_num ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: year_month_day_name {
    type: string
    sql: ${TABLE}.year_month_day_name ;;
  }

  dimension: year_month_name {
    type: string
    sql: ${TABLE}.year_month_name ;;
  }

  dimension: year_quarter_name {
    type: string
    sql: ${TABLE}.year_quarter_name ;;
  }

  dimension: year_week_name {
    type: string
    sql: ${TABLE}.year_week_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      day_name,
      year_month_day_name,
      year_week_name,
      month_name,
      year_month_name,
      year_quarter_name
    ]
  }
}
