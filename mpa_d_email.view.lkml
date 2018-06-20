view: mpa_d_email {
  sql_table_name: simon12_warehouse.mpa_d_email ;;

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

  dimension: email_key {
    type: number
    sql: ${TABLE}.email_key ;;
  }

  dimension: email_template {
    type: string
    sql: ${TABLE}.email_template ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: from_email {
    type: string
    sql: ${TABLE}.from_email ;;
  }

  dimension: group_status {
    type: string
    sql: ${TABLE}.group_status ;;
  }

  dimension: group_sub_status {
    type: string
    sql: ${TABLE}.group_sub_status ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_pruned {
    type: yesno
    sql: ${TABLE}.is_pruned ;;
  }

  dimension: marketing_program_id {
    type: number
    sql: ${TABLE}.marketing_program_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent_source_id {
    type: number
    sql: ${TABLE}.parent_source_id ;;
  }

  dimension: primary_variant_id {
    type: number
    sql: ${TABLE}.primary_variant_id ;;
  }

  dimension_group: source_created {
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
    sql: ${TABLE}.source_created_at ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  dimension_group: source_updated {
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
    sql: ${TABLE}.source_updated_at ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: variant_app_comp_id {
    type: number
    sql: ${TABLE}.variant_app_comp_id ;;
  }

  dimension: variant_id {
    type: number
    sql: ${TABLE}.variant_id ;;
  }

  dimension: variant_sort_order {
    type: number
    sql: ${TABLE}.variant_sort_order ;;
  }

  dimension: variant_test_data {
    type: string
    sql: ${TABLE}.variant_test_data ;;
  }

  dimension: workspace_key {
    type: number
    sql: ${TABLE}.workspace_key ;;
  }

  dimension: workspace_source_id {
    type: number
    sql: ${TABLE}.workspace_source_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
