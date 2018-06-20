view: mpa_d_link {
  sql_table_name: mpa_d_link ;;

  dimension: link_key {
    hidden: yes
    type: number
    sql: ${TABLE}.link_key ;;
  }

  dimension: link_url {
    type: string
    label: "Email Link"
    sql: ${TABLE}.link_url ;;
  }

  dimension_group: created {
    hidden: yes
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

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
