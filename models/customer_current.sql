SELECT *

FROM {{ ref('custom_snapshot') }}

WHERE DBT_VALID_TO IS NULL
