view: mpa_d_abm_account {
  sql_table_name: mpa_d_abm_account ;;

  dimension: abm_account_key {
    type: number
    hidden: yes
    sql: ${TABLE}.abm_account_key ;;
  }

  dimension: source_id {
    type: string
    label: "ABM Account ID"
    hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension: name {
    type: string
    label: "Named Account"
    sql: ${TABLE}.name ;;
  }

  dimension: country {
    type: string
    label: "ABM Country"
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

#   dimension: annual_revenue {
#     type: number
#     sql: ${TABLE}.annual_revenue ;;
#   }
#
#   dimension: city {
#     type: string
#     sql: ${TABLE}.city ;;
#   }
#
#   dimension: country {
#     type: string
#     map_layer_name: countries
#     sql: ${TABLE}.country ;;
#   }
#
#   dimension: domain_name {
#     type: string
#     sql: ${TABLE}.domain_name ;;
#   }
#
#   dimension: industry {
#     type: string
#     sql: ${TABLE}.industry ;;
#   }
#
#   dimension: is_targeted {
#     type: yesno
#     sql: ${TABLE}.is_targeted ;;
#   }
#
#   dimension: logo_url {
#     type: string
#     sql: ${TABLE}.logo_url ;;
#   }
#
#   dimension: membership_count {
#     type: number
#     sql: ${TABLE}.membership_count ;;
#   }
#
#   dimension: num_employees {
#     type: number
#     sql: ${TABLE}.num_employees ;;
#   }
#
#   dimension: oppty_amount {
#     type: number
#     sql: ${TABLE}.oppty_amount ;;
#   }
#
#   dimension: oppty_count {
#     type: number
#     sql: ${TABLE}.oppty_count ;;
#   }
#
#   dimension: score1 {
#     type: number
#     sql: ${TABLE}.score1 ;;
#   }
#
#   dimension: score2 {
#     type: number
#     sql: ${TABLE}.score2 ;;
#   }
#
#   dimension: score3 {
#     type: number
#     sql: ${TABLE}.score3 ;;
#   }
#
#   dimension: score4 {
#     type: number
#     sql: ${TABLE}.score4 ;;
#   }
#
#   dimension: score5 {
#     type: number
#     sql: ${TABLE}.score5 ;;
#   }
#
#   dimension: sfdc_account_id {
#     type: string
#     sql: ${TABLE}.sfdc_account_id ;;
#   }
#
#   dimension: sic_code {
#     type: string
#     sql: ${TABLE}.sic_code ;;
#   }
#
#   dimension: state {
#     type: string
#     sql: ${TABLE}.state ;;
#   }

}
