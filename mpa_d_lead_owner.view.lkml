view: mpa_d_lead_owner {
  sql_table_name: mpa_d_lead_owner ;;

  dimension: lead_owner_key {
    type: number
    hidden: yes
    sql: ${TABLE}.lead_owner_key ;;
  }

  dimension: source_id {
    type: string
    hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension: email {
    type: string
    label: "Lead Owner Email Address"
    sql: ${TABLE}.email ;;
  }

  dimension: job_title {
    type: string
    label: "Lead Owner Job Title"
    sql: ${TABLE}.job_title ;;
  }

  dimension: name {
    type: string
    label: "Lead Owner Name"
    sql: ${TABLE}.name ;;
  }

}
