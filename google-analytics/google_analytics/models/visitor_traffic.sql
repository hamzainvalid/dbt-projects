with source(
    SELECT * FROM {{ref('stg_visitor')}}
)

with traffic(
    SELECT visitor_id FROM source,

)