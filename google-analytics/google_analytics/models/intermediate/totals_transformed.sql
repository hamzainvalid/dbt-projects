with source_data as (
    select *
    from {{ ref('stg_source_table') }}
),

extracted_totals as (
    select
        visitor_id,
        visit_number,
        visit_id,
        visit_start_time,
        visit_date,
        totals.visits as total_visits,
        totals.hits as total_hits,
        totals.pageviews as total_pageviews,
        totals.timeOnSite as total_time_on_site,
        totals.bounces as total_bounces,
        totals.transactions as total_transactions,
        totals.transactionRevenue as total_transaction_revenue,
        totals.newVisits as total_new_visits,
        totals.screenviews as total_screenviews,
        totals.uniqueScreenviews as total_unique_screenviews,
        totals.timeOnScreen as total_time_on_screen,
        totals.totalTransactionRevenue as total_total_transaction_revenue,
        totals.sessionQualityDim as total_session_quality_dim,
        trafficSource,
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
