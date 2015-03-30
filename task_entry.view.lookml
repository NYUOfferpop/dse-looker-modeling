- view: task_entry
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: job_id
    type: int
    sql: ${TABLE}.job_id

  - dimension: name
    sql: ${TABLE}.name

  - dimension: path
    sql: ${TABLE}.path

  - dimension: status
    type: yesno
    sql: ${TABLE}.status = '1'

  - dimension: type
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id,job_id, name,status,type,]
