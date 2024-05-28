with source_data as (
    select
        cast(visitorId as string) as visitor_id,
        cast(visitNumber as int) as visit_number,
        cast(visitId as int) as visit_id,
        cast(extract(time from timestamp_seconds(visitStartTime)) as time) as visit_start_time,
        PARSE_DATE('%Y%m%d', date) as visit_date,
        totals,
        trafficSource,
        device,
        geoNetwork,
        customDimensions,
        hits,
        cast(fullVisitorId as string) as full_visitor_id,
        cast(userId as string) as user_id,
        cast(clientId as string) as client_id,
        channelGrouping as channel_grouping,
        socialEngagementType as social_engagement_type
    from `analytics-423118.google_analytics_data.August 2016-August 2017`
)

select * from source_data
