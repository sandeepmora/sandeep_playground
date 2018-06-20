view: mpa_d_lead {
  sql_table_name: simon12_warehouse.mpa_d_lead ;;

  dimension: abm_account_key {
    type: number
    sql: ${TABLE}.abm_account_key ;;
  }

  dimension: abm_account_source_id {
    type: number
    sql: ${TABLE}.abm_account_source_id ;;
  }

  dimension_group: acquisition {
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
    sql: ${TABLE}.acquisition_date ;;
  }

  dimension: acquisition_date_key {
    type: number
    sql: ${TABLE}.acquisition_date_key ;;
  }

  dimension: acquisition_program_key {
    type: number
    sql: ${TABLE}.acquisition_program_key ;;
  }

  dimension: acquisition_program_source_id {
    type: string
    sql: ${TABLE}.acquisition_program_source_id ;;
  }

  dimension: company_key {
    type: number
    sql: ${TABLE}.company_key ;;
  }

  dimension: company_source_id {
    type: string
    sql: ${TABLE}.company_source_id ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: etl_history_key {
    type: number
    sql: ${TABLE}.etl_history_key ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_black_listed {
    type: yesno
    sql: ${TABLE}.is_black_listed ;;
  }

  dimension: is_converted_to_opportunity {
    type: yesno
    sql: ${TABLE}.is_converted_to_opportunity ;;
  }

  dimension: is_email_invalid {
    type: yesno
    sql: ${TABLE}.is_email_invalid ;;
  }

  dimension: is_email_opt_out {
    type: yesno
    sql: ${TABLE}.is_email_opt_out ;;
  }

  dimension: is_key_resolved {
    type: yesno
    sql: ${TABLE}.is_key_resolved ;;
  }

  dimension: is_marketing_suspended {
    type: yesno
    sql: ${TABLE}.is_marketing_suspended ;;
  }

  dimension: is_phone_opt_out {
    type: yesno
    sql: ${TABLE}.is_phone_opt_out ;;
  }

  dimension: is_private {
    type: yesno
    sql: ${TABLE}.is_private ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.job_title ;;
  }

  dimension_group: lead_created {
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
    sql: ${TABLE}.lead_created_date ;;
  }

  dimension: lead_created_date_key {
    type: number
    sql: ${TABLE}.lead_created_date_key ;;
  }

  dimension_group: lead_created_date {
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
    sql: ${TABLE}.lead_created_date_time ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: lead_owner_key {
    type: number
    sql: ${TABLE}.lead_owner_key ;;
  }

  dimension: lead_owner_source_id {
    type: string
    sql: ${TABLE}.lead_owner_source_id ;;
  }

  dimension: lead_partition_key {
    type: number
    sql: ${TABLE}.lead_partition_key ;;
  }

  dimension: lead_partition_source_id {
    type: number
    sql: ${TABLE}.lead_partition_source_id ;;
  }

  dimension: lead_source_key {
    type: number
    sql: ${TABLE}.lead_source_key ;;
  }

  dimension: lead_source_source_id {
    type: string
    sql: ${TABLE}.lead_source_source_id ;;
  }

  dimension: lead_status_key {
    type: number
    sql: ${TABLE}.lead_status_key ;;
  }

  dimension: lead_status_source_id {
    type: string
    sql: ${TABLE}.lead_status_source_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: opportunity_created {
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
    sql: ${TABLE}.opportunity_created_date ;;
  }

  dimension: opportunity_created_date_key {
    type: number
    sql: ${TABLE}.opportunity_created_date_key ;;
  }

  dimension: original_source_info {
    type: string
    sql: ${TABLE}.original_source_info ;;
  }

  dimension: original_source_type {
    type: string
    sql: ${TABLE}.original_source_type ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: register_source_info {
    type: string
    sql: ${TABLE}.register_source_info ;;
  }

  dimension: register_source_type {
    type: string
    sql: ${TABLE}.register_source_type ;;
  }

  dimension: relative_score {
    type: number
    sql: ${TABLE}.relative_score ;;
  }

  dimension: revenue_stage_key {
    type: number
    sql: ${TABLE}.revenue_stage_key ;;
  }

  dimension: revenue_stage_source_id {
    type: string
    sql: ${TABLE}.revenue_stage_source_id ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: score_key {
    type: number
    sql: ${TABLE}.score_key ;;
  }

  dimension: score_source_id {
    type: string
    sql: ${TABLE}.score_source_id ;;
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

  dimension: urgency {
    type: number
    sql: ${TABLE}.urgency ;;
  }

  dimension: x_692_address {
    type: string
    sql: ${TABLE}.X_692_Address ;;
  }

  dimension: x_692_cityff4d57995282449 {
    type: string
    sql: ${TABLE}.X_692_Cityff4d57995282449 ;;
  }

  dimension: x_692_country {
    type: string
    sql: ${TABLE}.X_692_Country ;;
  }

  dimension: x_692_custm_stringfb4eb7ed77b24e2 {
    type: string
    sql: ${TABLE}.X_692_custmStringfb4eb7ed77b24e2 ;;
  }

  dimension: x_692_custom_demo {
    type: string
    sql: ${TABLE}.X_692_custom_demo ;;
  }

  dimension_group: x_692_date_of_birth {
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
    sql: ${TABLE}.X_692_Date_of_Birth ;;
  }

  dimension: x_692_job_title {
    type: string
    sql: ${TABLE}.X_692_Job_Title ;;
  }

  dimension: x_692_lead_rating {
    type: string
    sql: ${TABLE}.X_692_Lead_Rating ;;
  }

  dimension: x_692_lead_role {
    type: string
    sql: ${TABLE}.X_692_Lead_Role ;;
  }

  dimension: x_692_new_cutom_field {
    type: string
    sql: ${TABLE}.X_692_New_cutom_field ;;
  }

  dimension: x_692_pentaho_upgrade_test_simon12ce0829bbf8c24b1 {
    type: number
    sql: ${TABLE}.X_692_PentahoUpgradeTestSimon12ce0829bbf8c24b1 ;;
  }

  dimension: x_692_rca_4044 {
    type: string
    sql: ${TABLE}.X_692_RCA_4044 ;;
  }

  dimension: x_692_sat_score {
    type: number
    sql: ${TABLE}.X_692_SAT_Score ;;
  }

  dimension: x_692_test_pentaho_upgrade0028ae6dff439bd4aa {
    type: number
    sql: ${TABLE}.X_692_TestPentahoUpgrade0028ae6dff439bd4aa ;;
  }

  dimension: x_692_test_pentaho_upgrade27e169875e52495 {
    type: string
    sql: ${TABLE}.X_692_TestPentahoUpgrade27e169875e52495 ;;
  }

  dimension_group: x_692_test_pentaho_upgrade29c893606238f4ee {
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
    sql: ${TABLE}.X_692_TestPentahoUpgrade29c893606238f4ee ;;
  }

  dimension: x_692_vijay {
    type: string
    sql: ${TABLE}.X_692_vijay ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
