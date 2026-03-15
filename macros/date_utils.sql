

{% macro function1(x) %}

CASE WHEN TO_TIMESTAMP({{x}}) < CURRENT_DATE THEN 'PAST'
ELSE 'FUTURE' END

{% endmacro %}



{% macro function_station_of_year(x) %}

CASE 
    WHEN MONTH(TO_TIMESTAMP({{x}})) IN (12,1,2) THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP({{x}})) IN (3,4,5) THEN 'SPRING'
    WHEN MONTH(TO_TIMESTAMP({{x}})) IN (6,7,8) THEN 'SUMMER'
    ElSE 'AUTUMN' 
    END 

{% endmacro %}



{% macro get_day_name(x) %}

CASE 
    WHEN DAYNAME({{(x)}}) IN ('Sat', 'Sun') THEN 'WEEKEND'
    ELSE 'BUSINESSDAY'
    END
    
{% endmacro %}