view: mpa_d_lead_source {
  sql_table_name: mpa_d_lead_source ;;

  dimension: lead_source_key {
    type: number
    hidden: yes
    sql: ${TABLE}.lead_source_key ;;
  }

  dimension: source_id {
    type: string
    hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension: name {
    type: string
    label: "Lead Source"
    sql: ${TABLE}.name ;;
  }

}
