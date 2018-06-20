view: mpa_v_email_activity {
  sql_table_name: mpa_v_email_activity ;;

##### Join Keys #####

  dimension: email_key {
    hidden: yes
    type: number
    sql: ${TABLE}.email_key ;;
  }

  dimension: campaign_key {
    hidden: yes
    type: number
    sql: ${TABLE}.campaign_key ;;
  }

  dimension: lead_key {
    hidden: yes
    type: number
    sql: ${TABLE}.lead_key ;;
  }

  dimension: company_key {
    hidden: yes
    type: number
    sql: ${TABLE}.company_key ;;
  }

  dimension: domain_key {
    hidden: yes
    type: number
    sql: ${TABLE}.domain_key ;;
  }

  dimension: link_key {
    hidden: yes
    type: number
    sql: ${TABLE}.link_key ;;
  }

  dimension: sent_date_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sent_date_key ;;
  }

  dimension: sent_hour {
    hidden: yes
    type: yesno
    sql: ${TABLE}.sent_hour ;;
  }

  dimension: delivered_date_key {
    hidden: yes
    type: number
    sql: ${TABLE}.delivered_date_key ;;
  }

  dimension: delivered_hour {
    hidden: yes
    type: yesno
    sql: ${TABLE}.delivered_hour ;;
  }

  dimension: hard_bounced_date_key {
    hidden: yes
    type: number
    sql: ${TABLE}.hard_bounced_date_key ;;
  }

  dimension: hard_bounced_hour {
    hidden: yes
    type: yesno
    sql: ${TABLE}.hard_bounced_hour ;;
  }

  dimension: opened_date_key {
    hidden: yes
    type: number
    sql: ${TABLE}.opened_date_key ;;
  }

  dimension: opened_hour {
    hidden: yes
    type: yesno
    sql: ${TABLE}.opened_hour ;;
  }

  dimension: clicked_date_key {
    hidden: yes
    type: number
    sql: ${TABLE}.clicked_date_key ;;
  }

  dimension: clicked_hour {
    hidden: yes
    type: yesno
    sql: ${TABLE}.clicked_hour ;;
  }

  dimension: is_first_click {
    hidden: yes
    type: yesno
    sql: ${TABLE}.is_first_click ;;
  }

  dimension: unsubscribed_date_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unsubscribed_date_key ;;
  }

  dimension: unsubscribed_hour {
    hidden: yes
    type: yesno
    sql: ${TABLE}.unsubscribed_hour ;;
  }

  dimension: complaint_date_key {
    hidden: yes
    type: number
    sql: ${TABLE}.complaint_date_key ;;
  }

  dimension: complaint_hour {
    hidden: yes
    type: yesno
    sql: ${TABLE}.complaint_hour ;;
  }

  dimension: sent_ali_id {
    hidden: yes
    type: number
    sql: ${TABLE}.sent_ali_id ;;
  }

  dimension: delivered_ali_id {
    hidden: yes
    type: number
    sql: ${TABLE}.delivered_ali_id ;;
  }

  dimension: hard_bounced_ali_id {
    hidden: yes
    type: number
    sql: ${TABLE}.hard_bounced_ali_id ;;
  }

  dimension: opened_ali_id {
    hidden: yes
    type: number
    sql: ${TABLE}.opened_ali_id ;;
  }

  dimension: clicked_ali_id {
    hidden: yes
    type: number
    sql: ${TABLE}.clicked_ali_id ;;
  }

  dimension: unsubscribed_ali_id {
    hidden: yes
    type: number
    sql: ${TABLE}.unsubscribed_ali_id ;;
  }

  dimension: complaint_ali_id {
    hidden: yes
    type: number
    sql: ${TABLE}.complaint_ali_id ;;
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

  dimension: lead_owner_key {
    type: number
    hidden: yes
    sql: ${TABLE}.lead_owner_key ;;
  }

  dimension: acquisition_program_key {
    type: number
    hidden: yes
    sql: ${TABLE}.acquisition_program_key ;;
  }

  dimension: abm_account_key {
    type: number
    hidden: yes
    sql: ${TABLE}.abm_account_key ;;
  }

  dimension: program_key {
    type: number
    hidden: yes
    sql: ${TABLE}.program_key ;;
  }

  ##### Measures #####

  measure: hard_bounced_count {
    type: count_distinct
    label: "Hard Bounced"
    sql: ${TABLE}.hard_bounced_ali_id ;;
    value_format: "0"
    drill_fields: []
  }

  measure: opened_count {
    type: count_distinct
    label: "Opened"
    sql: ${TABLE}.opened_ali_id ;;
    value_format: "0"
    drill_fields: []
  }

  measure: delivered_count {
    type: count_distinct
    label: "Delivered"
    sql: ${TABLE}.delivered_ali_id ;;
    value_format: "0"
    drill_fields: []
  }

  measure: sent_count {
    type: count_distinct
    label: "Sent"
    sql: ${TABLE}.sent_ali_id ;;
    value_format: "0"
    drill_fields: []
  }

  measure: unsubscribed_count {
    type: count_distinct
    label: "Unsubscribed"
    sql: ${TABLE}.unsubscribed_ali_id ;;
    #sql_distinct_key:  ;;
    value_format: "0"
    drill_fields: []
  }

  measure: clicked_count {
    type: count_distinct
    label: "Clicked"
    sql: ${TABLE}.clicked_ali_id ;;
    value_format: "0"
    drill_fields: []
  }

  measure: complaints_count {
    type: count_distinct
    label: "Complaints"
    sql: ${TABLE}.complaint_ali_id ;;
    value_format: "0"
    drill_fields: []
  }

  measure: unique_clicks_count {
    type: count_distinct
    label: "Unique Clicks"
    sql: case when ${TABLE}.clicked_ali_id is not null THEN ${TABLE}.lead_key else null end ;;
    value_format: "0"
    drill_fields: []
  }

  measure: delivered_percentage {
    type: number
    label: "% Delivered"
    value_format: "0.00%"
    sql: coalesce(${mpa_v_email_activity.delivered_count},0) / ${mpa_v_email_activity.sent_count};;
  }

  measure: clicked_to_opened_percentage {
    type: number
    label: "% Clicked to Opened"
    value_format: "0.00%"
    sql: coalesce(${mpa_v_email_activity.unique_clicks_count},0) / ${mpa_v_email_activity.opened_count};;
  }

  measure: opened_percentage {
    type: number
    label: "% Opened"
    value_format: "0.00%"
    sql: coalesce(${mpa_v_email_activity.opened_count},0) / ${mpa_v_email_activity.delivered_count};;
  }

  measure: complaints_percentage {
    type: number
    label: "% Complaints"
    value_format: "0.00%"
    sql: coalesce(${mpa_v_email_activity.complaints_count},0) / ${mpa_v_email_activity.delivered_count};;
  }

  measure: unsubscribed_percentage {
    type: number
    label: "% Unsubscribed"
    value_format: "0.00%"
    sql: coalesce(${mpa_v_email_activity.unsubscribed_count},0) / ${mpa_v_email_activity.delivered_count};;
  }

  measure: clicked_percentage {
    type: number
    label: "% Clicked"
    value_format: "0.00%"
    sql: coalesce(${mpa_v_email_activity.unique_clicks_count},0) / ${mpa_v_email_activity.delivered_count};;
  }

}
