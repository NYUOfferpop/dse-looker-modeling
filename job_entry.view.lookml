- view: job_entry
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: daily
    type: yesno
    sql: ${TABLE}.daily = '1'

  - dimension: description
    sql: ${TABLE}.description

  - dimension: email
    sql: ${TABLE}.email

  - dimension: monthly
    type: yesno
    sql: ${TABLE}.monthly = '1'

  - dimension: name
    sql: ${TABLE}.name

  - dimension: notes
    sql: ${TABLE}.notes

  - dimension: status
    type: yesno
    sql: ${TABLE}.status = '1'

  - dimension_group: time
    type: time
    timeframes: [time_of_day,time, date]
    sql: ${TABLE}.time

  - dimension: type
    sql: ${TABLE}.type

  - dimension: weekly
    type: yesno
    sql: ${TABLE}.weekly = '1'

  - measure: count
    type: count
    drill_fields: [id, name]

  - measure: last_updated_date
    type: date
    sql: MAX(${time_date})
    convert_tz: false
    

  - measure: last_updated_datetime
    sql: MAX(${TABLE}.time)
