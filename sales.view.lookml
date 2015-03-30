- view: sales
  fields:

  - dimension: chargify_amount
    type: number
    sql: ${TABLE}.chargify_amount

  - dimension: goal
    type: number
    sql: ${TABLE}.goal

  - dimension: invoiced_amount
    type: number
    sql: ${TABLE}.invoiced_amount

  - dimension: managed_services_amount
    type: number
    sql: ${TABLE}.managed_services_amount

  - dimension: manager
    sql: ${TABLE}.manager

  - dimension: month
    type: int
    sql: ${TABLE}.month

  - dimension: num_orders
    type: number
    sql: ${TABLE}.num_orders

  - dimension: ppc_amount
    type: number
    sql: ${TABLE}.PPC_amount

  - dimension: quarter
    type: int
    sql: ${TABLE}.quarter

  - dimension: sales_rep_name
    sql: ${TABLE}.sales_rep_name

  - dimension: subscription_amount
    type: number
    sql: ${TABLE}.subscription_amount

  - dimension: team
    sql: ${TABLE}.team

  - dimension: total_amount
    type: number
    sql: ${TABLE}.total_amount

  - dimension: year
    type: int
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [sales_rep_name]
    
  - measure: count_distinct_rep
    type: count_distinct
    sql: ${TABLE}.sales_rep_name
    drill_fields: [sales_rep_name]
    

  - measure: sum_total_amount
    type: sum
    sql: ${total_amount}
    drill_fields: [sales_rep_name, manager, team, total_amount, year, month]

  - measure: sum_total_ppc_amount
    type: sum
    sql: ${ppc_amount}
    drill_fields: [sales_rep_name, manager, team, ppc_amount, year, month]

  - measure: sum_total_managed_services_amount
    type: sum
    sql: ${managed_services_amount}
    drill_fields: [sales_rep_name, manager, team, managed_services_amount, year, month]
    
  - measure: sum_total_subscription_amount
    type: sum
    sql: ${subscription_amount}
    drill_fields: [sales_rep_name, manager, team, subscription_amount, year, month]
    
  - measure: total_goal
    type: sum
    sql: ${goal}
    drill_fields: [sales_rep_name, manager, team, total_amount, year, month]    

  - measure: percent_of_goal_reached
    type: number
    sql: 100*${sum_total_amount} / ${total_goal} 
    decimals: 2
    html: |
      {{ rendered_value }}%    
    drill_fields: [sales_rep_name, manager, team, total_amount, year, month] 

  - measure: average_goal
    type: average
    sql: ${goal}
    drill_fields: [sales_rep_name, manager, team, total_amount, year, month] 

  - measure: avg_total_amount
    type: average
    sql: ${total_amount}
    drill_fields: [sales_rep_name, manager, team, total_amount, year, month]

