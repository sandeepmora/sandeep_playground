view: mpa_d_program {
  sql_table_name: mpa_d_program ;;

  dimension: program_key {
    type: number
    hidden: yes
    sql: ${TABLE}.program_key ;;
  }

  dimension: source_id {
    type: string
    label: "Program ID"
    hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension: name {
    type: string
    label: "Program Name"
    sql: ${TABLE}.name ;;
  }

  dimension: channel_name {
    type: string
    label: "Program Channel"
    sql: ${TABLE}.channel_name ;;
  }

  # dimension: x_program_tag_2_tag1 {
  #   type: string
  #   sql: ${TABLE}.X_program_tag_2_Tag1 ;;
  # }


}
