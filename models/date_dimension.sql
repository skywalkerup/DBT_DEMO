with CTE as (

    select TO_TIMESTAMP(STARTED_AT)  AS STARTED_AT,
    DATE(TO_TIMESTAMP(STARTED_AT)) AS DATE_STARTED_AT,
    HOUR(TO_TIMESTAMP(STARTED_AT)) AS HOUR_STARTED_AT,
     AS DAY_TYPE,

    {{function_station_of_year('STARTED_AT')}} AS STATION_OF_YEAR,

    {{function1('STARTED_AT') }} AS masterpice




    from {{ source('demo', 'bike') }}
)

select * from CTE