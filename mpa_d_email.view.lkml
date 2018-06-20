view: mpa_d_email {
  sql_table_name: mpa_d_email ;;

  ##### Join Keys #####

  dimension: email_key {
    hidden: yes
    type: number
    sql: ${TABLE}.email_key ;;
  }

  dimension: etl_history_key {
    hidden: yes
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: marketing_program_id {
    hidden: yes
    type: number
    sql: ${TABLE}.marketing_program_id ;;
  }

  dimension: workspace_key {
    hidden: yes
    type: number
    sql: ${TABLE}.workspace_key ;;
  }

  dimension: workspace_source_id {
    hidden: yes
    type: number
    sql: ${TABLE}.workspace_source_id ;;
  }

  dimension: parent_source_id {
    hidden: yes
    type: number
    sql: ${TABLE}.parent_source_id ;;
  }

  dimension: primary_variant_id {
    hidden: yes
    type: number
    sql: ${TABLE}.primary_variant_id ;;
  }

  dimension: source_id {
    hidden: yes
    type: string
    sql: ${TABLE}.source_id ;;
  }

  dimension: variant_app_comp_id {
    hidden: yes
    type: number
    sql: ${TABLE}.variant_app_comp_id ;;
  }

  dimension: variant_id {
    hidden: yes
    type: number
    sql: ${TABLE}.variant_id ;;
  }

  ##### Attributes shown to User #####
  dimension: name {
    label: "Email Name"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: subject {
    label: "Email Subject"
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: from_email {
    label: "Email From Address"
    type: string
    sql: ${TABLE}.from_email ;;
  }

  dimension: email_template {
    label: "Email Template"
    type: string
    sql: ${TABLE}.email_template ;;
  }

  ###### Fields available for modeling but hidden from users ######

  dimension: group_status {
    hidden: yes
    type: string
    sql: ${TABLE}.group_status ;;
  }

  dimension: group_sub_status {
    hidden: yes
    type: string
    sql: ${TABLE}.group_sub_status ;;
  }

  dimension: is_active {
    hidden: yes
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_pruned {
    hidden: yes
    type: yesno
    sql: ${TABLE}.is_pruned ;;
  }

  dimension: type {
    hidden: yes
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: variant_sort_order {
    hidden: yes
    type: number
    sql: ${TABLE}.variant_sort_order ;;
  }

  dimension: variant_test_data {
    hidden: yes
    type: string
    sql: ${TABLE}.variant_test_data ;;
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

  dimension_group: source_created {
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
    sql: ${TABLE}.source_created_at ;;
  }

  dimension_group: source_updated {
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
    sql: ${TABLE}.source_updated_at ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
