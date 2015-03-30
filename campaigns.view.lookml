- view: campaigns
  fields:

  - dimension: app_type
    sql: ${TABLE}.AppType


  - dimension: company_type
    sql: ${TABLE}.CompanyType

  - dimension: coupon_id
    type: int
    sql: ${TABLE}.CouponId

  - dimension: email
    sql: ${TABLE}.Email

  - dimension: platform
    sql: ${TABLE}.Platform
    
  - dimension_group: end
    type: time
    timeframes: [date]
    convert_tz: false
    sql: ${TABLE}.EndDate

 
  - dimension: finished_flag
    type: int
    sql: ${TABLE}.finished_flag

  - dimension: finished_flag_promo_adj
    type: int
    sql: ${TABLE}.finished_flag_promo_adj

  - dimension_group: from
    type: time
    timeframes: [date,month]
    convert_tz: false
    sql: ${TABLE}.FromDate

  - dimension: headline
    sql: ${TABLE}.Headline

  - dimension: iframe
    type: int
    sql: ${TABLE}.IFrame

  - dimension: limit_access
    sql: ${TABLE}.LimitAccess

  - dimension: platform_page_id
    type: int
    sql: ${TABLE}.PlatformPageId

  - dimension: platform_page_name
    sql: ${TABLE}.PlatformPageName

  - dimension: platform_page_url
    sql: ${TABLE}.PlatformPageUrl

  - dimension: user_id
    type: int
    sql: ${TABLE}.UserId
    
  - dimension: short_url
    sql: ${TABLE}.ShortUrl

  - dimension: subscribed_pages_id
    type: int
    sql: ${TABLE}.SubscribedPagesId
    
  - dimension: vertical
    sql: ${TABLE}.Vertical  
    
    
    
    
    
    
    
    
    


  - measure: last_likes
    type: sum
    sql: ${TABLE}.lastLikes


  - measure: mobile_view
    type: sum
    sql: ${TABLE}.MobileView

  - measure: fan_count
    type: sum
    sql: ${TABLE}.FanCount
    
  - measure: nonvalid_sign_ups
    type: sum
    sql: ${TABLE}.nonvalidSignUps

  - measure: photo_count
    type: sum
    sql: ${TABLE}.photoCount

 

    
  - measure: first_likes
    type: sum
    sql: ${TABLE}.firstLikes
    
  - measure: caption_count
    type: sum
    sql: ${TABLE}.captionCount

  - measure: clicked_like_comment_share_post
    type: sum
    sql: ${TABLE}.ClickedLikeCommentSharePost

  - measure: clicked_shared_link
    type: sum
    sql: ${TABLE}.ClickedSharedLink

  - measure: codes_count
    type: sum
    sql: ${TABLE}.codesCount

  - measure: codes_delivered
    type: sum
    sql: ${TABLE}.CodesDelivered

  - measure: direct_fan_conversions
    type: sum
    sql: ${TABLE}.DirectFanConversions
    
  - measure: codes_delivered_coalesce
    type: sum
    sql: ${TABLE}.CodesDelivered_coalesce



  
  - measure: product_purchases
    type: sum
    sql: ${TABLE}.productPurchases

  - measure: product_views
    type: sum
    sql: ${TABLE}.productViews

  - measure: promotion_clicks
    type: sum
    sql: ${TABLE}.promotionClicks

  - measure: promotion_code_issues
    type: sum
    sql: ${TABLE}.promotionCodeIssues

  - measure: promotion_views
    type: sum
    sql: ${TABLE}.promotionViews

  - measure: referrals
    type: sum
    sql: ${TABLE}.Referrals

  - measure: secure_votes
    type: sum
    sql: ${TABLE}.secureVotes

  - measure: transaction_value
    type: sum
    sql: ${TABLE}.transactionValue

  - measure: unsecure_votes
    type: sum
    sql: ${TABLE}.unsecureVotes 
    
  - measure: valid_sign_ups
    type: sum
    sql: ${TABLE}.validSignUps
    
  - measure: video_count
    type: sum
    sql: ${TABLE}.videoCount

  - measure: fan_growth
    type: sum
    sql: ${TABLE}.fanGrowth

  - measure: viewed_fan_tab
    type: sum
    sql: ${TABLE}.ViewedFanTab

  - measure: viewed_tab
    type: sum
    sql: ${TABLE}.ViewedTab

  - measure: website_clicks
    type: sum
    sql: ${TABLE}.WebsiteClicks

  - measure: count
    type: count
    drill_fields: [platform_page_name]
    
    
    
  - measure: avg_last_likes
    type: average
    sql: ${TABLE}.lastLikes


  - measure: avg_mobile_view
    type: average
    sql: ${TABLE}.MobileView

  - measure: avg_fan_count
    type: average
    sql: ${TABLE}.FanCount
    
  - measure: avg_nonvalid_sign_ups
    type: average
    sql: ${TABLE}.nonvalidSignUps

  - measure: avg_photo_count
    type: average
    sql: ${TABLE}.photoCount

 

    
  - measure: avg_first_likes
    type: average
    sql: ${TABLE}.firstLikes
    
  - measure: avg_caption_count
    type: average
    sql: ${TABLE}.captionCount

  - measure: avg_clicked_like_comment_share_post
    type: average
    sql: ${TABLE}.ClickedLikeCommentSharePost

  - measure: avg_clicked_shared_link
    type: average
    sql: ${TABLE}.ClickedSharedLink

  - measure: avg_codes_count
    type: average
    sql: ${TABLE}.codesCount

  - measure: avg_codes_delivered
    type: average
    sql: ${TABLE}.CodesDelivered

  - measure: avg_direct_fan_conversions
    type: average
    sql: ${TABLE}.DirectFanConversions
    
  - measure: avg_codes_delivered_coalesce
    type: average
    sql: ${TABLE}.CodesDelivered_coalesce



  
  - measure: avg_product_purchases
    type: average
    sql: ${TABLE}.productPurchases

  - measure: avg_product_views
    type: average
    sql: ${TABLE}.productViews

  - measure: avg_promotion_clicks
    type: average
    sql: ${TABLE}.promotionClicks

  - measure: avg_promotion_code_issues
    type: average
    sql: ${TABLE}.promotionCodeIssues

  - measure: avg_promotion_views
    type: average
    sql: ${TABLE}.promotionViews

  - measure: avg_referrals
    type: average
    sql: ${TABLE}.Referrals

  - measure: avg_secure_votes
    type: average
    sql: ${TABLE}.secureVotes

  - measure: avg_transaction_value
    type: average
    sql: ${TABLE}.transactionValue

  - measure: avg_unsecure_votes
    type: average
    sql: ${TABLE}.unsecureVotes 
    
  - measure: avg_valid_sign_ups
    type: average
    sql: ${TABLE}.validSignUps
    
  - measure: avg_video_count
    type: average
    sql: ${TABLE}.videoCount

  - measure: avg_fan_growth
    type: average
    sql: ${TABLE}.fanGrowth

  - measure: avg_viewed_fan_tab
    type: average
    sql: ${TABLE}.ViewedFanTab

  - measure: avg_viewed_tab
    type: average
    sql: ${TABLE}.ViewedTab

  - measure: avg_website_clicks
    type: average
    sql: ${TABLE}.WebsiteClicks
