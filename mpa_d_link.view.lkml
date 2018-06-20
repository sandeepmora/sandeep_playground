view: mpa_d_link {
  sql_table_name: simon12_warehouse.mpa_d_link ;;

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

  dimension: link_key {
    type: number
    sql: ${TABLE}.link_key ;;
  }

  dimension: link_url {
    type: string
    sql: ${TABLE}.link_url ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
