view: mpa_d_lead {
  sql_table_name: mpa_d_lead ;;

##### Join Keys #####
  dimension: lead_key {
    type: number
    hidden: yes
    sql: ${TABLE}.lead_key ;;
  }

  dimension: abm_account_key {
    type: number
    hidden: yes
    sql: ${TABLE}.abm_account_key ;;
  }

  dimension: acquisition_program_key {
    type: number
    hidden: yes
    sql: ${TABLE}.acquisition_program_key ;;
  }

  dimension: company_key {
    type: number
    hidden: yes
    sql: ${TABLE}.company_key ;;
  }

  dimension: lead_owner_key {
    type: number
    hidden: yes
    sql: ${TABLE}.lead_owner_key ;;
  }

  dimension: lead_partition_key {
    type: number
    hidden: yes
    sql: ${TABLE}.lead_partition_key ;;
  }

  dimension: lead_source_key {
    type: number
    hidden: yes
    sql: ${TABLE}.lead_source_key ;;
  }

  dimension: lead_status_key {
    type: number
    hidden: yes
    sql: ${TABLE}.lead_status_key ;;
  }

##### Attributes #####
  dimension: source_id {
    type: string
    label: "Lead ID"
    hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension: email {
    type: string
    label: "Email Address"
    description: "Lead's Email Address"
    sql: ${TABLE}.email ;;
  }

  dimension: is_black_listed {
    type: yesno
    label: "Blacklisted"
    sql: ${TABLE}.is_black_listed ;;
  }

  dimension: is_converted_to_opportunity {
    type: yesno
    label: "Converted to Opportunity"
    sql: ${TABLE}.is_converted_to_opportunity ;;
  }

  dimension: is_email_invalid {
    type: yesno
    label: "Email Valid"
    sql: ${TABLE}.is_email_invalid ;;
  }

  dimension: is_email_opt_out {
    type: yesno
    label: "Unsubscribed"
    sql: ${TABLE}.is_email_opt_out ;;
  }

  dimension: is_marketing_suspended {
    type: yesno
    label: "Marketing Suspended"
    sql: ${TABLE}.is_marketing_suspended ;;
  }

  dimension: is_phone_opt_out {
    type: yesno
    label: "Do Not Call"
    sql: ${TABLE}.is_phone_opt_out ;;
  }

  dimension: job_title {
    type: string
    label:  "Job Title"
    sql: ${TABLE}.job_title ;;
  }

  dimension: name {
    type: string
    label: "Full Name"
    sql: ${TABLE}.name ;;
    order_by_field: name
  }

  dimension: original_source_info {
    type: string
    label: "Original Source Info"
    sql: ${TABLE}.original_source_info ;;
  }

  dimension: original_source_type {
    type: string
    label: "Original Source Type"
    sql: ${TABLE}.original_source_type ;;
  }

  dimension: register_source_info {
    type: string
    label: "Register Source Info"
    sql: ${TABLE}.register_source_info ;;
  }

  dimension: register_source_type {
    type: string
    label: "Register Source Type"
    sql: ${TABLE}.register_source_type ;;
  }

  dimension: score {
    type: number
    label: "Score"
    hidden: yes
    sql: ${TABLE}.score ;;
  }

##### Attributes - Date #####
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


  dimension_group: lead_created_date {
    type: time
    label: "Lead Created Timeframe"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.lead_created_date_time ;;
  }

  dimension: lead_created_year {
    type: string
    group_label: "Lead Created Timeframe"
    label: "Year"
    sql: year(${TABLE}.lead_created_date_time) ;;
    order_by_field: lead_created_date
  }

  dimension: lead_created_quarter {
    type: string
    group_label: "Lead Created Timeframe"
    label: "Quarter"
    sql: concat(year(${TABLE}.lead_created_date_time), ' Q', quarter(${TABLE}.lead_created_date_time)) ;;
  }

  dimension: lead_created_month {
    type: string
    group_label: "Lead Created Timeframe"
    label: "Month"
    sql: concat(year(${TABLE}.lead_created_date_time), ' ', monthname(${TABLE}.lead_created_date_time)) ;;
  }

  dimension: lead_created_week {
    type: string
    group_label: "Lead Created Timeframe"
    label: "Week"
    sql: concat(year(${TABLE}.lead_created_date_time), ' ', substring(monthname(${TABLE}.lead_created_date_time),1,3), ' W', weekofyear(${TABLE}.lead_created_date_time)) ;;
  }

  dimension: lead_created_date {
    type: date
    group_label: "Lead Created Timeframe"
    label: "Date"
    sql: ${TABLE}.lead_created_date_time ;;
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

##### Measures #####

  measure: lead_count {
    type: count
    label: "Number of Leads"
    drill_fields: [lead_details*]
  }

  measure: lead_converted_to_opportunity_count {
    type: count_distinct
    label: "Number of Leads (Converted to Opportunity)"
    sql:  case
            when ${TABLE}.is_converted_to_opportunity = 1 and ${TABLE}.opportunity_created_date >= date(${TABLE}.lead_created_date_time)
              then ${TABLE}.lead_key
            else null
          end ;;
    drill_fields: [lead_details*]
  }

  measure: lead_not_converted_to_opportunity_count {
    type: count_distinct
    label: "Number of Leads (Not Converted to Opportunity)"
    sql:  case
            when ${TABLE}.is_converted_to_opportunity = 0
              then ${TABLE}.lead_key
            else null
          end ;;
    drill_fields: [lead_details*]
  }

  measure: age_of_unconverted_leads {
    type: sum
    hidden: yes
    sql:  case
            when ${TABLE}.is_converted_to_opportunity = 0 and ${TABLE}.lead_created_date is not null
              then datediff(current_date, ${TABLE}.lead_created_date)
            else null
          end ;;
  }

  measure: avg_age_of_unconverted_leads {
    type: number
    label: "Avg Age of Unconverted Leads"
    sql: coalesce(${mpa_d_lead.age_of_unconverted_leads}/${mpa_d_lead.lead_not_converted_to_opportunity_count}, 0) ;;
    value_format: "0"
  }

  measure: days_to_convert_lead_to_opportunity {
    type: sum
    hidden: yes
    sql:  case
            when ${TABLE}.opportunity_created_date is not null and ${TABLE}.lead_created_date_time is not null
                and ${TABLE}.opportunity_created_date >= date(${TABLE}.lead_created_date_time)
              then datediff(${TABLE}.opportunity_created_date, date(${TABLE}.lead_created_date_time))
            when ${TABLE}.opportunity_created_date is not null and ${TABLE}.lead_created_date_time is not null
                and ${TABLE}.opportunity_created_date < date(${TABLE}.lead_created_date_time)
              then 0
            else null
          end ;;
  }

  measure: avg_days_to_convert_lead_to_opportunity {
    type: number
    label: "Avg Days to Convert Lead to Opportunity"
    sql: coalesce(${mpa_d_lead.days_to_convert_lead_to_opportunity}/${mpa_d_lead.lead_converted_to_opportunity_count}, 0) ;;
    value_format: "0"
  }

  measure: avg_score {
    type: average
    label: "Avg Score"
    sql: coalesce(${TABLE}.score, 0) ;;
    value_format: "0"
  }

  measure: lead_to_opportunity_conversion_ratio {
    type: number
    label: "Lead to Opportunity Conversion Ratio"
    sql: coalesce(${mpa_d_lead.lead_converted_to_opportunity_count}/${mpa_d_lead.lead_count}, 0) ;;
    value_format: "0.00%"
  }

  set: lead_details {
    fields: [source_id, name, email]
  }

#   dimension: x_692_address {
#     type: string
#     sql: ${TABLE}.X_692_Address ;;
#   }
#
#   dimension: x_692_cityff4d57995282449 {
#     type: string
#     sql: ${TABLE}.X_692_Cityff4d57995282449 ;;
#   }
#
#   dimension: x_692_country {
#     type: string
#     sql: ${TABLE}.X_692_Country ;;
#   }
#
#   dimension: x_692_custm_stringfb4eb7ed77b24e2 {
#     type: string
#     sql: ${TABLE}.X_692_custmStringfb4eb7ed77b24e2 ;;
#   }
#
#   dimension: x_692_custom_demo {
#     type: string
#     sql: ${TABLE}.X_692_custom_demo ;;
#   }
#
#   dimension_group: x_692_date_of_birth {
#     type: time
#     timeframes: [
#       raw,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     convert_tz: no
#     datatype: date
#     sql: ${TABLE}.X_692_Date_of_Birth ;;
#   }
#
#   dimension: x_692_job_title {
#     type: string
#     sql: ${TABLE}.X_692_Job_Title ;;
#   }
#
#   dimension: x_692_lead_rating {
#     type: string
#     sql: ${TABLE}.X_692_Lead_Rating ;;
#   }
#
#   dimension: x_692_lead_role {
#     type: string
#     sql: ${TABLE}.X_692_Lead_Role ;;
#   }
#
#   dimension: x_692_new_cutom_field {
#     type: string
#     sql: ${TABLE}.X_692_New_cutom_field ;;
#   }
#
#   dimension: x_692_pentaho_upgrade_test_simon12ce0829bbf8c24b1 {
#     type: number
#     sql: ${TABLE}.X_692_PentahoUpgradeTestSimon12ce0829bbf8c24b1 ;;
#   }
#
#   dimension: x_692_rca_4044 {
#     type: string
#     sql: ${TABLE}.X_692_RCA_4044 ;;
#   }
#
#   dimension: x_692_sat_score {
#     type: number
#     sql: ${TABLE}.X_692_SAT_Score ;;
#   }
#
#   dimension: x_692_test_pentaho_upgrade0028ae6dff439bd4aa {
#     type: number
#     sql: ${TABLE}.X_692_TestPentahoUpgrade0028ae6dff439bd4aa ;;
#   }
#
#   dimension: x_692_test_pentaho_upgrade27e169875e52495 {
#     type: string
#     sql: ${TABLE}.X_692_TestPentahoUpgrade27e169875e52495 ;;
#   }
#
#   dimension_group: x_692_test_pentaho_upgrade29c893606238f4ee {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.X_692_TestPentahoUpgrade29c893606238f4ee ;;
#   }
#
#   dimension: x_692_vijay {
#     type: string
#     sql: ${TABLE}.X_692_vijay ;;
#   }


}
