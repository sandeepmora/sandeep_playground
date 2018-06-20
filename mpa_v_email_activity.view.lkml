view: mpa_v_email_activity {
  sql_table_name: simon12_warehouse.mpa_v_email_activity ;;

  dimension: abm_account_key {
    type: number
    sql: ${TABLE}.abm_account_key ;;
  }

  dimension: acquisition_program_key {
    type: number
    sql: ${TABLE}.acquisition_program_key ;;
  }

  dimension: campaign_key {
    type: number
    sql: ${TABLE}.campaign_key ;;
  }

  dimension: clicked_ali_id {
    type: number
    sql: ${TABLE}.clicked_ali_id ;;
  }

  dimension: clicked_date_key {
    type: number
    sql: ${TABLE}.clicked_date_key ;;
  }

  dimension: clicked_hour {
    type: yesno
    sql: ${TABLE}.clicked_hour ;;
  }

  dimension: company_key {
    type: number
    sql: ${TABLE}.company_key ;;
  }

  dimension: complaint_ali_id {
    type: number
    sql: ${TABLE}.complaint_ali_id ;;
  }

  dimension: complaint_date_key {
    type: number
    sql: ${TABLE}.complaint_date_key ;;
  }

  dimension: complaint_hour {
    type: yesno
    sql: ${TABLE}.complaint_hour ;;
  }

  dimension: delivered_ali_id {
    type: number
    sql: ${TABLE}.delivered_ali_id ;;
  }

  dimension: delivered_date_key {
    type: number
    sql: ${TABLE}.delivered_date_key ;;
  }

  dimension: delivered_hour {
    type: yesno
    sql: ${TABLE}.delivered_hour ;;
  }

  dimension: domain_key {
    type: number
    sql: ${TABLE}.domain_key ;;
  }

  dimension: email_key {
    type: number
    sql: ${TABLE}.email_key ;;
  }

  dimension: hard_bounced_ali_id {
    type: number
    sql: ${TABLE}.hard_bounced_ali_id ;;
  }

  dimension: hard_bounced_date_key {
    type: number
    sql: ${TABLE}.hard_bounced_date_key ;;
  }

  dimension: hard_bounced_hour {
    type: yesno
    sql: ${TABLE}.hard_bounced_hour ;;
  }

  dimension: is_first_click {
    type: yesno
    sql: ${TABLE}.is_first_click ;;
  }

  dimension: lead_key {
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: lead_owner_key {
    type: number
    sql: ${TABLE}.lead_owner_key ;;
  }

  dimension: lead_source_key {
    type: number
    sql: ${TABLE}.lead_source_key ;;
  }

  dimension: lead_status_key {
    type: number
    sql: ${TABLE}.lead_status_key ;;
  }

  dimension: link_key {
    type: number
    sql: ${TABLE}.link_key ;;
  }

  dimension: opened_ali_id {
    type: number
    sql: ${TABLE}.opened_ali_id ;;
  }

  dimension: opened_date_key {
    type: number
    sql: ${TABLE}.opened_date_key ;;
  }

  dimension: opened_hour {
    type: yesno
    sql: ${TABLE}.opened_hour ;;
  }

  dimension: program_key {
    type: number
    sql: ${TABLE}.program_key ;;
  }

  dimension: sent_ali_id {
    type: number
    sql: ${TABLE}.sent_ali_id ;;
  }

  dimension: sent_date_key {
    type: number
    sql: ${TABLE}.sent_date_key ;;
  }

  dimension: sent_hour {
    type: yesno
    sql: ${TABLE}.sent_hour ;;
  }

  dimension: unsubscribed_ali_id {
    type: number
    sql: ${TABLE}.unsubscribed_ali_id ;;
  }

  dimension: unsubscribed_date_key {
    type: number
    sql: ${TABLE}.unsubscribed_date_key ;;
  }

  dimension: unsubscribed_hour {
    type: yesno
    sql: ${TABLE}.unsubscribed_hour ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
