- connection: reporting

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- scoping: true

- explore: accounting_coupon_entry

- explore: accounting_invoiced_order

- explore: accounting_invoiced_order_page

- explore: accounting_invoiced_refund

- explore: accounting_non_standard_payment_date

- explore: accounting_organization

- explore: accounting_sales_goals

- explore: accounting_sales_rep

- explore: accounting_subscription_cancellation

- explore: accounting_tier_two_code

- explore: audit_job
  joins:
   - join: job_entry
     from: job_entry
     sql_on: ${audit_job.job_id} = ${job_entry.id} 
      
- explore: audit_task
  joins:
    - join: task_entry
      from: task_entry
      sql_on: ${audit_task.task_id} = ${task_entry.id}
    - join: job_entry
      from: job_entry
      sql_on: ${audit_task.job_id} = ${job_entry.id}

- explore: benchmarks

- explore: benchmarks_dash

- explore: benchmarks_intermediate_step4

- explore: campaigns



- explore: caption_agg

- explore: chargify_subscriptions_api2_qa

- explore: chargify_transactions_api_dedup

- explore: chargify_transactions_api_qa

- explore: codes_agg

- explore: event_agg

- explore: event_agg_metadata

- explore: job_entry
  joins:
    - join: task_entry
      relationship: one_to_many 
      from: task_entry
      sql_on: ${job_entry.id} = ${task_entry.job_id}
- explore: likes_agg

- explore: likes_agg_qa

- explore: photo_agg

- explore: campaign

- explore: product_mapping

- explore: promotion_agg

- explore: refer_agg

- explore: sales

- explore: secure_votes_agg

- explore: sfdc_contact_role
  joins: 
    - join: sfdc_opportunity
      relationship: many_to_one
      foreign_key: opportunity_id
    
    - join: sfdc_contact
      relationship: many_to_one
      foreign_key: contact_id
      
    - join: sfdc_account
      foreign_key: sfdc_opportunity.account_id
      relationship: many_to_one

- explore: sfdc_opportunity

- explore: sfdc_lead
  joins:
    - join: sfdc_contact
      sql_on: ${sfdc_lead.converted_contact_id} = ${sfdc_contact.id}
      relationship: many_to_one
      
    - join: sfdc_contact_role
      sql_on: ${sfdc_contact_role.contact_id} = ${sfdc_contact.id}
      relationship: one_to_many
      
    - join: sfdc_opportunity
      sql_on: ${sfdc_contact_role.opportunity_id} = ${sfdc_opportunity.id}
      relationship: one_to_many
      
    - join: sfdc_account
      foreign_key: sfdc_contact.account_id
      relationship: many_to_one
      

- explore: sfdc_campaign

- explore: sfdc_record_type

- explore: sfdc_account

- explore: sfdc_contact

- explore: sfdc_user

- explore: task_entry
  joins:
    - join: job_entry
      relationship: many_to_one 
      from: job_entry
      foreign_key: job_id

- explore: submission_agg


- explore: video_agg

- explore: votes_agg

- explore: accounts

- explore: campaign_permission

- explore: manual_op_v2

- explore: manual_op_v2_p

- explore: chargify_op_v2

- explore: active_campaigns
