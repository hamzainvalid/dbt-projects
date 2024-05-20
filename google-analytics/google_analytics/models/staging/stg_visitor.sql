with source as (
    SELECT
        visitNumber as visit_number,
        visitId as visit_id,
        cast(extract(time from timestamp_seconds(visitStartTime)) as time) as visit_start_time,
        PARSE_DATE('%Y%m%d', date) as visit_date,
        fullVisitorId as visitor_id
    FROM
        `analytics-423118.google_analytics_data.August 2016-August 2017`
)

SELECT
    visitor_id,
    visit_number,
    visit_date,
    visit_start_time,
    visit_id
FROM
    source