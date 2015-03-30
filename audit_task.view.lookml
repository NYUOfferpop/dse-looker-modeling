- view: audit_task
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: end
    type: time
    timeframes: [time, date,time_of_day]
    sql: ${TABLE}.end_time

  - dimension: job_id
    type: int
    sql: ${TABLE}.job_id

  - dimension: message
    sql: ${TABLE}.message

  - dimension_group: start
    type: time
    timeframes: [time, date,time_of_day]
    sql: ${TABLE}.start_time

  - dimension: status
    type: int
    sql: ${TABLE}.status

  - dimension: worked
    type: yesno
    sql: ${TABLE}.status = '1'
    
  - dimension: task_id
    type: int
    sql: ${TABLE}.task_id

  - measure: count
    type: count
    drill_fields: [id]
    
  - measure: duration_in_minutes
    type: number
    decimals: 2
    sql: ${TABLE}.duration/1000/60
    
  - measure: duration_in_seconds
    type: number
    decimals: 2
    sql: ${TABLE}.duration/1000

  - measure: last_updated_start_time
    sql: MAX(${TABLE}.start_time)

  - measure: last_updated_end_time
    sql: MAX(${TABLE}.end_time)
