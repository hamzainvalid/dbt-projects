with source_data as (
    select *
    from {{ ref('totals_transformed') }}
),

extracted_totals as (
    select
        visitor_id,
        visit_number,
        visit_id,
        visit_start_time,
        visit_date,
        total_visits,
        total_hits,
        total_pageviews,
        total_time_on_site,
        total_bounces,
        total_transactions,
        total_transaction_revenue,
        total_new_visits,
        total_screenviews,
        total_unique_screenviews,
        total_time_on_screen,
        total_total_transaction_revenue,
        total_session_quality_dim,
        trafficSource.referralPath as traffic_source_referral_path,
        trafficSource.campaign as traffic_source_campaign,
        trafficSource.medium as traffic_source_medium,
        trafficSource.keyword as traffic_source_keyword,
        trafficSource.adContent as traffic_source_ad_content,
        trafficSource.adwordsClickInfo.campaignId as adwords_click_info_campaign_id,
        trafficSource.adwordsClickInfo.adGroupId as adwords_click_info_ad_group_id,
        trafficSource.adwordsClickInfo.creativeId as adwords_click_info_creative_id,
        trafficSource.adwordsClickInfo.criteriaId as adwords_click_info_criteria_id,
        trafficSource.adwordsClickInfo.page as adwords_click_info_page,
        trafficSource.adwordsClickInfo.slot as adwords_click_info_slot,
        trafficSource.adwordsClickInfo.criteriaParameters as adwords_click_info_criteria_parameters,
        trafficSource.adwordsClickInfo.gclId as adwords_click_info_gcl_id,
        trafficSource.adwordsClickInfo.customerId as adwords_click_info_customer_id,
        trafficSource.adwordsClickInfo.adNetworkType as adwords_click_info_ad_network_type,
        trafficSource.adwordsClickInfo.targetingCriteria.boomUserlistId as targeting_criteria_boom_userlist_id,
        trafficSource.adwordsClickInfo.isVideoAd as adwords_click_info_is_video_ad,
        trafficSource.isTrueDirect as traffic_source_is_true_direct,
        trafficSource.campaignCode as traffic_source_campaign_code,
        device,
        geoNetwork,
        customDimensions,
        hits,
        full_visitor_id,
        user_id,
        client_id,
        channel_grouping,
        social_engagement_type
    from source_data
)

select * from extracted_totals