view: mpa_d_company {
  sql_table_name: mpa_d_company ;;

##### Join Keys #####
  dimension: company_key {
    type: number
    hidden: yes
    sql: ${TABLE}.company_key ;;
  }

##### Attributes #####
  dimension: source_id {
    type: string
    label: "Company ID"
    hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}.annual_revenue ;;
  }

  dimension: city {
    type: string
    label: "Billing City"
    sql: ${TABLE}.city ;;
  }

  dimension: state {
    type: string
    label: "Billing State"
    sql: ${TABLE}.state ;;
  }

  dimension: country {
    type: string
    label: "Billing Country"
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: postal_code {
    type: string
    label: "Billing Postal Code"
    sql: ${TABLE}.postal_code ;;
  }

  dimension: industry {
    type: string
    label: "Industry"
    sql: ${TABLE}.industry ;;
  }

  dimension: name {
    type: string
    label: "Company Name"
    sql: ${TABLE}.name ;;
  }

  dimension: number_of_employees {
    type: number
    label: "Number of Employees"
    sql: ${TABLE}.number_of_employees ;;
  }

  dimension: sic_code {
    type: string
    label: "SIC Code"
    sql: ${TABLE}.sic_code ;;
  }

##### Measures #####
  measure: company_count {
    type: count_distinct
    label: "Number of Companies"
    sql: ${TABLE}.company_key ;;
    drill_fields: [company_details*]
  }

  measure: company_converted_to_opportunity_count {
    type: count_distinct
    label: "Number of Companies (Converted to Opportunity)"
    sql: case when ${mpa_d_lead.is_converted_to_opportunity} = 1 then ${TABLE}.company_key else null end ;;
    drill_fields: [company_details*]
  }

  measure: company_not_converted_to_opportunity_count {
    type: count_distinct
    label: "Number of Companies (Not Converted to Opportunity)"
    sql: case when ${mpa_d_lead.is_converted_to_opportunity} = 0 then ${TABLE}.company_key else null end ;;
    drill_fields: [company_details*]
  }

  measure: company_to_opportunity_conversion_ratio {
    type: number
    label: "Company to Opportunity Conversion Ratio"
    sql: coalesce(${mpa_d_company.company_converted_to_opportunity_count}/${mpa_d_company.company_count}, 0) ;;
    value_format: "0.00%"
  }

  set: company_details {
    fields: [source_id, name]
  }


  # dimension: x_691_simon_acct_custom_text {
  #   type: string
  #   sql: ${TABLE}.X_691_simon_acct_custom_text ;;
  # }

  # dimension: x_691_simon_sfdc_cust_acct {
  #   type: number
  #   sql: ${TABLE}.X_691_simon_sfdc_cust_acct ;;
  # }
}
