%dw 2.0
output json
---
payload
    groupBy ((order, index) -> order.orderId)
    pluck ((value, key, index) -> value)