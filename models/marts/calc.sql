select * 
from {{ metrics.calculate(
    metric('total_profit'),
    grain='month',
    dimensions=['product_category']
) }}