select * 
from {{ metrics.calculate(
    metric('total_revenue'),
    grain='month',
    dimensions=['product_category']
) }}